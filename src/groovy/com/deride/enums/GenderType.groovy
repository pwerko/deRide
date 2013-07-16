package com.deride.enums

enum GenderType {
	MALE("Male", 1, "com.deride.gendertype.male"),
	FEMALE("Female", 2, "com.deride.gendertype.female")

    String name
	int id
	String code

	GenderType(String name, int id, String code){
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

	public static List<GenderType> list() {
		return values()
	}
}
