package de.kaufda.plat_forms.cafman.security

import de.kaufda.plat_forms.cafman.User
import grails.plugins.springsecurity.SpringSecurityService
import grails.test.GrailsMock
import grails.test.mixin.TestFor
import org.junit.Test

/**
 * See the API for {@link grails.test.mixin.web.GroovyPageUnitTestMixin} for usage instructions
 *
 * @Plat_Forms GM
 */
@TestFor(SecurityTagLib)
class SecurityTagLibTests {

    @Test
    public void userFullName_notLoggedIn_renderNothing() {
        GrailsMock control = mockFor(SpringSecurityService)
        control.demand.isLoggedIn {-> return false}
        tagLib.springSecurityService = control.createMock()

        assert applyTemplate('<sec:userFullName/>') == ''
    }

    @Test
    public void userFullName_loggedIn_renderEncodedFullName() {
        String fullName = "full <> name"
        User user = new User(fullName: fullName)
        GrailsMock control = mockFor(SpringSecurityService)
        control.demand.isLoggedIn {-> return true}
        control.demand.getCurrentUser {-> return user }
        tagLib.springSecurityService = control.createMock()

        assert applyTemplate('<sec:userFullName/>') == 'full &lt;&gt; name'
    }

    @Test
    public void userEmail_notLoggedIn_renderNothing() {
        GrailsMock control = mockFor(SpringSecurityService)
        control.demand.isLoggedIn {-> return false}
        tagLib.springSecurityService = control.createMock()

        assert applyTemplate('<sec:userEmail/>') == ''
    }

    @Test
    public void userEmail_loggedIn_renderEncodedEmail() {
        String email = "email<at>example.com"
        User user = new User(email: email)
        GrailsMock control = mockFor(SpringSecurityService)
        control.demand.isLoggedIn {-> return true}
        control.demand.getCurrentUser {-> return user }
        tagLib.springSecurityService = control.createMock()

        assert applyTemplate('<sec:userEmail/>') == 'email&lt;at&gt;example.com'
    }

}
