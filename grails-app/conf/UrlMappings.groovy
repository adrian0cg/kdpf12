/**
 * @Plat_Forms GM
 */
class UrlMappings {

	static mappings = {
        "/"(controller: 'user', action: 'home')
        "/sign-up"(controller: 'signUp', action: 'index')

		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"500"(view:'/error')
	}
}
