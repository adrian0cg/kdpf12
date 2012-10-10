package de.kaufda.plat_forms.cafman

class NotificationTagLib {

    static String namespace = "notify"

    def notificationService

    def membership = { Map attributes ->
        List<Member> notifications = notificationService.findMembershipNotifications()
        g.render(template: '/sharedTemplates/notifications', model: [notifications: notifications])
    }

}

