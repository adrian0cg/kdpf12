package de.kaufda.plat_forms.cafman

/**
 * Controller manage a flow of coffee kitty interactions.
 *
 * @Plat_Forms M
 * @author: Krzysztof Kachel
 */
class CoffeeKittyController {

    static defaultAction = "kitty"

    def springSecurityService

    def coffeeKittyService

    def kitty() {
        List<CoffeeKitty> coffeeKitties = coffeeKittyService.findAllWhereLoggedUserIsAMember()
        User loggedUser = springSecurityService.getCurrentUser()
        [coffeeKitties: coffeeKitties, loggedUser: loggedUser]
    }

    def kittyAdmin() {
        render(view: 'kitty-admin')
    }

    def save() {
        CoffeeKitty coffeeKitty = new CoffeeKitty(params)
        coffeeKitty.user = springSecurityService.getCurrentUser()
        if (coffeeKitty.validate() && coffeeKitty.save()) {
            coffeeKittyService.join(coffeeKitty)
            return redirect(action: 'kittyAdmin')
        }
        return redirect(action: 'kitty')
    }

    def search() {
        List<CoffeeKitty> coffeeKitties = coffeeKittyService.searchByName(params.query)
        render(template: 'searchResults', model: [coffeeKitties: coffeeKitties])
    }

    def join() {
        CoffeeKitty coffeeKitty = CoffeeKitty.get(params.id)
        coffeeKittyService.join(coffeeKitty)

        render member.showMembership(coffeeKitty: coffeeKitty)
    }

}
