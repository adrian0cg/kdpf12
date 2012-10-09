package de.kaufda.plat_forms.cafman

/**
 * Represents Alerts to send to Users, when his caffeine level drops below the current threshold
 */
class CaffeineLevelAlert {

    /**
     * the precomputed time then the caffeine level will drop below the threshold
     * always in the future
     */
    Date alertTime

    /**
     * User for which the Alert is intended
     */
    User receiver

    static constraints = {
        receiver(unique: true)
        alertTime(min:  new Date())
    }
}
