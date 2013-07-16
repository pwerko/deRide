package com.deride.enums

enum LuggageSize {
	ANY("Any", 0, "com.deride.luggageSize.any"),
	SMALL("Small", 1, "com.deride.luggageSize.small"),
	MEDIUM("Medium", 2, "com.deride.luggageSize.medium"),
	LARGE("Large", 3, "com.deride.luggageSize.large")

    String name
	int id
	String code

	LuggageSize(String name, int id, String code){
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

	public static List<LuggageSize> list() {
		return values()
	}
}
