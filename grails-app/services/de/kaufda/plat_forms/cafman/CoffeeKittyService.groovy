package de.kaufda.plat_forms.cafman

/**
 * Service for managing CoffeeKitty documents.
 *
 * @author Krzysztof Kachel
 * @Plat_Forms M
 */
class CoffeeKittyService {

    def springSecurityService

    public List<CoffeeKitty> searchByName(String query) {
        List<CoffeeKitty> coffeeKitties = CoffeeKitty.collection.find( ['name':['$regex':"${query}", '$options': 'i']]).collect{it as CoffeeKitty }
        return coffeeKitties
    }

    public void join(CoffeeKitty coffeeKitty, boolean isOwnerOfCoffeeKitty = false) {
        User loggedUser = springSecurityService.getCurrentUser()
        Member member = new Member(user: loggedUser, coffeeKittyOwnerId: coffeeKitty?.user?.id, coffeeKittyId: coffeeKitty?.id)
        // If user is a owner of coffee kitty the membership is automatically accepted.
        if(isOwnerOfCoffeeKitty) {
            member.state = MemberState.ACCEPTED
        }
        coffeeKitty.addToMembers member
        coffeeKitty.save()
    }

    public List<CoffeeKitty> findAllWhereLoggedUserIsAMember() {
        User loggedUser = springSecurityService.getCurrentUser()
        List<Member> members = Member.findAllByUser(loggedUser)
        return CoffeeKitty.findAllByIdInList(members*.coffeeKittyId)
    }

}
