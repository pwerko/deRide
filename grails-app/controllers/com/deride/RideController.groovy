package com.deride

import grails.plugins.springsecurity.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class RideController {

    static defaultAction = "lista"
    static allowedMethods = [lista:'GET',
                             buscar: ['POST', 'GET'],
                             ultimos: 'GET',
                             publicar: ['POST', 'GET'],
                             detalles: 'GET']

    def lista = {
    	log.debug "Lista de rides con parametros ${params}"
    }

    def ultimos = {
    	log.debug "Lista de ultimos rides con parametros ${params}"
    }

    def buscar = {
    	log.debug "Busqueda de ride con parametros ${params}"
 	}

    def publicar = {
    	log.debug "Publicacion de ride con parametros ${params}"
    }

    def detalles = {
        log.debug "Detalles de ride con parametros ${params}"
    }
}
