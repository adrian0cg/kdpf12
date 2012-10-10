package de.kaufda.plat_forms.cafman

import grails.plugins.springsecurity.Secured

import static de.kaufda.plat_forms.cafman.security.AuthenticationToken.ANONYMOUSLY
import org.springframework.http.HttpStatus
import groovy.time.TimeCategory

/**
 * @Plat_Forms M
 */
class CaffeineController {

    def springSecurityService
    def grailsApplication
    def caffeineLevelService

    static defaultAction = "statistics"

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def statistics() {

        // select user
        User user
        if (params.id) user = User.get(params.id)
        else user = springSecurityService.currentUser

        // check validity
        if (!user) response.setStatus(HttpStatus.NOT_FOUND, g.message([message: "caffeine.stats.user.not-found", args: params.id]))
        if (!user.showStats && user != springSecurityService.currentUser) response.setStatus(HttpStatus.FORBIDDEN, g.message([message: "caffeine.stats.user.not-public", args: params.id]))

        // get data
        Integer weeklyStepSize = grailsApplication.config.cafman.statistics.weekly.stepSize
        Integer dailyStepSize = grailsApplication.config.cafman.statistics.daily.stepSize
        Integer dailyDisplayStepSize = grailsApplication.config.cafman.statistics.daily.displayStepSize
        Date now = new Date()
        def dailyStatistics = [:]
        def weeklyStatistics = [:]
        use (TimeCategory) {
            dailyStatistics = caffeineLevelService.getStatisticsForInterval(user, now - 1.day, now, dailyDisplayStepSize)
            weeklyStatistics = caffeineLevelService.getStatisticsForInterval(user, now - 7.days, now, weeklyStepSize)
        }

        // store in session for subsequent export
        session.statistics = [daily:dailyStatistics, weekly: weeklyStatistics]

        // render into model

        // output
        render "Stats $user"
    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def highscore(User user) {
        render "Highscore $user"
    }

}
