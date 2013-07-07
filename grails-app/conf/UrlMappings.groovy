class UrlMappings {

	static excludes = ["/images/*", "/css/*"]

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/$action" (controller: 'main')
		"/"(controller: 'main', action: 'index')
		"/sitemap"{
            controller = 'sitemap'
            action = 'sitemap'
        }
		"403"(view: "/errors/403")
		"404"(view:'/errors//404')
		"500"(view:'/errors/500')
	}
}
