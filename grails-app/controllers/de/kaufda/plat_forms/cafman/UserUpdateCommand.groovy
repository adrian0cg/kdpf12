package de.kaufda.plat_forms.cafman

import grails.validation.Validateable

/**
 * Provides data bindung and data validation for user update requests.
 *
 * @author Patrick Jungermann
 * @Plat_Forms M
 */
@Validateable
class UserUpdateCommand extends SignUpCommand {

    String oldPassword

    static constraints = {
        importFrom SignUpCommand
    }

}
