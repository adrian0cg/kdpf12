package de.kaufda.plat_forms.cafman

import grails.plugins.springsecurity.Secured

import static de.kaufda.plat_forms.cafman.security.AuthenticationToken.ANONYMOUSLY

/**
 * @Plat_Forms M
 */
class CaffeineController {

    static defaultAction = "statistics"

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def statistics(User user) {
        render "Stats $user"
    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def highscore(User user) {
        render "Highscore $user"
    }

}
