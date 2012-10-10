package de.kaufda.plat_forms.cafman

import de.kaufda.plat_forms.cafman.security.Authority
import grails.plugins.springsecurity.Secured

import static de.kaufda.plat_forms.cafman.security.AuthenticationToken.ANONYMOUSLY

/**
 * Provides the functionality to sign-up for an account.
 *
 * @author Patrick Jungermann
 * @Plat_Forms M
 */
@Secured([ANONYMOUSLY])
class SignUpController {

    def springSecurityService

    def index(final SignUpCommand cmd) {
        cmd.validate()
        final boolean invalidPassword = cmd.errors.getFieldError('password').asBoolean()
        final User user = new User(
                username: cmd.username,
                email: cmd.email,
                password: invalidPassword ? null : cmd.password,
                showStats: cmd.showStats,
                fullName: cmd.fullName,
                authorities: [Role.findByAuthority(Authority.USER)]
        )

        if (user.save(flush: true)) {
            springSecurityService.reauthenticate(cmd.username, cmd.password)
            redirect controller: 'login', action: 'index'
            return
        }

        chain(controller: 'login', action: 'auth', model: [cmd: cmd, user: user])
    }

}
