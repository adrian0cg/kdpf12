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

    public Member findMemberByUser(User user) {
        members.find { it.user == user }
    }

    public Float findBalanceByUser(User user) {
        Member member = findMemberByUser(user)
        if(!member) {
            return null
        }
        return member.balance
    }

    public boolean isUserOwner(User user) {
        return this.user == user
    }

}
