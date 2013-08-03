package com.deride

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_OPER', 'IS_AUTHENTICATED_FULLY'])
class AdminController {

    def index() { }
}
