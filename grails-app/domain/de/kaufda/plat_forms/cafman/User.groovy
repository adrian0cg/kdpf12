package de.kaufda.plat_forms.cafman

import org.bson.types.ObjectId

/**
 * Domain class for persisting users.
 *
 * @Plat_Forms GM
 * @author Krzysztof Kachel
 * @author Patrick Jungermann
 */
class User {

    static mapWith = "mongo"

    transient springSecurityService

    ObjectId id

    String username
	String password
    boolean enabled = Boolean.TRUE
	boolean accountExpired = Boolean.FALSE
	boolean accountLocked = Boolean.FALSE
	boolean passwordExpired = Boolean.FALSE

    String fullName
    String email
    boolean showStats = Boolean.FALSE

    static hasMany = [authorities: Role]

    static constraints = {
		username blank: false, unique: true
		password blank: false
        email email: true, unique: true
        fullName blank: false, nullable: false
	}

	static mapping = {
		password column: '`password`'
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}

}
