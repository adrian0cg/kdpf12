package de.kaufda.plat_forms.cafman

/**
 * Represents a dose of caffeine that a user takes (i.e. cup of coffee)
 * @Plat_Forms M
 */
class CaffeineIntake {

    static mapWith = "mongo"

    /**
     * Timestamp of consuption
     */
    Date taken = new Date()
    /**
     * The dose of this Caffeine Intake in [mg]
     */
    Integer dose = 150
    /**
     * The User that consumes the Caffeine
     */
    User consumer

    static constraints = {
        dose(min: 0)
    }
}
