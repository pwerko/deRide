package com.deride

import pl.burningice.plugins.image.container.ContainerUtils
import pl.burningice.plugins.image.ast.intarface.DBImageContainer
import pl.burningice.plugins.image.ast.Image

class UserSecTagLib {

	static namespace = "usersec"
	def springSecurityService
	def containerWorkerFactory

	def loggedInUsuarioInfo = { attrs, body ->
		log.debug "loggedInUsuarioInfo() -- $attrs"
		def user = springSecurityService.currentUser

		String field = assertAttribute('field', attrs, 'loggedInUsuarioInfo')

		def source
		if (springSecurityService.isLoggedIn()) {
			source = user
			for (pathElement in field.split('\\.')) {
				source = source."$pathElement"
				if (source == null) {
					break
				}
			}
		}

		if (source) {
			out << source.encodeAsHTML()
		}
		else {
			out << body()
		}
	}

	/**
     * Allows to check if current user has no profile image
     *
     */
	def hasNoImage =  { attrs, body ->
        if (containerWorkerFactory.produce(springSecurityService.currentUser).hasImage()){
            return
        }

        out << body()
    }

    /**
     * Allows to check if current user has profile image
     *
     */
    def hasImage =  { attrs, body ->
        if (!containerWorkerFactory.produce(springSecurityService.currentUser).hasImage()){
            return
        }

        out << body()
    }

    /**
     * Display html img tag with path to stored image
     *
     * @param size Size of the image that should be displayed
     * @param bean Image container that hold information about image
     */
    def img =  { attrs, body ->
        def path = resource(attrs, body)

        if (!path){
            return null
        }

        attrs.remove('size')

        def htmlAttributes = attrs.collect {it.key + '="' + it.value + '"'}
        out << "<img src=\"${path}\" ${htmlAttributes.join(' ')}/>"
    }

    /**
     * Create link to image stored on the server
     *
     * @param size Size of the image that should be displayed
     */
    def resource = {attrs, body ->
        if (!attrs.size){
            throw new IllegalArgumentException("Atrribute size can't be empty/null")
        }

        def bean = springSecurityService.currentUser

        out << getResourceData(attrs.size, bean)
    }

    /**
     * Retrieve information about file name and storage directory on base
     * of image size name and image container object
     *
     * @param size Size of the image that should be displayed
     * @param bean Image container that hold information about image
     */
    private def getResourceData(size, DBImageContainer imageContainer){
        Image image = imageContainer.biImage[size]

        if (!image){
            throw new IllegalArgumentException("There is no image with size ${size} saved for container ${imageContainer.class.name}")
        }

        g.createLink(controller:'dbContainerImage', action:'index', params:[imageId:image.ident(), size:size, type:image.type])
    }

	protected assertAttribute(String name, attrs, String tag) {
		if (!attrs.containsKey(name)) {
			throwTagError "Tag [$tag] is missing required attribute [$name]"
		}
		attrs.remove name
	}
}
