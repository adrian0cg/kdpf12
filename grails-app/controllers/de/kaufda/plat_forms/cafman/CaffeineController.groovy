package de.kaufda.plat_forms.cafman

import grails.plugins.springsecurity.Secured

import static de.kaufda.plat_forms.cafman.security.AuthenticationToken.ANONYMOUSLY

/**
 * @Plat_Forms M
 */
class CaffeineController {

    static defaultAction = "statistics"

    def statistics() { }

    @Secured([ANONYMOUSLY])
    def publicStatistics() { }

    def highscore() { }

    @Secured([ANONYMOUSLY])
    def publicHighscore() { }

}
