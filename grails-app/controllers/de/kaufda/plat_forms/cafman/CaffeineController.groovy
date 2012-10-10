package de.kaufda.plat_forms.cafman

import grails.converters.JSON
import grails.plugins.springsecurity.Secured
import groovy.time.TimeCategory
import org.grails.plugins.csv.CSVWriter
import org.springframework.http.HttpStatus

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
       [timestamp: now.time, user: user, spectator: springSecurityService.currentUser]
    }

    def single() {
        Long forTs = Long.parseLong(params.timestamp)
        Date forDate = new Date(forTs)

        String interval = params.interval // guaranteed to be either 'daily' of 'weekly'
        def stats = [:]
        Integer stepSize
        Integer displayStepSize
        use (TimeCategory) {
            Long cachedTs = session.statistics?."$interval".ts
            // cache two seconds
            if (cachedTs && (cachedTs - forTs < 2000L)) {
                // cache hit
                stats = session.statistics."$interval".values
            } else {
                // cache miss
                stepSize = grailsApplication.config.cafman.statistics."$interval".stepSize
                displayStepSize = grailsApplication.config.cafman.statistics."$interval".displayStepSize
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
                render ([['timestamp','level']] + flatStats) as JSON
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

                    // extract export stats from display stats
                    /*if (interval == "daily"){
                        Integer skipSize = stepSize/displayStepSize
                        def sparseStats = []
                        Integer next = 0
                        flatStats.eachWithIndex { elem, i ->
                            if (i == next) {
                                sparseStats << elem
                                next += skipSize
                            }
                        }
                    } else*/
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

    def consume(final Long id) {
        final CoffeeKitty coffeeKitty = CoffeeKitty.get(id)
        final User user = (User) springSecurityService.currentUser
        final Member member = coffeeKitty?.findMemberByUser(user)
        if (!member) {
            redirect controller: 'user', action: 'home'
            return
        }

        member.balance -= coffeeKitty.price
        member.save()
        new CaffeineIntake(consumer: user).save()

        redirect controller: 'user', action: 'home', params: [success: true]
    }

}
