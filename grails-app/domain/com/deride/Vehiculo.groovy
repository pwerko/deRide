package com.deride

import com.deride.enums.*

class Vehiculo implements Serializable {

	String fabricante
	String modelo
	Integer year
	String license
	String color
	Boolean ac = false
	Double mileage
	Double emissions
	Integer seats = 0
	ConfortType confort = ConfortType.NORMAL
	VehicleType type
    Date dateCreated
    Date lastUpdated

    static belongsTo = [user:Usuario]

    static constraints = {
        fabricante(blank: false)
    	modelo(blank: false)
    	year(min: 1908, max: Calendar.instance.get(Calendar.YEAR))
    	license(nullable: true, blank: false)
    	color(nullable: true)
    	mileage(nullable: true, min: 0d)
    	emissions(nullable: true, , min: 0d)
    	seats(min: 0)
    	confort(nullable: true)
    	type(blank: false)
    }

    String toString() {
        "Vehículo ${fabricante} ${modelo} ${year}: user ${user.id}"
    }
}
