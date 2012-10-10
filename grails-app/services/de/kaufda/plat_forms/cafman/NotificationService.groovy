package de.kaufda.plat_forms.cafman

/**
 * Service for managing notifications.
 *
 * @author Krzysztof Kachel
 * @Plat_Forms M
 */
class NotificationService {

    def springSecurityService

    public List<Member> findMembershipNotifications() {
        User loggedUser = springSecurityService.getCurrentUser()
        List<Member> members = Member.findAll {
            coffeeKittyOwnerId == loggedUser.id
            state == MemberState.IN_PROGRESS
        }
        return members
    }
}
