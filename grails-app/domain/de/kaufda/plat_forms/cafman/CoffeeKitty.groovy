package de.kaufda.plat_forms.cafman

/**
 * Domain class for persisting coffee kitties.
 *
 * @Plat_Forms M
 * @author: Krzysztof Kachel
 */
class CoffeeKitty {

    static mapWith = "mongo"

    String name

    User user

    static hasMany = [members: Member]

    static constraints = {
        name(unique: true)
    }

    static mapping = {
        name index:true, indexAttributes: [unique:true, dropDups:true]
    }

}
