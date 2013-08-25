package com.deride

import grails.plugins.springsecurity.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class MainController {
    def rideService
    def blogService
    def springSecurityService

    def index() {
        def latestRides = []
        def latestPosts = []
        try {
            latestRides = rideService.getLatestRides()
            latestPosts = blogService.getLatestPosts()
        } catch (e) {
            log.error "Failed to retrieve list of last rides/posts", e
        }
        //def currentUser = springSecurityService.currentUser
        //println currentUser?.properties
    	render(view: "/index", model: [rides: latestRides, posts: latestPosts])
    }

    def index2() {
        def content
        try {
            content = Content.get(1);
            render(view: "/index2", model: [content: content])
        } catch(e) {
            log.error "Failed get content instance", e
        }
    }

    def processUrl() {
        def slug = params.slug
        if(slug) {
            if(slug == "content" || slug == "usuario" || slug == "paragraph") {
                redirect(controller: slug, action: "list")
                return
            }

            def contentInstance = Content.findBySlug(slug)
            if(contentInstance) {
                render(view: "/content/display", model: [content: contentInstance])
            } else {
                def action = slug
                render(view: "/main/$action", model: [action: action])
            }
        }
    }

    def aviso_legal = {

    }

    def ayuda = {

    }

    def como_usar = {

    }

    def contacto = {

    }

    def medio_ambiente = {

    }

    def plataforma_gratuita = {

    }

    def preguntas_frecuentes = {

    }

    def seguridad_y_confianza = {

    }

    def sobre_nosotros = {

    }

    def tdu = {

    }

}
