package com.deride

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
