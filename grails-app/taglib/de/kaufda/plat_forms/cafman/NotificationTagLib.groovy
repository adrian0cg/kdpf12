package de.kaufda.plat_forms.cafman

/**
 * Provides tags for visualizing notification related information.
 *
 * @author Krzysztof Kachel
 * @Plat_Forms M
 */
class NotificationTagLib {
    static String namespace = "notifications"

    def show = { Map attributes ->
        // TODO rendered data has to be dynamic
        g.render(template: '/sharedTemplates/notifications')
    }

}
