package com.deride.enums

enum RideType {
	OFFER("Offer", 0, "com.deride.ridetype.offer"),
	REQUEST("Request", 1, "com.deride.ridetype.request")

    String name
	int id
	String code

	RideType(String name, int id, String code){
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

	public static List<RideType> list() {
		return values()
	}
}
