package com.deride.enums

enum EmailType {
	HTML("HTML", 1, "com.deride.emailtype.html"),
	TEXT("Text", 2, "com.deride.emailtype.text")

    String name
	int id
	String code

	EmailType(String name, int id, String code){
		this.name = name
		this.id = id
		this.code = code
	}

	public String getName() {
		return this.name
	}

	public int getValue() {
		return this.id
	}

	public String getCode() {
		return this.code
	}

	public static findByName(String value) {
		return list().find {it.name.toLowerCase() == value.toLowerCase()}
	}

	public static findById(int value) {
		return list().find {it.id == value}
	}

	public static findByCode(String value) {
		return list().find {it.id == value}
	}

	public static List<EmailType> list() {
		return values()
	}
}
