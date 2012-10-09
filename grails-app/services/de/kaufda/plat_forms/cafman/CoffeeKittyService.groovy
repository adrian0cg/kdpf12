package de.kaufda.plat_forms.cafman

/**
 * Service for managing CoffeeKitty documents.
 *
 * @author Krzysztof Kachel
 * @Plat_Forms GM
 */
class CoffeeKittyService {

    grails.gsp.PageRenderer groovyPageRenderer

    def searchByName(String query) {
        List<CoffeeKitty> coffeeKitties = CoffeeKitty.collection.find( ['name':['$regex':"${query}", '$options': 'i']]).collect{it as CoffeeKitty }
        return coffeeKitties
    }

}
