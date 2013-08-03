package com.deride

class Tag implements Serializable{

	static mapping = {
		cache true
		metaDescription type: "text"
	 }

	String name
	String slug
	String seoTitle
	String metaDescription

	static hasMany = [contents: Content]
	static belongsTo = Content

    static constraints = {
    	name(nullable: false)
    }
}
