package com.deride

import pl.burningice.plugins.image.ast.DBImageContainer

@DBImageContainer(field = 'image')
class Paragraph implements Serializable{

	static mapping = {
		cache true
		text type: "text"
		headline type: "text"
	 }

	String headline
	String text
	String imageAlt

	static belongsTo = Content

    static constraints = {
    	headline(nullable: false)
    	text(nullable: false)
    	imageAlt(nullable: true)
    }

    String toString (){
		"$headline"
	}
}
