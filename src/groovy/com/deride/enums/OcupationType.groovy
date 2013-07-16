package com.deride.enums

enum OcupationType {
	STUDENT("Student", 1, "com.deride.ocupationtype.student"),
	INTERN("Inter", 2, "com.deride.ocupationtype.intern"),
	WORKER("Worker", 3, "com.deride.ocupationtype.worker"),
	FREELANCER("Freelancer", 4, "com.deride.ocupationtype.freelancer"),
	RETIRED("Retired", 5, "com.deride.ocupationtype.retired"),
	UNEMPLOYED("Unemployed", 6, "com.deride.ocupationtype.unemployed"),
	OTHER("Other", 7, "com.deride.ocupationtype.other")


    String name
	int id
	String code

	OcupationType(String name, int id, String code){
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

	public static List<OcupationType> list() {
		return values()
	}
}
