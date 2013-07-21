package com.deride

class RideService {

	static transactional = true
	static scope = "session"

    def getLatestRides() {
    	log.debug "Retrieving the latest 10 rides from the DB"
    	def rides = Ride.listOrderByDateCreated(max: 7, order: "desc")

    	return rides
    }
}
