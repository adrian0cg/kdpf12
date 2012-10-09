package de.kaufda.plat_forms.cafman

/**
 * Represents a dose of caffeine that a user takes (i.e. cup of coffee)
 * @Plat_Forms M
 * @author Adrian Hass
 */
class CaffeineIntake {

    static mapWith = "mongo"

    /**
     * Timestamp of consumption
     */
    Date taken = new Date()
    /**
     * The dose of this Caffeine Intake in [mg]
     */
    Double dose = 150
    /**
     * The User that consumes the Caffeine
     */
    User consumer

    /**
     * The corresponding peak height
     */
    Double peakLevel

    static constraints = {
        dose min: 0.0D
    }
}
