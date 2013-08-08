package com.deride

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured(['ROLE_ADMIN', 'IS_AUTHENTICATED_FULLY'])
class ParagraphController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [paragraphInstanceList: Paragraph.list(params), paragraphInstanceTotal: Paragraph.count()]
    }

    def create() {
        [paragraphInstance: new Paragraph(params)]
    }

    def save() {
        def paragraphInstance = new Paragraph(params)
        if (!paragraphInstance.save(flush: true)) {
            render(view: "create", model: [paragraphInstance: paragraphInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'paragraph.label', default: 'Paragraph'), paragraphInstance.id])
        redirect(action: "show", id: paragraphInstance.id)
    }

    def show(Long id) {
        def paragraphInstance = Paragraph.get(id)
        if (!paragraphInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paragraph.label', default: 'Paragraph'), id])
            redirect(action: "list")
            return
        }

        [paragraphInstance: paragraphInstance]
    }

    def edit(Long id) {
        def paragraphInstance = Paragraph.get(id)
        if (!paragraphInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paragraph.label', default: 'Paragraph'), id])
            redirect(action: "list")
            return
        }

        [paragraphInstance: paragraphInstance]
    }

    def update(Long id, Long version) {
        def paragraphInstance = Paragraph.get(id)
        if (!paragraphInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paragraph.label', default: 'Paragraph'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (paragraphInstance.version > version) {
                paragraphInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'paragraph.label', default: 'Paragraph')] as Object[],
                          "Another user has updated this Paragraph while you were editing")
                render(view: "edit", model: [paragraphInstance: paragraphInstance])
                return
            }
        }

        paragraphInstance.properties = params

        if (!paragraphInstance.save(flush: true)) {
            render(view: "edit", model: [paragraphInstance: paragraphInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'paragraph.label', default: 'Paragraph'), paragraphInstance.id])
        redirect(action: "show", id: paragraphInstance.id)
    }

    def delete(Long id) {
        def paragraphInstance = Paragraph.get(id)
        if (!paragraphInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paragraph.label', default: 'Paragraph'), id])
            redirect(action: "list")
            return
        }

        try {
            paragraphInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'paragraph.label', default: 'Paragraph'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'paragraph.label', default: 'Paragraph'), id])
            redirect(action: "show", id: id)
        }
    }
}
