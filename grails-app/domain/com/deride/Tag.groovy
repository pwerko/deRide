package com.deride

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
    }

    String toString (){
		"$name"
	}

}
