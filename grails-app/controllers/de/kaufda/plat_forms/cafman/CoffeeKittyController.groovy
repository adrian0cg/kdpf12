package de.kaufda.plat_forms.cafman

/**
 * @Plat_Forms M
 * @author: Krzysztof Kachel
 */
class CoffeeKittyController {

    static defaultAction = "kitty"

    def springSecurityService

    def coffeeKittyService

    def kitty() {}

    def kittyAdmin() {
        render(view: 'kitty-admin')
    }

    def save() {
        CoffeeKitty coffeeKitty = new CoffeeKitty(params)
        coffeeKitty.user = springSecurityService.getCurrentUser()
        if (coffeeKitty.validate() && coffeeKitty.save()) {
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
