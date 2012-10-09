package de.kaufda.plat_forms.cafman

import de.kaufda.plat_forms.cafman.security.AuthenticationToken
import grails.plugins.springsecurity.Secured
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

/**
 * @author Patrick Jungermann
 * @Plat_Forms GM
 */
@Secured([AuthenticationToken.ANONYMOUSLY])
class LogoutController {

    /**
     * Index action. Redirects to the Spring security logout uri.
     */
    def index = {
        // TODO put any pre-logout code here
        redirect uri: SpringSecurityUtils.securityConfig.logout.filterProcessesUrl // '/j_spring_security_logout'
    }
}
