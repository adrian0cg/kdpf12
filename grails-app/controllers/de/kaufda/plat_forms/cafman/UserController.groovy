package de.kaufda.plat_forms.cafman

import de.kaufda.plat_forms.cafman.security.Authority
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

/**
 * Provides access to the user's data as well as the welcome page.
 *
 * @author Patrick Jungermann
 * @Plat_Forms M
 */
class UserController {

    def springSecurityService
    def passwordEncoder

    def home() {
        if (SpringSecurityUtils.ifAllGranted(Authority.ADMIN)) {
            render view: 'home-admin'

        } else if (CoffeeKitty.countByUser((User) springSecurityService.currentUser) == 0) {
            render view: 'home-no-kitty'
        }

        render view: 'home'
    }

    def profile() {
        return [
                user: chainModel?.user ?: springSecurityService.currentUser,
                cmd: chainModel?.cmd,
                denied: chainModel?.denied
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

            chain controller: 'user', action:  'profile', model: [cmd: cmd, user: user]
            return
        }

        chain controller: 'user', action:  'profile', model: [cmd: cmd, denied: true]
    }

}
