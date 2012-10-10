package de.kaufda.plat_forms.cafman

import de.kaufda.plat_forms.cafman.security.Authority
import grails.plugins.springsecurity.Secured
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

/**
 * Provides access to the user's data as well as the welcome page.
 *
 * @author Patrick Jungermann
 * @Plat_Forms M
 */
class UserController {

    def passwordEncoder
    def springSecurityService
    def coffeeKittyService
    def resetService

    def home() {
        if (SpringSecurityUtils.ifAllGranted(Authority.ADMIN)) {
            return render(view: 'home-admin')
        }

        final List<CoffeeKitty> coffeeKitties = coffeeKittyService.findAllWhereLoggedUserIsAMember()
        if (!coffeeKitties) {
            return render(view: 'home-no-kitty')
        }

        final User user = (User) springSecurityService.currentUser
        final CoffeeKitty coffeeKitty = session.coffeeKitty ?: user.defaultCoffeeKitty

        return render(view: 'home', model: [coffeeKitties: coffeeKitties, user: user, coffeeKitty: coffeeKitty])
    }

    def profile() {
        final User user = (User) springSecurityService.currentUser
        final List<CoffeeKitty> coffeeKitties = coffeeKittyService.findAllWhereLoggedUserIsAMember()
        return [
                user: user,
                bean: chainModel?.user ?: user,
                data: chainModel?.cmd ?: chainModel?.user ?: user,
                denied: chainModel?.denied,
                coffeeKitties: coffeeKitties
        ]
    }

    def update(final UserUpdateCommand cmd) {
        final User user = (User) springSecurityService.currentUser
        if (passwordEncoder.isPasswordValid(user.password, cmd.oldPassword, null)) {
            if (cmd.password || cmd.repeatPassword) {
                final boolean invalidPassword = cmd.errors.hasFieldErrors 'password'
                user.password = invalidPassword ? null : cmd.password
            }

            user.username = cmd.username
            user.email = cmd.email
            user.fullName = cmd.fullName
            user.showStats = cmd.showStats

            if (user.save(flush: true)) {
                springSecurityService.reauthenticate(cmd.username, cmd.password)
                redirect controller: 'user', action: 'profile'
                return
            }

            chain action: 'profile', model: [cmd: cmd, user: user]
            return
        }

        chain controller: 'user', action: 'profile', model: [cmd: cmd, denied: true]
    }

    def changeDefaultCoffeeKitty(final Long id) {
        final CoffeeKitty coffeeKitty = CoffeeKitty.get(id)
        if (coffeeKitty) {
            final User user = (User) springSecurityService.currentUser
            user.defaultCoffeeKitty = coffeeKitty
            user.save()
        }

        redirect action: 'profile'
    }

    def changeCoffeeKitty(final Long id) {
        final User user = (User) springSecurityService.currentUser
        final CoffeeKitty coffeeKitty = CoffeeKitty.get(id)
        if (coffeeKitty && coffeeKitty.findMemberByUser(user)) {
            session.coffeeKitty = coffeeKitty
        }

        redirect action: 'home'
    }

    @Secured(['ROLE_ADMIN'])
    def reset = {
        resetService.reset()

        redirect action: 'home'
    }

}
