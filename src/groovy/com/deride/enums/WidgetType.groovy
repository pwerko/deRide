package com.deride.enums

enum WidgetType {
	ALL("All", 0, "com.deride.widgettype.all"),
	AD_WIDGET("Ad", 1, "com.deride.widgettype.ad_widget"),
	FACEBOOK_LIKE_BOX("Facebook", 2, "com.deride.widgettype.facebook"),
	SOCIAL_MEDIA_WIDGET("Social Media", 3, "com.deride.widgettype.social_media"),
	SUBSCRIBE_NOW("Subscribe Now", 4, "com.deride.widgettype.subscribe_now"),
	CONTENT_RELATED_SLIDER("Content Related", 5, "com.deride.widgettype.content_related"),
    SHARE_BAR("Share", 6, "com.deride.widgettype.share_bar")

    String name
	int id
	String code

	WidgetType(String name, int id, String code){
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

	public static List<WidgetType> list() {
		return values()
	}
}
