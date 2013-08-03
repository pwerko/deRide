package com.deride

import com.deride.Usuario
import com.deride.UsuarioFacebook
import com.the6hours.grails.springsecurity.facebook.FacebookAuthToken
import com.deride.enums.GenderType

class FacebookAuthService {

    Usuario createAppUser(UsuarioFacebook user, FacebookAuthToken token) {
    	log.info "Creando Usuario para UsuarioFacebook user $user"

    	Usuario appUser = Usuario.newInstance()
    	appUser.name = "User"
        appUser.lastName = "$token.uid"
        appUser.username = "facebook_$token.uid"
        appUser.gender = GenderType.MALE
        appUser.email = "test@hotmail.com"
    	appUser.password = token.accessToken?.accessToken
        appUser.enabled = true
        appUser.accountExpired = false
        appUser.accountLocked = false
        appUser.passwordExpired = false
        Usuario.withTransaction {
            appUser.save(flush: true, failOnError: true)
        }

        return appUser
    }
}
