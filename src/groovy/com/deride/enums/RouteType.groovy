package com.deride.enums

enum RouteType {
	FREE("Free", 0, "com.deride.routetype.free"),
	TOLL("Toll", 1, "com.deride.routetype.toll")

    String name
	int id
	String code

	RouteType(String name, int id, String code){
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

	public static List<RouteType> list() {
		return values()
	}
}
