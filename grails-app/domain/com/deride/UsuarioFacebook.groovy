package com.deride

class UsuarioFacebook {

	long uid
  	String accessToken
  	Date accessTokenExpires

	static belongsTo = [user: AppUser]

	static constraints = {
		uid unique: true
	}
}
