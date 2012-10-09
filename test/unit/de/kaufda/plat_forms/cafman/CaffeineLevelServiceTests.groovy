package de.kaufda.plat_forms.cafman



import grails.test.mixin.*
import org.junit.*

import static de.kaufda.plat_forms.cafman.CaffeineLevelService.*
import grails.plugins.springsecurity.SpringSecurityService

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 * @Plat_Forms GM
 * @author Adrian Hass
 */
@TestFor(CaffeineLevelService)
@Mock([User, CaffeineIntake])
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

    void testLevelCalculation() {

        User.metaClass.encodePassword = { -> }

        // some mock data
        User  u = new User( username: "tester", password: "testing123", email: "test@plat-forms.org", fullName: "The Tester")
        u.save()
        Date now = new Date()
        CaffeineIntake ci1 = new CaffeineIntake(consumer: u, taken: now-1)
        ci1.save()
        CaffeineIntake ci2 = new CaffeineIntake(consumer: u, taken: now)
        ci2.save()

        // do calc
        Calendar cal = Calendar.instance
        cal.time = now
        // wind back 5h
        cal.add(Calendar.HOUR, -5)
        Double l1 = service.calculateCaffeineLevel (u, cal.time)
        Double ref1 = calculateCaffeineUptake(19L*60L*60L*1000L)
        assertEquals ref1, l1, 1e-6

        // go 4h to front
        cal.time = now
        cal.add(Calendar.HOUR, 1)
        CaffeineIntake ci3 = new CaffeineIntake(consumer: u, taken: cal.time)
        ci3.save()

        // two hours in advance
        cal.add(Calendar.HOUR, 1)
        Double l2 = service.calculateCaffeineLevel (u, cal.time)
        Double ref2 = calculateCaffeineUptake(2L*60L*60L*1000L)+ calculateCaffeineUptake(1L*60L*60L*1000L)
        assertEquals ref2, l2, 1e-6

        // cleanup
        cleanupModifiedMetaClasses()
    }

    void testStatistics() {

        User.metaClass.encodePassword = { -> }

        // some mock data
        User  u = new User( username: "tester", password: "testing123", email: "test@plat-forms.org", fullName: "The Tester")
        u.save()
        Date now = new Date()
        Calendar cal = Calendar.instance
        cal.time = now
        cal.add(Calendar.HOUR, -12)
        CaffeineIntake ci1 = new CaffeineIntake(consumer: u, taken: cal.time)
        ci1.save()
        cal.add(Calendar.HOUR, +6)
        CaffeineIntake ci2 = new CaffeineIntake(consumer: u, taken: cal.time)
        ci2.save()
        cal.add(Calendar.HOUR, +1)
        CaffeineIntake ci3 = new CaffeineIntake(consumer: u, taken: cal.time)
        ci3.save()

        Integer thirtyMinutes = 30*60
        def stats = service.getStatisticsForInterval( u, now-1, now, thirtyMinutes)
        stats.each { println "$it.key, $it.value" }
        assertTrue("contains stats for from", stats.containsKey(now-1))
        assertTrue("contains stats for to", stats.containsKey(now))

        // cleanup
        cleanupModifiedMetaClasses()
    }
}
