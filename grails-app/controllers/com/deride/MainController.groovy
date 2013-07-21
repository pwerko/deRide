package com.deride

class MainController {
    def rideService
    def blogService

    def index() {
        def latestRides = []
        def latestPosts = []
        try {
            latestRides = rideService.getLatestRides()
            latestPosts = blogService.getLatestPosts()
        } catch (e) {
            log.error "Failed to retrieve list of last rides/posts", e
        }

    	render(view: "/index", model: [rides: latestRides, posts: latestPosts])
    }

    def index2() {
        render(view: "/index2")
    }

    def sobre_nosotros() {

    }

    def aviso_legal() {

    }

    def tdu() {

    }

    def contacto() {

    }

    def ayuda() {

    }

    def preguntas_frecuentes() {

    }

    def como_usar() {

    }

    def autobuses() {

    }

    def iniciar_sesion() {

    }

    def publicar_viaje() {

    }

    def seguridad_y_confianza() {

    }

    def medio_ambiente() {

    }

    def plataforma_gratuita() {

    }
}
