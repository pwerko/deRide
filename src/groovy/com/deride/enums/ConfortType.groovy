package com.deride.enums

enum ConfortType {
	BASIC("Basic", 1, "com.deride.conforttype.basic"),
	NORMAL("Normal", 2, "com.deride.conforttype.normal"),
	LUXURIOUS("Luxurious", 3, "com.deride.conforttype.luxurious")

    String name
	int id
	String code

	ConfortType(String name, int id, String code){
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

	public static List<ConfortType> list() {
		return values()
	}
}
