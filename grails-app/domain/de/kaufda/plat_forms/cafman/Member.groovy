package de.kaufda.plat_forms.cafman

/**
 * Domain class for persisting members of coffee kitty.
 *
 * @Plat_Forms M
 * @author: Krzysztof Kachel
 */
class Member {

    static mapWith = "mongo"

    MemberState state = MemberState.IN_PROGRESS

    Float balance = 0

    User user

    static constraints = {}

}
