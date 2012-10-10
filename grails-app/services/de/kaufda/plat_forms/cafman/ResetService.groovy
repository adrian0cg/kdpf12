package de.kaufda.plat_forms.cafman

import de.kaufda.plat_forms.cafman.security.Authority

/**
 * @author Patrick Jungermann
 * @Plat_Forms RM
 */
class ResetService {

    def grailsApplication
    def springSecurityService

    public void setupRolesAndAdmin() {
        findOrSaveRole(Authority.USER)
        final Role adminRole = findOrSaveRole(Authority.ADMIN)

        final ConfigObject adminDefaults = grailsApplication.config.security.admin.defaults
        User admin = User.findByUsername(adminDefaults.username)
        if (!admin) {
            admin = new User(
                    username: adminDefaults.username,
                    fullName: adminDefaults.fullName,
                    password: adminDefaults.password,
                    email: adminDefaults.email
            )
            admin.addToAuthorities adminRole
            admin.save(flush: true, failOnError: true)
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
            role.save(flush: true, failOnError: true)
        }

        return role
    }

    /**
     * Resets the data to its original delivery status.
     */
    void reset() {
        String username = springSecurityService.currentUser.username

        CaffeineIntake.collection.drop()
        CaffeineLevelAlert.collection.drop()
        Member.collection.drop()
        CoffeeKitty.collection.drop()
        User.collection.drop()
        Role.collection.drop()

        setupRolesAndAdmin()

        springSecurityService.reauthenticate(username)
    }

}
