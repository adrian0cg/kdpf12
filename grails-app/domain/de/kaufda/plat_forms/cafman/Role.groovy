package de.kaufda.plat_forms.cafman

import org.bson.types.ObjectId

/**
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
