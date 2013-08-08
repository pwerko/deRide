package com.deride

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class BlogController {

    static defaultAction = "ultimos"

    def ultimos() {
    	log.debug "Busqueda de posts en el blog con parametros ${params}"
    }
}
