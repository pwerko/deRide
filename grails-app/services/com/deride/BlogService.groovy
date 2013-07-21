package com.deride

class BlogService {

	static transactional = true
	static scope = "session"

    def getLatestPosts() {
    	log.debug "Retrieving the latest 10 posts from the DB"
    	def posts = []//Content.listOrderByDateCreated(max: 7, order: "desc")
    	posts << [title: 'Mejores Destinos 2013.', briefing: 'Descrubre los mejores destinos<br/>para viajar en este 2013.']
    	posts << [title: 'Fiestas de Octubre.', briefing: 'Las tradicionales fiestas<br/> de Ocutbre al descubierto.']
    	posts << [title: 'Cervantino.', briefing: 'Los consejos a seguir para<br/> esta tradicional festival.']
    	posts << [title: 'Nuevas Rutas ETN.', briefing: 'Anuncia ETN sus nuevas<br/> rutas para este verano.']
    	posts << [title: 'Festivales de Verano.', briefing: 'Aquí encontrarás el listado <br/> de los mejores festivales<br/> para este verano']

    	return posts
    }
}
