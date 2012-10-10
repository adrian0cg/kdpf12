package de.kaufda.plat_forms.cafman

import grails.validation.Validateable

/**
 * Command object used for the sign-up functionality. Binds the request parameters to the correct data types.
 *
 * @author Patrick Jungermann
 * @Plat_Forms M
 */
@Validateable
class SignUpCommand {

    String email
    String password
    String repeatPassword
    String username
    String fullName
    boolean showStats

    static constraints = {
        password(validator: { value, object ->
            return value && value == object.repeatPassword
        })
    }

}
