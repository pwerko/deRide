package com.deride

import java.text.Normalizer

class Tag implements Serializable{

	static mapping = {
		cache true
	 }

	String name
	String slug

	static hasMany = [contents: Content]
	static belongsTo = Content

    static constraints = {
    	name(nullable: false)
    	slug(nullable: false, unique: true)
    }

    String toString (){
		"$name"
	}

	static String generateSlug(String name) {

		// lower case
		String slug = name.toLowerCase()

		// replace spaces
		slug = slug.replaceAll("\\s+", " ")
		slug = slug.replaceAll(" ", "-")

		// replace special characters
		slug = slug.replaceAll("[+.^°:,'´`¡!|&]", "")

		// normalize accents
		slug = Normalizer.normalize(slug, Normalizer.Form.NFD).replaceAll("\\p{IsM}", "")

		return slug
	}

}
