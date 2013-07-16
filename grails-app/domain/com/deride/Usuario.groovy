package com.deride

import com.deride.enums.*

class Usuario implements Serializable {

    TitleType titleType
	String name
	String lastName
	String username
	GenderType gender
	String email
	String phone
    String mobPhone
    String street
    String number
    String zipCode
    String city
    String country
    String password
    Date birthday
    Date lastLogin
    OcupationType ocupation
    MaritalStatus maritalStatus
    Boolean facebookConnect = false
    Boolean emailConfirm = false
    Boolean mobPhoneConfirm = false
    Boolean smoker = false
    Boolean newsLetter = false
    Boolean emailAlerts = true
    EmailType emailFormat = EmailType.HTML
    Vehiculo vehicle

	static hasMany = [rides: Ride, languages: String]

    static constraints = {
        titleType(nullable: true, blank: true)
    	name(nullable: false, blank: false)
    	lastName(nullable: false, blank:false)
    	username(nullable: false, blank:false, unique:true, size: 5..15)
    	gender(nullable: false, blank: false)
    	email(nullable: false, blank: false, email: true)
    	phone(nullable: true, blank: true, phoneNumber: true)
        mobPhone(nullable: true, blank: true, phoneNumber: true)
        street(nullable: true, blank: true)
        number(nullable: true, blank: true)
        zipCode(nullable: true, blank: false, zipCode: true)
        city(nullable: true, blank: false)
        country(nullable: true)
        password(nullable: true, blank: false)
        birthday(nullable: true, max: new Date())
        ocupation(nullable: true, blank: true)
        maritalStatus(nullable: true, blank: false)
        lastLogin(nullable: true)
        languages(nullable: true)
        newsLetter(nullable: true)
        emailAlerts(nullable: true)
        emailFormat(nullable: true)
        vehicle(nullable: true)
    }

    String toString() {
        "Usuario ${id}, ${name} ${lastName}"
    }
}
