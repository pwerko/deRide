package com.deride

import grails.plugins.springsecurity.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class BusquedaController {

	static defaultAction = "rides"

    def rides() {
    	log.debug "Busqueda de rides con parametros ${params}"
    }

    def autobuses()
 	{
 		log.debug "Busqueda de autobuses con parametros ${params}"
 		render(view: '/main/autobuses')
 	}
}
