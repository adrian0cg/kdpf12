package de.kaufda.plat_forms.cafman

/**
 * Represents a dose of caffeine that a user takes (i.e. cup of coffee)
 * @Plat_Forms M
 * @author Adrian Hass
 */
class CaffeineIntake {

    /**
     * Timestamp of consuption
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

    static constraints = {
        dose(min: 0)
    }
}
