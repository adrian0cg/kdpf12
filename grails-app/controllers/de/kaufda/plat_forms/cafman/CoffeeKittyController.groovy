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
        CoffeeKitty coffeeKitty = CoffeeKitty.get(params.id)
        render(view: 'kitty-admin', model: [coffeeKitty: coffeeKitty, invalidPrice: params.getBoolean('invalidPrice')])
    }

    def save() {
        final User user = (User) springSecurityService.currentUser
        final CoffeeKitty coffeeKitty = new CoffeeKitty(params)
        coffeeKitty.user = user

        if (coffeeKitty.save()) {
            coffeeKittyService.join(coffeeKitty, true)

            if (!user.defaultCoffeeKitty) {
                user.defaultCoffeeKitty = coffeeKitty
                user.save()
            }

            return redirect(action: 'kittyAdmin', id: coffeeKitty.id)
        }

        return redirect(action: 'kitty')
    }

    def search() {
        List<CoffeeKitty> searchResult = coffeeKittyService.searchByName(params.query)
        render(template: 'searchResults', model: [searchResult: searchResult])
    }

    def join() {
        CoffeeKitty coffeeKitty = CoffeeKitty.get(params.id)
        coffeeKittyService.join(coffeeKitty)
        render member.showMembership(coffeeKitty: coffeeKitty)
    }

    def changePrice(final Long id, final Double price) {
        final CoffeeKitty coffeeKitty = CoffeeKitty.get(id)
        if (coffeeKitty && coffeeKitty.user.id == springSecurityService.currentUser.id) {
            coffeeKitty.price = price

            final Map params = [:]
            if (!coffeeKitty.save()) {
                params.invalidPrice = true
            }

            redirect action: 'kittyAdmin', id: id, params: params
            return
        }

        redirect action: 'kitty'
    }

    def savePayments() {
        List memberIds = params.list("memberId")
        List payments = params.list("payment")
        Long coffeeKittyId = null

        for(int i = 0; i < memberIds.size(); i++) {
            if(payments[i]) {
                Double payment = payments[i]?.toDouble()
                Member member = Member.get(memberIds[i]?.toLong())
                member.balance += payment
                member.save()
                if(!coffeeKittyId) {
                    coffeeKittyId = member.coffeeKittyId
                }
            }
        }

        redirect(action: 'kittyAdmin', id: coffeeKittyId)
    }

}
