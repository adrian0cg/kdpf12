package de.kaufda.plat_forms.cafman



import grails.test.mixin.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(CaffeineLevel)
class CaffeineLevelTests {

    void testNormalizeTime() {
        Date now = new Date()
        CaffeineLevel cl = new CaffeineLevel()
        cl.time = now.time
        // there should be some difference
        assertTrue cl.time <= now.time
        // should normalize to 60s
        assertEquals 0, new Date(cl.time).seconds
    }
}
