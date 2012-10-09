package de.kaufda.plat_forms.cafman

import static de.kaufda.plat_forms.cafman.CaffeineLevel.*

class CaffeineLevelService {

    static double oneHour = 60*60*1000

    List<CaffeineLevel> findCaffeineLevelsForUser(User u) {
        return findAll(new CaffeineLevel( user: u))
    }

    def void updateUserCaffeineLevels(CaffeineIntake intake) {

        // find existing levels
        List<CaffeineLevel> oldLevels = findCaffeineLevelsForUser(intake.consumer)
        // drop old ones
        Date now = new Date()
        Long ts = now.time
        Date normalizedTs = CaffeineLevel.normalizeTime ts
        for (it in oldLevels) {
            if (it.time < normalizedTs) it.delete()
        }
        // forward calc levels until +24h
        def futureSteps = []

        updateAlertForIntake intake
        // cleanup old values
    }

    def CaffeineLevelAlert updateAlertForIntake(CaffeineIntake intake) {
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
}
