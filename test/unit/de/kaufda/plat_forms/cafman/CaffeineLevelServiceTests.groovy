package de.kaufda.plat_forms.cafman



import grails.test.mixin.*
import org.junit.*

import static de.kaufda.plat_forms.cafman.CaffeineLevelService.*

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(CaffeineLevelService)
class CaffeineLevelServiceTests {

    void testUptakeCalculation() {
        assertEquals 0, calculateCaffeineUptake(-60000L), 10e-6
        assertEquals 0, calculateCaffeineUptake(25L * 60L * 60L * 1000L), 10e-6
        Long afterStart = 2L*60L*1000L //2m
        Double forAfterStart = calculateCaffeineUptake afterStart
        Long withinFirstHour = 30L*60L*1000L //30m
        Double forWithinFirstHour = calculateCaffeineUptake withinFirstHour
        assertTrue "monotonically increasing before 1h", forAfterStart < withinFirstHour
        Long firstHour = 60L*60L*1000L //1h
        Double forFirstHour = calculateCaffeineUptake firstHour
        assertTrue "monotonically increasing before 1h II", forWithinFirstHour < forFirstHour
        Long afterFirstHour = 2L*60L*60L*1000L //2h
        Double forAfterFirstHour = calculateCaffeineUptake afterFirstHour
        assertTrue "monotonically decreasing after 1h", forFirstHour > forAfterFirstHour
        Long beforeFirstDay = 21L*60L*60L*1000L //21h
        Double forBeforeFirstDay = calculateCaffeineUptake beforeFirstDay
        assertTrue "monotonically decreasing after 1h II", forAfterFirstHour > forBeforeFirstDay
        assertTrue "monotonically max at 1h", [forWithinFirstHour, forFirstHour, forAfterFirstHour, forBeforeFirstDay].max()  == forFirstHour
    }
}
