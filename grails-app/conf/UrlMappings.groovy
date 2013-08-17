class UrlMappings {

	static excludes = ["/images/*", "/css/*", "/blog/*"]

	static mappings = {
        "/content/images/${imageId}" {
            controller = 'dbContainerImage'
            action = 'index'
        }

		"/"(controller: "main", action: "index")
		"/sitemap"{
            controller = 'sitemap'
            action = 'sitemap'
        }
        "/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")
		"/index2"(controller: "main", action: "index2")
		"/$slug" (controller: "main", action: "processUrl") {
			constraints {
				slug (validator: { !['j_spring_security_facebook_redirect', 'j_spring_security_check'].contains(it) })
			}
		}

		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"403"(view: "/errors/403")
		"404"(view:'/errors//404')
		"500"(view:'/errors/500')
	}
}
