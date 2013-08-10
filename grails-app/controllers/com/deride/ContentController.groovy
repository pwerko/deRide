package com.deride

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured(['ROLE_ADMIN', 'IS_AUTHENTICATED_FULLY'])
class ContentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def imageUploadService

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [contentInstanceList: Content.list(params), contentInstanceTotal: Content.count()]
    }

    def create() {
        [contentInstance: new Content(params)]
    }

    def save() {
        log.info "Saving new content instance with params ${params}"
        def contentInstance = new Content(params)
        contentInstance.slug = Content.generateSlug(contentInstance.title)
        if (!contentInstance.save(flush: true)) {

            render(view: "create", model: [contentInstance: contentInstance])
            return
        }

        def file = request.getFile('image')
        if (!file.empty) {
            /* Save image */
            imageUploadService.save(contentInstance, true)
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'content.label', default: 'Content'), contentInstance.id])
        redirect(action: "show", id: contentInstance.id)
    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def show(Long id) {
        def contentInstance = Content.get(id)
        if (!contentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'content.label', default: 'Content'), id])
            redirect(action: "list")
            return
        }

        [contentInstance: contentInstance]
    }

    def edit(Long id) {
        def contentInstance = Content.get(id)
        if (!contentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'content.label', default: 'Content'), id])
            redirect(action: "list")
            return
        }

        [contentInstance: contentInstance]
    }

    def update(Long id, Long version) {
        log.info "Updating content instance ${id} with params ${params}"
        def contentInstance = Content.get(id)
        if (!contentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'content.label', default: 'Content'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (contentInstance.version > version) {
                contentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'content.label', default: 'Content')] as Object[],
                          "Another user has updated this Content while you were editing")
                render(view: "edit", model: [contentInstance: contentInstance])
                return
            }
        }

        /* Populate content instance */
        contentInstance.properties = params
        def file = request.getFile('image')
        if (!file.empty) {
            /* Save image */
            imageUploadService.save(contentInstance)
        }
        /* Check for new tags */
        if(params.newTags) {
            def tags = params.newTags.split(',')
            tags.each { tag ->
                def tagInstance = new Tag(name: tag.trim(), slug: Tag.generateSlug(tag.trim()))
                if (!tagInstance.save()) {
                    flash.message = message(code: 'content.tag.invalid.message', default: "Problems saving Tag ${tag}")
                    render(view: "edit", model: [contentInstance: contentInstance])
                    return
                }
                contentInstance.addToTags(tagInstance)
            }
        }

        /* Save content instance */
        if (!contentInstance.save(flush: true)) {
            render(view: "edit", model: [contentInstance: contentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'content.label', default: 'Content'), contentInstance.id])
        redirect(action: "show", id: contentInstance.id)
    }

    @Secured(['ROLE_OPER', 'IS_AUTHENTICATED_FULLY'])
    def delete(Long id) {
        def contentInstance = Content.get(id)
        if (!contentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'content.label', default: 'Content'), id])
            redirect(action: "list")
            return
        }

        try {
            contentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'content.label', default: 'Content'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'content.label', default: 'Content'), id])
            redirect(action: "show", id: id)
        }
    }
}
