package de.kaufda.plat_forms.cafman.security

/**
 * Extends {@link grails.plugins.springsecurity.SecurityTagLib Spring's SecurityTagLib} to
 * provide possibilities to access additional data from the user object.
 *
 * @see grails.plugins.springsecurity.SecurityTagLib
 * @author Patrick Jungermann
 * @Plat_Forms M
 */
class SecurityTagLib {
    static String namespace = "sec"

    def springSecurityService

    def userFullName = {
        if (springSecurityService.isLoggedIn()) {
            out << springSecurityService.getCurrentUser().fullName?.encodeAsHTML()
        }
    }

    def userEmail = {
        if (springSecurityService.isLoggedIn()) {
            out << springSecurityService.getCurrentUser().email?.encodeAsHTML()
        }
    }

}
