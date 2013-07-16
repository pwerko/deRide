package com.deride.enums

enum MaritalStatus {
	SINGLE("Single", 1, "com.deride.maritalstatus.single"),
	MARRIED("Married", 2, "com.deride.maritalstatus.married"),
	DIVORCED("Divorced", 3, "com.deride.maritalstatus.divorced")

    String name
	int id
	String code

	MaritalStatus(String name, int id, String code){
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

	public static List<MaritalStatus> list() {
		return values()
	}
}
