package com.deride

import com.deride.enums.*

class Ride implements Serializable {

	Usuario creator
	RideType type = RideType.OFFER
	String origin
	Double originLat
	Double originLong
	String destination
	Double destinationLat
	Double destinationLong
    Date dateCreated
    Date lastUpdated
	Date date
	Double price = 0
	Integer seats = 0
	LuggageSize luggageSize = LuggageSize.ANY
	DetourType detour = DetourType.NONE
	RouteType routeType = RouteType.FREE
	Boolean smokingAllowed = false
	Boolean musicAllowed = true
	Boolean exclusiveWomen = false
	Date duration

	static belongsTo = Usuario

	static hasMany = [users: Usuario]

    static constraints = {
        dateCreated(display: true)
    	creator(nullable: false)
    	type(nullable: false)
    	origin(nullable: false, blank: false)
    	originLat(nullable: false)
    	originLong(nullable: false)
    	destination(nullable: false, blank: false)
    	destinationLat(nullable: false)
    	destinationLong(nullable: false)
    	date(nullable: false)
    	price(nullable: false, min: 0d)
    	seats(nullable: false, min: 1)
    	luggageSize(nullable:false)
    	smokingAllowed(nullable: true)
    	musicAllowed(nullable: true)
    	detour(nullable: true)
    	duration(nullable: true)
    	routeType(nullable:true)
    	exclusiveWomen(nullable: true)
    }

    String toString() {
        "Ride ${id} from ${origin} to ${destination}: creator ${creator.id}"
    }
}
