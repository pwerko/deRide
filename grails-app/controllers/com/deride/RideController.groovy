package com.deride

class RideController {

    static defaultAction = "lista"
    static allowedMethods = [lista:'GET',
                             buscar:['POST', 'GET'],
                             ultimos:['POST', 'GET'],
                             publicar: ['POST', 'GET']]

    def lista() {
    	log.debug "Lista de rides con parametros ${params}"
    }

    def ultimos() {
    	log.debug "Lista de ultimos rides con parametros ${params}"
    }

    def buscar() {
    	log.debug "Busqueda de ride con parametros ${params}"
 	}

    def publicar() {
    	log.debug "Publicacion de ride con parametros ${params}"
    }
}
