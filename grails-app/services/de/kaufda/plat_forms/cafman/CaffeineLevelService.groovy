package de.kaufda.plat_forms.cafman

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
        def relevantIntakes = CaffeineIntake.findAllByConsumerAndTakenGreaterThan(user:user, taken: at)
        // sum over influence of these intakes
        double level = 0.0d
        relevantIntakes.each {
            level += calculateCaffeineUptake(at.time - it.taken.time)
        }
        return level
    }

    def Map getHighscoresForInterval(Date since, Integer max = 10) {

    }
}
