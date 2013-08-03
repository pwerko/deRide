class BootStrap {
	def bootStrapService

    def init = { servletContext ->
        bootStrapService.runBootstrapActions()
    }
    def destroy = {
    }
}
