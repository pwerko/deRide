package com.deride.enums

enum TitleType {
	MR("Offer", 1, "com.deride.titletype.mr"),
	MRS("Request", 2, "com.deride.titletype.mrs")

    String name
	int id
	String code

	TitleType(String name, int id, String code){
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

	public static List<TitleType> list() {
		return values()
	}
}
