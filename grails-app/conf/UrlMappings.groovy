/**
 * @Plat_Forms GM
 */
class UrlMappings {

	static mappings = {
        "/"(controller: 'user', action: 'home')
        "/coffeine/public-highscore"(controller: 'coffeine', action: 'publicHighscore')

		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"500"(view:'/error')
	}
}
