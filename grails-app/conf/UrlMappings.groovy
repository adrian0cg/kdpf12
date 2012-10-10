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

        "/statistics/$user/$timestamp/$interval" {
            controller = "caffeine"
            action = "single"
            constraints {
                interval( inList: ['daily','weekly'])
            }

        }


		"500"(view:'/error')
	}
}
