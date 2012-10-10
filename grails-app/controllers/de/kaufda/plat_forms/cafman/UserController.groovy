package de.kaufda.plat_forms.cafman

import de.kaufda.plat_forms.cafman.security.Authority
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

/**
 * @author Patrick Jungermann
 * @Plat_Forms M
 */
class UserController {

    def springSecurityService

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
                user: springSecurityService.currentUser
        ]
    }

}
