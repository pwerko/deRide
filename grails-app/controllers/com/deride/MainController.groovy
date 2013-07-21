package com.deride

class MainController {
    def rideService

    def index() {
        def latestRides = []
        try {
            latestRides = rideService.getLatestRides()
        } catch (e) {
            log.error "Failed to retrieve list of last rides", e
        }

    	render(view: "/index", model: [rides: latestRides])
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
