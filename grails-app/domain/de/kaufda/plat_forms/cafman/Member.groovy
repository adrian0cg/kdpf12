package de.kaufda.plat_forms.cafman

import org.bson.types.ObjectId

/**
 * Domain class for persisting members of coffee kitty.
 *
 * @Plat_Forms M
 * @author: Krzysztof Kachel
 */
class Member {

    static mapWith = "mongo"


    MemberState state = MemberState.IN_PROGRESS

    Double balance = 0.0

    User user


    // MongoDB denormalization to speed up notification queries as MongoDB didn't support joins.
    ObjectId coffeeKittyOwnerId

    Long coffeeKittyId


    static constraints = {}

    static mapping = {
        user index:true
        compoundIndex coffeeKittyOwnerId:1, state:1
    }

    public CoffeeKitty findCoffeeKitty() {
        CoffeeKitty.get(coffeeKittyId)
    }

}
