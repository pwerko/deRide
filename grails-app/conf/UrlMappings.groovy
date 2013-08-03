class UrlMappings {

	static excludes = ["/images/*", "/css/*", "/blog/*"]

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: 'main', action: 'index')
		"/sitemap"{
            controller = 'sitemap'
            action = 'sitemap'
        }
        "/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")
		"/$action" (controller: 'main')

		"403"(view: "/errors/403")
		"404"(view:'/errors//404')
		"500"(view:'/errors/500')
	}
}
