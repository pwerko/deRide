package com.deride

class SearchController {

    def index() {
    	log.debug "Busqueda con parametros ${params}"
    	render (view: "buscar");
    }

}
