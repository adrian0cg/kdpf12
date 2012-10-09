/**
 * @Plat_Forms GM
 */
class UrlMappings {

	static mappings = {
        "/"(controller: 'user', action: 'home')
        "/caffeine/public-highscore"(controller: 'caffeine', action: 'publicHighscore')
        "/caffeine/public-statistics"(controller: 'caffeine', action: 'publicStatistics')

		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"500"(view:'/error')
	}
}
