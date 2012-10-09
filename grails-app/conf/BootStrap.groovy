import de.kaufda.plat_forms.cafman.Role
import de.kaufda.plat_forms.cafman.User
import de.kaufda.plat_forms.cafman.security.Authority

/**
 * @author Patrick Jungermann
 * @Plat_Forms GM
 */
class BootStrap {

    def grailsApplication

    def init = { servletContext ->
        setupRolesAndAdmin()
    }

    def destroy = {
    }

    protected void setupRolesAndAdmin() {
        findOrSaveRole(Authority.USER)
        final Role adminRole = findOrSaveRole(Authority.ADMIN)

        final ConfigObject adminDefaults = grailsApplication.config.security.admin.defaults
        User admin = User.findByUsername(adminDefaults.username)
        if (!admin) {
            admin = new User(
                    username: adminDefaults.username,
                    fullName: adminDefaults.fullName,
                    password: adminDefaults.password,
                    email: adminDefaults.email,
                    enabled: true,
                    accountExpired: false,
                    accountLocked: false,
                    passwordExpired: false
            )
            admin.addToAuthorities adminRole
            admin.save(flush: true)
        }
    }

    /**
     * Replacement for the {@link Role#findOrSaveWhere(Map)} method,
     * which ist not working with the mongodb plugin.
     *
     * @param authority The value for {@link Role#authority}.
     * @return A persistent instance.
     */
    protected Role findOrSaveRole(String authority) {
        Role role = Role.findByAuthority authority
        if (!role) {
            role = new Role(authority: authority)
            role.save(flush: true)
        }

        return role
    }

}
