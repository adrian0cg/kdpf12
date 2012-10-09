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
    UserDetails loadUserByUsername(String username, boolean loadRoles) {
        if (log.debugEnabled) {
            log.debug "Attempted user logon: $username"
        }

        User.withTransaction { status ->
            User user = User.findByUsername(username)

            if (!user) {
                log.warn "User not found: $username"
                throw new UsernameNotFoundException('User not found', username)
            }

            if (log.debugEnabled) {
                log.debug "User found: $username"
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

    @Override
    UserDetails loadUserByUsername(String username) {
        return loadUserByUsername(username, true)
    }

    protected UserDetails createUserDetails(User user, Collection<GrantedAuthorityImpl> authorities) {
        new GrailsUser(user.username, user.password, user.enabled,
                !user.accountExpired, !user.passwordExpired,
                !user.accountLocked, authorities, user.id)
    }

}
