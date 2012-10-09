package de.kaufda.plat_forms.cafman

import org.bson.types.ObjectId

/**
 * Domain class for persisting user roles.
 *
 * @author Patrick Jungermann
 * @Plat_Forms GM
 */
class Role {

    static mapWith = "mongo"

    ObjectId id
    String authority

    static mapping = {
        cache true
    }

    static constraints = {
        authority blank: false, unique: true
    }
}
