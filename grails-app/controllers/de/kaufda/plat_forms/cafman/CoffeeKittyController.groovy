package de.kaufda.plat_forms.cafman

/**
 * @Plat_Forms M
 * @author: Krzysztof Kachel
 */
class CoffeeKittyController {

    static defaultAction = "kitty"

    def kitty() {}

    def save() {
        CoffeeKitty coffeeKitty = new CoffeeKitty(params)
        if (coffeeKitty.validate() && coffeeKitty.save()) {
            return render()
        }
        return render()
    }

}
