package de.kaufda.plat_forms.cafman

/**
 * Represents a time series of caffeine levels for a user
 * @Plat_Forms M
 * @author Adrian Hass
 */
class CaffeineLevel {

    def grailsApplication

    static mapWith = "mongo"

    /**
     * the user for which the levels are monitored
     */
    User user

    /**
     * the point in time as POSIX timestamp
     */
    Long time

    /**
     * the level
     */
    Double level

    /**
     * normalizes given time t to application wide configures timestep size
     * @param t
     * @return date normalized (round down) to the timeStep size
     */
    static Long normalizeTime(Long t) {
        Long timeStepMilis = 60L*1000L
        Long timeSteps = t/timeStepMilis
        timeSteps * timeStepMilis
    }

    @Override
    def setTime(Long t) {
        this.time = normalizeTime(t)
    }

    static constraints = {
        level(min:0)
        time(unique: 'user')
    }

    static transients = ['grailsApplication']
}
