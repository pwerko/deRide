package com.deride

import grails.plugins.springsecurity.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class AutobusesController {

	static defaultAction = "buscar"

    def buscar =
 	{
 		log.debug "Busqueda de autobuses con parametros ${params}"
 	}

}
