package de.kaufda.plat_forms.cafman

/**
 * User domain class.
 *
 * @Plat_Forms M
 * @author Krzysztof Kachel
 */
class User {

    static mapWith = "mongo"

    String fullName

    String displayName

    boolean showStats

    String password

    String email

    static constraints = {
        email(email: true, unique: true)
        displayName(unique: true)
        // Todo add needed validation
    }
}
