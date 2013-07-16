package com.deride.enums

enum DetourType {
	NONE("None", 0, "com.deride.detourtype.none"),
	MINIMAL("Minimal", 1, "com.deride.detourtype.minimal"),
	MEDIUM("Medium", 2, "com.deride.detourtype.medium"),
	FLEXIBLE("Flexible", 3, "com.deride.detourtype.adaptable")


    String name
	int id
	String code

	DetourType(String name, int id, String code){
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

	public static List<DetourType> list() {
		return values()
	}
}
