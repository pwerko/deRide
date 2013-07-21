package com.deride

import com.deride.enums.*
import java.util.Calendar

class BootStrapService {

    def runBootstrapActions() {
    	createUsuario()
		createVehiculo()
		createRides()
    }

    def createUsuario() {
    	new Usuario(
    		name: "Sergio",
            lastName: "Gonzalez",
            username: "sgonzalez",
            gender: GenderType.MALE,
            email: "pwerko@hotmail.com"
    	).save([failOnError: true, validate: true])

        new Usuario(
            name: "Salvador",
            lastName: "Restelli",
            username: "salvador",
            gender: GenderType.MALE,
            email: "salvador.restelli@me.com"
        ).save([failOnError: true, validate: true])
    }

    def createVehiculo() {
        def usuario = Usuario.findByUsername("sgonzalez")

    	def vehicle = new Vehiculo(
            user: usuario,
            fabricante: "Seat",
            modelo: "Leon",
            year: "2013",
            license: "JYL2318",
            color: "Negro",
            seats: 3,
            confort: ConfortType.NORMAL,
            type: VehicleType.COMPACT
        ).save([failOnError: true, validate: true])
    }

    def createRides() {
        def cal = Calendar.instance
        def i = 1
        cal.add(Calendar.DAY_OF_MONTH, i++)
        def usuario = Usuario.findByUsername("sgonzalez")
        def usuario1 = Usuario.findByUsername("salvador")

    	new Ride(
            creator: usuario,
            type: RideType.OFFER,
            origin: "Guadalajara, México",
            originLat: 30.453,
            originLong: -130.2344,
            destination: "México D.F.",
            destinationLat: 45.3432,
            destinationLong: -100.034,
            date: cal.getTime(),
            price: 35,
            seats: 3,
            luggageSize: LuggageSize.MEDIUM
        ).save([failOnError: true, validate: true])
        cal.add(Calendar.DAY_OF_MONTH, i++)
        new Ride(
            creator: usuario1,
            type: RideType.OFFER,
            origin: "Tijuana, México",
            originLat: 30.453,
            originLong: -130.2344,
            destination: "Ensenada, México",
            destinationLat: 45.3432,
            destinationLong: -100.034,
            date: cal.getTime(),
            price: 35,
            seats: 3,
            luggageSize: LuggageSize.MEDIUM
        ).save([failOnError: true, validate: true])
        cal.add(Calendar.DAY_OF_MONTH, i++)
        new Ride(
            creator: usuario,
            type: RideType.OFFER,
            origin: "Monterrey, México",
            originLat: 30.453,
            originLong: -130.2344,
            destination: "Saltillo, México",
            destinationLat: 45.3432,
            destinationLong: -100.034,
            date: cal.getTime(),
            price: 35,
            seats: 3,
            luggageSize: LuggageSize.MEDIUM
        ).save([failOnError: true, validate: true])
        cal.add(Calendar.DAY_OF_MONTH, i++)
        new Ride(
            creator: usuario1,
            type: RideType.REQUEST,
            origin: "Puebla, México",
            originLat: 30.453,
            originLong: -130.2344,
            destination: "México D.F.",
            destinationLat: 45.3432,
            destinationLong: -100.034,
            date: cal.getTime(),
            price: 35,
            seats: 3,
            luggageSize: LuggageSize.MEDIUM
        ).save([failOnError: true, validate: true])
        cal.add(Calendar.DAY_OF_MONTH, i++)
        new Ride(
            creator: usuario,
            type: RideType.OFFER,
            origin: "Veracruz, México",
            originLat: 30.453,
            originLong: -130.2344,
            destination: "México D.F.",
            destinationLat: 45.3432,
            destinationLong: -100.034,
            date: cal.getTime(),
            price: 35,
            seats: 3,
            luggageSize: LuggageSize.MEDIUM
        ).save([failOnError: true, validate: true])
        cal.add(Calendar.DAY_OF_MONTH, i++)
        new Ride(
            creator: usuario,
            type: RideType.OFFER,
            origin: "Cancún, México",
            originLat: 30.453,
            originLong: -130.2344,
            destination: "Mérida, México",
            destinationLat: 45.3432,
            destinationLong: -100.034,
            date: cal.getTime(),
            price: 35,
            seats: 3,
            luggageSize: LuggageSize.MEDIUM
        ).save([failOnError: true, validate: true])
        cal.add(Calendar.DAY_OF_MONTH, i++)
        new Ride(
            creator: usuario1,
            type: RideType.REQUEST,
            origin: "Oaxaca, México",
            originLat: 30.453,
            originLong: -130.2344,
            destination: "Masunte, México",
            destinationLat: 45.3432,
            destinationLong: -100.034,
            date: cal.getTime(),
            price: 35,
            seats: 3,
            luggageSize: LuggageSize.MEDIUM
        ).save([failOnError: true, validate: true])
        cal.add(Calendar.DAY_OF_MONTH, i++)
        new Ride(
            creator: usuario,
            type: RideType.OFFER,
            origin: "Tlaxcala, México",
            originLat: 30.453,
            originLong: -130.2344,
            destination: "Querétaro, México",
            destinationLat: 45.3432,
            destinationLong: -100.034,
            date: cal.getTime(),
            price: 35,
            seats: 3,
            luggageSize: LuggageSize.MEDIUM
        ).save([failOnError: true, validate: true])
        cal.add(Calendar.DAY_OF_MONTH, i++)
        new Ride(
            creator: usuario1,
            type: RideType.REQUEST,
            origin: "San Cristóbal, México",
            originLat: 30.453,
            originLong: -130.2344,
            destination: "Palenque, México",
            destinationLat: 45.3432,
            destinationLong: -100.034,
            date: cal.getTime(),
            price: 35,
            seats: 3,
            luggageSize: LuggageSize.MEDIUM
        ).save([failOnError: true, validate: true])
        cal.add(Calendar.DAY_OF_MONTH, i++)
        new Ride(
            creator: usuario,
            type: RideType.REQUEST,
            origin: "Los Cabos, México",
            originLat: 30.453,
            originLong: -130.2344,
            destination: "La Paz, México",
            destinationLat: 45.3432,
            destinationLong: -100.034,
            date: cal.getTime(),
            price: 35,
            seats: 3,
            luggageSize: LuggageSize.MEDIUM
        ).save([failOnError: true, validate: true])
        cal.add(Calendar.DAY_OF_MONTH, i++)
        new Ride(
            creator: usuario,
            type: RideType.OFFER,
            origin: "Puerto Vallarta, México",
            originLat: 30.453,
            originLong: -130.2344,
            destination: "Mazatlán, México",
            destinationLat: 45.3432,
            destinationLong: -100.034,
            date: cal.getTime(),
            price: 35,
            seats: 3,
            luggageSize: LuggageSize.MEDIUM
        ).save([failOnError: true, validate: true])
    }
}
