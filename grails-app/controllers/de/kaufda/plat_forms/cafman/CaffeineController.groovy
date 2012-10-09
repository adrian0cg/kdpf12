package de.kaufda.plat_forms.cafman

import de.kaufda.plat_forms.cafman.security.AuthenticationToken
import grails.plugins.springsecurity.Secured

/**
 * @Plat_Forms M
 */
class CaffeineController {

    static defaultAction = "statistics"

    def statistics() { }

    def highscore() { }

    @Secured([AuthenticationToken.ANONYMOUSLY])
    def publicHighscore() { }

}
