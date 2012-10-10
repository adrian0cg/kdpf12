package de.kaufda.plat_forms.cafman

import de.kaufda.plat_forms.cafman.MemberState

/**
 * Member html code managed by tag.
 *
 * @Plat_Forms M
 * @author: Krzysztof Kachel
 */
class MembershipTagLib {

    static String namespace = "member"

    def springSecurityService

    def showMembership = { attrs, body ->
        CoffeeKitty coffeeKitty = attrs.coffeeKitty
        User loggedUser = springSecurityService.getCurrentUser()
        Member member = coffeeKitty?.members.find { it.user?.id == loggedUser?.id }

        if(!member || member.state == MemberState.REJECTED) {
            out << render(template:"/coffeeKitty/notAMember", model:[coffeeKitty: coffeeKitty])
        } else {
            switch (member.state) {
                case MemberState.ACCEPTED:
                    out << '<tr class="success">'
                    out << "<td>${coffeeKitty.name}</td>"
                    out << "<td>Already a Member</td>"
                    out << '</tr>'
                    break
                case MemberState.IN_PROGRESS:
                    out << '<tr class="warning">'
                    out << "<td>${coffeeKitty.name}</td>"
                    out << "<td>Membership Request Pending</td>"
                    out << '</tr>'
                    break
                default:
                    out << '<tr>'
                    out << "<td>${coffeeKitty.name}</td>"
                    out << "<td>Already a Member</td>"
                    out << '</tr>'
            }
        }
    }

}
