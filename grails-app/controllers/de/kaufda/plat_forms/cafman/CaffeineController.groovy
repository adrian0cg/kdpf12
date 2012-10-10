package de.kaufda.plat_forms.cafman

import grails.plugins.springsecurity.Secured

import static de.kaufda.plat_forms.cafman.security.AuthenticationToken.ANONYMOUSLY
import org.springframework.http.HttpStatus
import groovy.time.TimeCategory
import grails.converters.deep.JSON
import org.grails.plugins.csv.CSVWriter

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
        if (!user) {
            response.sendError(HttpStatus.NOT_FOUND.value, g.message([code: "caffeine.stats.user.not-found", args: [params.id]]) )
            return
        }
        if (!user.showStats && user != springSecurityService.currentUser) {
            response.sendError(HttpStatus.FORBIDDEN.value, g.message([code: "caffeine.stats.user.not-public", args: [params.id]]))
            return
        }

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
        session.statistics = [ daily: [ts:now.time, values:dailyStatistics], weekly: [ ts:now.time, values: weeklyStatistics]]

        // render into model

        // output
        render "Stats for ${user.username} (${user.id}):<br/>$now.time<p>$dailyStatistics </p><p> $weeklyStatistics</p"
    }

    def single() {
        Long forTs = Long.parseLong(params.timestamp)
        Date forDate = new Date(forTs)

        String interval = params.interval // guaranteed to be either 'daily' of 'weekly'
        def stats = [:]
        use (TimeCategory) {
            Long cachedTs = session.statistics?."$interval".ts
            if (cachedTs && (cachedTs - forTs < 1000L)) {
                // cache hit
                stats = session.statistics."$interval".values
            } else {
                // cache miss
                Integer stepSize = grailsApplication.config.cafman.statistics."$interval".stepSize
                Integer displayStepSize = grailsApplication.config.cafman.statistics."$interval".displayStepSize
                // calc
                stats = caffeineLevelService.getStatisticsForInterval(user, forDate - 1.day, forDate, displayStepSize)

                // store in session
                if (!session.statistics) session.statistics = [:]
                session.statistics."$interval" = [ts : forTs, values:  stats]

            }
        }

        def flatStats = stats.collect{timestamp, value -> [timestamp, value]}
        withFormat {
            json {
                render ([['timestamp','level']]+ flatStats) as JSON
            }
            csv {
                //stats.put("timestamp", "level")) as JSON
                response.setHeader("Content-disposition",
                        "attachment; filename=${interval}.csv")
                response.contentType = "text/csv"
                def out = response.outputStream
                out.withWriter { writer ->
                    def csvWriter = new CSVWriter(writer, {
                        timestamp {it[0]}
                        level {it[1]}
                    })
                    csvWriter.writeAll(flatStats)
                }
            }
        }
    }

    def weekly() {

    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def highscore(User user) {
        render "Highscore $user"
    }

}
