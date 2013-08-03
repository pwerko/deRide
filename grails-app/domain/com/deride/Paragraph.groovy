package com.deride

class Paragraph implements Serializable{

	static mapping = {
		cache true
		text type: "text"
		headline type: "text"
	 }

	String headline
	String text
	String image

	static belongsTo = Content

    static constraints = {
    	headline(nullable: false)
    	text(nullable: false)
    	image(nullable: true)
    }
}
