package de.kaufda.plat_forms.cafman

import groovy.time.*

class CaffeineLevelService {

    static double oneHour = 60*60*1000

    def CaffeineLevelAlert updateAlertForIntake(CaffeineIntake intake) {
        // if current level is below TH, send mail immediately
        //  if also level will shoot over level later, then send special mail "but you'll be save soon"
        //  else just send one "insufficient caffeine"
        // else
        // recalculate the new threshold intersection for the updated levels in the future
    }

    def CaffeineLevelAlert updateAlertForNewThreshold(CaffeineIntake intake) {
        // recalculate the intersection of current levels with new threshold
    }

    /**
     * Calculates the Caffeine Uptake for t in [0,24h]
     * @param t milliseconds from uptake moment
     * @return amount of uptake if within interval, 0 otherwise
     */
    static def Double calculateCaffeineUptake(Long t) {
        Double unitDose = 150 // [mg]
        Double h = t / oneHour
        // return zero if outside of bounds
        if (h < 0.0 || h > 24.0) return 0L
        // return value from linear function <1h
        else if (h < 1.0) return unitDose*h*((0.5)**(h/5))
        // return value from exponentially decaying function <24h
        else return unitDose*(0.5)**(h/5)
    }

    def Double calculateCaffeineLevel(User user, Date at) {
        // get all Intakes within -24h before at
        def relevantIntakes = CaffeineIntake.findAllByConsumerAndTakenGreaterThanEquals(user, at-1)
        // sum over influence of these intakes
        Double level = 0.0d
        relevantIntakes.each {
            level += calculateCaffeineUptake(at.time - it.taken.time)
        }
        return level
    }

    def getStatisticsForInterval (User user, Date from, Date to, Integer stepSizeSeconds) {
        def results = [:]
        use(TimeCategory) {
            Date lastRelevantFrom = from - 1.day
            // get all intakes from beginning of statistics
            def statisticallyRelevantIntakes = CaffeineIntake.findAllByConsumerAndTakenGreaterThan(user, lastRelevantFrom)
            for (def t = from; t <= to; t += stepSizeSeconds.seconds) {
                // calc sum over relevant intakes for that time interval
                Double value = 0
                def relevantIntakes = statisticallyRelevantIntakes.findAll {
                    // all within the last day
                    it.taken > t - 1.day
                }
                def uptakes = relevantIntakes.collect {
                    // emit current value
                    calculateCaffeineUptake t.time - it.taken.time
                }
                value = uptakes.sum(0) as Double //sum from 0
                // save value
                results.putAt(t,value)
            }
        }
        return results
    }

    def Map getHighscoresForInterval(Date since, Integer max = 10) {

    }
}
