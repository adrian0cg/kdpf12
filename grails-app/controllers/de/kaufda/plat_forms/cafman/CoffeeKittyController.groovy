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

    def save() {
        CoffeeKitty coffeeKitty = new CoffeeKitty(params)
        coffeeKitty.user = springSecurityService.getCurrentUser()
        if (coffeeKitty.validate() && coffeeKitty.save()) {
            return render()
        }
        return render()
    }

    def search() {
        List<CoffeeKitty> coffeeKitties = coffeeKittyService.searchByName(params.query)
        render(text: 'todo implement')
    }

}
