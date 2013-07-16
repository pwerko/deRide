package com.deride.enums

enum VehicleType {
	COMPACT("Compact", 1, "com.deride.vehicletype.compact"),
	SEDAN("Sedan", 2, "com.deride.vehicletype.sedan"),
	TRUCK("Truck", 3, "com.deride.vehicletype.truck"),
	SUV("SUV", 4, "com.deride.vehicletype.suv"),
	VAN("Van", 5, "com.deride.vehicletype.van"),
	LOAD("Load", 6, "com.deride.vehicletype.load"),
	OTHER("Other", 7, "com.deride.vehicletype.other")


    String name
	int id
	String code

	VehicleType(String name, int id, String code){
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

	public static List<VehicleType> list() {
		return values()
	}
}
