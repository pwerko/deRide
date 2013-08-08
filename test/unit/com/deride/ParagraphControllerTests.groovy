package com.deride



import org.junit.*
import grails.test.mixin.*

@TestFor(ParagraphController)
@Mock(Paragraph)
class ParagraphControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/paragraph/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.paragraphInstanceList.size() == 0
        assert model.paragraphInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.paragraphInstance != null
    }

    void testSave() {
        controller.save()

        assert model.paragraphInstance != null
        assert view == '/paragraph/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/paragraph/show/1'
        assert controller.flash.message != null
        assert Paragraph.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/paragraph/list'

        populateValidParams(params)
        def paragraph = new Paragraph(params)

        assert paragraph.save() != null

        params.id = paragraph.id

        def model = controller.show()

        assert model.paragraphInstance == paragraph
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/paragraph/list'

        populateValidParams(params)
        def paragraph = new Paragraph(params)

        assert paragraph.save() != null

        params.id = paragraph.id

        def model = controller.edit()

        assert model.paragraphInstance == paragraph
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/paragraph/list'

        response.reset()

        populateValidParams(params)
        def paragraph = new Paragraph(params)

        assert paragraph.save() != null

        // test invalid parameters in update
        params.id = paragraph.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/paragraph/edit"
        assert model.paragraphInstance != null

        paragraph.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/paragraph/show/$paragraph.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        paragraph.clearErrors()

        populateValidParams(params)
        params.id = paragraph.id
        params.version = -1
        controller.update()

        assert view == "/paragraph/edit"
        assert model.paragraphInstance != null
        assert model.paragraphInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/paragraph/list'

        response.reset()

        populateValidParams(params)
        def paragraph = new Paragraph(params)

        assert paragraph.save() != null
        assert Paragraph.count() == 1

        params.id = paragraph.id

        controller.delete()

        assert Paragraph.count() == 0
        assert Paragraph.get(paragraph.id) == null
        assert response.redirectedUrl == '/paragraph/list'
    }
}
