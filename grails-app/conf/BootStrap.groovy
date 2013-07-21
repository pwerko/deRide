import grails.util.Environment
class BootStrap {
	def bootStrapService

    def init = { servletContext ->

    	Environment.executeForCurrentEnvironment {

			development {
				log.info "Creating mockup data in DEVELOPMENT"
				bootStrapService.runBootstrapActions()
			}

			production {
				log.info "Creating mockup data in PRODUCTION"
				bootStrapService.runBootstrapActions()
			}
		}
    }
    def destroy = {
    }
}
