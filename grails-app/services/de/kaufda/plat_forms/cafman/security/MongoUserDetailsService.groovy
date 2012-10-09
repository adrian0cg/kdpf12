package de.kaufda.plat_forms.cafman.security

import de.kaufda.plat_forms.cafman.User
import org.codehaus.groovy.grails.plugins.springsecurity.GrailsUser
import org.codehaus.groovy.grails.plugins.springsecurity.GrailsUserDetailsService
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.security.core.authority.GrantedAuthorityImpl
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UsernameNotFoundException

/**
 * Reused and slightly modified implementation as described at
 * http://etcpe9.wordpress.com/2012/06/22/grails-application-with-spring-security-and-mongodb/
 *
 * @author Patrick Jungermann
 * @Plat_Forms RM
 */
class MongoUserDetailsService implements GrailsUserDetailsService {

    private Logger log = LoggerFactory.getLogger(getClass())

    /**
     * Some Spring Security classes (e.g. RoleHierarchyVoter) expect at least one role, so
     * we give a user with no granted roles this one which gets past that restriction but
     * doesn't grant anything.
     */
    static final List<GrantedAuthorityImpl> NO_ROLES = [new GrantedAuthorityImpl(SpringSecurityUtils.NO_ROLE)].asImmutable()

    @Override
    UserDetails loadUserByUsername(final String username) {
        return loadUserByUsername(username, true)
    }

    @Override
    UserDetails loadUserByUsername(final String username, final boolean loadRoles) {
        return loadUserByUsernameOrEmail(username, loadRoles)
    }

    UserDetails loadUserByUsernameOrEmail(final String usernameOrEmail, final boolean loadRoles) {
        if (log.debugEnabled) {
            log.debug "Attempted user logon: $usernameOrEmail"
        }

        User.withTransaction { status ->
            final User user = User.findByUsernameOrEmail(usernameOrEmail, usernameOrEmail)

            if (!user) {
                log.warn "User not found: $usernameOrEmail"
                throw new UsernameNotFoundException('User not found', usernameOrEmail)
            }

            if (log.debugEnabled) {
                log.debug "User found: $usernameOrEmail"
            }

            List<GrantedAuthorityImpl> roles = NO_ROLES
            if (loadRoles) {
                List<GrantedAuthorityImpl> authorities = user.authorities?.collect {new GrantedAuthorityImpl(it.authority)}
                if (authorities) {
                    roles = authorities
                }
            }

            if (log.debugEnabled) {
                log.debug "User roles: $roles"
            }

            return createUserDetails(user, roles)
        }
    }

    protected UserDetails createUserDetails(final User user, final Collection<GrantedAuthorityImpl> authorities) {
        new GrailsUser(user.username, user.password, user.enabled,
                !user.accountExpired, !user.passwordExpired,
                !user.accountLocked, authorities, user.id)
    }

}
