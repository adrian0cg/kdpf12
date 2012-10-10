package de.kaufda.plat_forms.cafman

/**
 * Controller manage a notifications.
 *
 * @Plat_Forms M
 * @author: Krzysztof Kachel
 */
class NotificationController {

    def accept() {
        Member member = Member.get(params.id)
        if (!member) {
            return render(text: "")
        }
        member.state = MemberState.ACCEPTED
        member.save()
        return render(text: "")
    }

    def decline() {
        Member member = Member.get(params.id)
        if (!member) {
            return render(text: "")
        }
        member.state = MemberState.REJECTED
        member.save()
        return render(text: "")
    }

}
