package com.deride

import com.deride.enums.*
import java.util.Calendar
import grails.util.Environment

class BootStrapService {

    def runBootstrapActions() {
        createAdminUsers()
        Environment.executeForCurrentEnvironment {
            development {
                createUsuarios()
                createVehiculo()
                createRides()
                createContent()
            }
        }
    }

    def createAdminUsers() {
        def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
        def facebookRole = SecRole.findByAuthority('ROLE_FACEBOOK') ?: new SecRole(authority: 'ROLE_FACEBOOK').save(failOnError: true)
        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
        def operatorRole = SecRole.findByAuthority('ROLE_OPER') ?: new SecRole(authority: 'ROLE_OPER').save(failOnError: true)

        Environment.executeForCurrentEnvironment {
            development {
                def adminUser = Usuario.findByUsername('sergio') ?: new Usuario(
                    username: 'sergio',
                    name: 'Admin',
                    password: 'test',
                    email: "sergio@deride.com.mx",
                    enabled: true).save(failOnError: true)

                if (!adminUser.authorities.contains(adminRole)) {
                    AppUserSecRole.create adminUser, adminRole
                    AppUserSecRole.create adminUser, operatorRole
                }
            }
            production {
                def adminUser = Usuario.findByUsername('admin') ?: new Usuario(
                    username: 'admin',
                    name: 'Admin',
                    password: 'J]wTbUeFAK',
                    email: "admin@deride.com.mx",
                    enabled: true).save(failOnError: true)

                if (!adminUser.authorities.contains(adminRole)) {
                    AppUserSecRole.create adminUser, adminRole
                }

                def operatorUser = Usuario.findByUsername('operator') ?: new Usuario(
                    username: 'operator',
                    name: 'Operator',
                    password: 'XCSz$W$C(V',
                    email: "operator@deride.com.mx",
                    enabled: true).save(failOnError: true)

                if (!operatorUser.authorities.contains(operatorRole)) {
                    AppUserSecRole.create operatorUser, adminRole
                    AppUserSecRole.create operatorUser, operatorRole
                }
            }
        }
    }

    def createUsuarios() {
    	def user1 = new Usuario(
    		name: "Sergio",
            lastName: "Gonzalez",
            username: "sgonzalez",
            password: "test",
            gender: GenderType.MALE,
            email: "pwerko@hotmail.com",
            enabled: true
    	).save([failOnError: true, validate: true])
        AppUserSecRole.create user1, SecRole.findByAuthority('ROLE_USER')

        def user2 =  new Usuario(
            name: "Salvador",
            lastName: "Restelli",
            username: "salvador",
            password: "test",
            gender: GenderType.MALE,
            email: "salvador.restelli@me.com",
            enabled: true
        ).save([failOnError: true, validate: true])
        AppUserSecRole.create user2, SecRole.findByAuthority('ROLE_USER')
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

    def createContent() {
        def content = new Content(
            introText: 'Viajar es una actividad que a todo mundo le gusta y más cuando se hace con verdaderos expertos en la transportación que te permiten disfrutar del paisaje de la carretera a bordo de una unidad segura y confortable, como es el caso de autobuses Senda, ¿quieres conocerlos mejor? ¡Aquí está la información!',
            author: 'Erik Oropeza',
            robots: 'INDEX, FOLLOW',
            title: 'Autobuses Senda',
            seoTitle: 'Autobuses Senda ¡Las Mejores Ofertas!',
            metaDescription: 'Autobuses Senda: ¿Viajas al norte del país? Hazlo con Autobuses Senda, sólo ellos te ofrecen viajes gratis y otras promos, mira aquí!',
            focusKeyword: 'autobuses senda',
            sitewide: false,
            slug: 'autobuses-senda',
            imageAlt: 'Autobuses Senda',
            status: ContentStatus.PUBLISHED
        )

        def paragraph1 = new Paragraph(
            headline: 'Una línea terrestre con amplia cobertura',
            text: 'Autobuses Senda busca conectar las principales ciudades de México y Estados Unidos a través de su red de transporte que incluye destinos en estados como: Aguascalientes, Durango, Chihuahua, Jalisco, Nuevo León, Tamaulipas y Zacatecas. \
                   En Estados Unidos los estados también son varios como: Alabama, Giorgia, Ilinois, Louisiana, Carolina del Norte y del Sur, Tenesse y hasta Texas, con ellos hasta te puedes ir de shopping al otro lado, ¿verdad que está genial?',
            imageAlt: 'imagen1'
        )
        content.addToParagraphs(paragraph1)

        def paragraph2 = new Paragraph(
            headline: 'Nuevo León es su especialidad',
            text: 'Si tienes que viajar al norte del país pero temes que no te ofrezcan un servicio de calidad, entonces, debes saber que la especialidad de autobuses Senda es el estado de Nuevo León, lo conocen a la perfección y te brindan una gran variedad de corridas y  el mejor de los tratos en cualquiera de los puntos más importantes de esta hermoso estado.',
            imageAlt: 'imagen1'
        )
        content.addToParagraphs(paragraph2)

        def paragraph3 = new Paragraph(
            headline: '¡Promociones todo el año!',
            text: 'En esta empresa saben perfectamente que uno de los mayores atractivos que le gusta a cualquier cliente son las promociones y es por eso que constantemente autobuses Senda tiene las mejores para ti, como por ejemplo: paquetes de hotel y transportación al mejor precio, ninguna agencia de viajes te la podrá igualar. \
                   Además te ofrece el 10% de descuento en la compra de boletos a través de su portal de Internet, es por tiempo limitado, así que tienes que aprovecharla ya mismo.',
            imageAlt: 'imagen1'
        )
        content.addToParagraphs(paragraph3)

        def paragraph4 = new Paragraph(
            headline: '¡Sólo con ellos tendrás viajes gratis!',
            text: 'Autobuses Senda es la única empresa en el país que tiene su propia tarjeta de lealtad llamada Senda amigo, a través de la cual con cada viaje que realices irás acumulando puntos que los podrás canjear por promociones especiales en establecimientos afiliados o hasta viajes gratis, ¿así o más conveniente?',
            imageAlt: 'imagen1'
        )
        content.addToParagraphs(paragraph4)

        def tag = new Tag(
            name: 'autobuses',
            slug: 'autobuses'
        )

        content.addToTags(tag)

        content.save([failOnError: true, validate: true])
    }

}
