package de.kaufda.plat_forms.cafman

import org.bson.types.ObjectId

/**
 * User domain class.
 *
 * @Plat_Forms GM
 * @author Krzysztof Kachel
 * @author Patrick Jungermann
 */
class User {

    transient springSecurityService

    static mapWith = "mongo"

    ObjectId id

    String username
	String password
    boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

    String fullName
    String email
    boolean showStats = Boolean.FALSE

    static hasMany = [authorities: Role]

    static constraints = {
		username blank: false, unique: true
		password blank: false
        email email: true, unique: true
        // Todo add needed validation
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
