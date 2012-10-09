package de.kaufda.plat_forms.cafman

class CaffeineLevelService {

    def void updateUserCaffeineLevels(CaffeineIntake intake) {
        // forward calc levels until 24h
        updateAlertForIntake()
        // cleanup old values
    }

    def CaffeineLevelAlert updateAlertForIntake(CaffeineIntake intake) {
        // recalculate the new threshold intersection for the updated levels in the future
    }

    def CaffeineLevelAlert updateAlertForNewThreshold(CaffeineIntake intake) {
        // recalculate the intersection of current levels with new threshold
    }
}
