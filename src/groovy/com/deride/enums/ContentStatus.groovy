package com.deride.enums

public enum ContentStatus {

	REMOVED("Removed", 0, "com.deride.contentstatus.removed"),
	DRAFT("Draft", 1, "com.deride.contentstatus.draft"),
	PUBLISHED("Published", 2, "com.deride.contentstatus.published")

	String name
	int id
	String code

	ContentStatus(String name, int id, String code){
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
		return this.list().find {it.name.toLowerCase() == value.toLowerCase()}
	}

	public static findById(int value) {
		return this.list().find {it.id == value}
	}

	public static findByCode(String value) {
		return list().find {it.id == value}
	}

	public static List<ContentStatus> list() {
		return this.values()
	}
}
