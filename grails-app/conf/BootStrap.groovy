/**
 * @author Patrick Jungermann
 * @Plat_Forms GM
 */
class BootStrap {

    def resetService

    def init = { servletContext ->
        resetService.setupRolesAndAdmin()
    }

    def destroy = {
    }

}
