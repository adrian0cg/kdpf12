package de.kaufda.plat_forms.cafman

import com.mongodb.BasicDBObject
import com.mongodb.DBCursor
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

    /**
     * Custom isDirty implementation, as this is not supported with the mongoDB mapping.
     *
     * @param field The field, which has to be checked.
     * @return true, if the field was changed.
     */
    private boolean isDirty(final String field) {
        final BasicDBObject query = new BasicDBObject('_id', id)
        final BasicDBObject fields = new BasicDBObject(['_id':0, (field): 1])
        final DBCursor cursor = (DBCursor) User.collection.find(query, fields)
        if (cursor.size() > 0) {
            return this."$field" != cursor[0]."$field"
        }

        return true
    }

}
