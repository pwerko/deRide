package com.deride

import pl.burningice.plugins.image.ast.DBImageContainer
import com.deride.enums.*

@DBImageContainer(field = 'image')
class Usuario extends AppUser implements Serializable {

    TitleType titleType
	String name
	String lastName
	GenderType gender
	String email
	String phone
    String mobPhone
    String street
    String number
    String zipCode
    String city
    String country
    Date birthday
    Date lastLogin
    Date dateCreated
    Date lastUpdated
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
    	lastName(nullable: true, blank:false)
    	username(nullable: false, blank:false, unique:true, size: 5..25)
    	gender(nullable: true, blank: false)
    	email(nullable: false, blank: false, unique:true, email: true)
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
