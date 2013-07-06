package com.deride

import com.deride.enums.WidgetType

class WidgetTagLib {

	static namespace = "widget"

	def all = { attrs, body ->
		log.debug "all() -- $attrs"
		displayAllWidgets(session, attrs, body)
	}

	def ads = { attrs, body ->
		log.debug "ads() -- $attrs"
		displayAllWidgets(session, attrs, body)
	}

	private void displayAllWidgets(session, attrs, body) {
		log.debug "displayAllWidgets()"
		def wg
		switch (attrs?.type) {
			case WidgetType.AD_WIDGET:
				displayGoogleAd(wg, attrs)
				break
			case WidgetType.SUBSCRIBE_NOW:
				displaySubscribe(wg, attrs, currentSite)
				break
			case WidgetType.SOCIAL_MEDIA_WIDGET:
				displayFollowUs(wg, attrs)
				break
			case WidgetType.FACEBOOK_LIKE_BOX:
				displayFacebook(wg, attrs, session)
				break
			case WidgetType.CONTENT_RELATED_SLIDER:
                displayRelatedPostsLike(wg, attrs)
                break
            case WidgetType.SHARE_BAR:
                displayShareBar(wg, attrs)
                break
			default:
				break
		}
	}

	private void displayGoogleAd(wg, attrs) {

		if (!attrs?.idPrefix || !attrs?.htmlElement) {
			log.error "warning attributes where not inserted correctly: $attrs"
			return
		}
		out << render(template: "/widgets/widgetGoogleAds", model: [id: "${attrs['idPrefix'] + wg?.id}", type: "${attrs['htmlElement']}",
				style: "${attrs['style']}",
				className: "${attrs['className']}"])

	}

	private void displaySubscribe(wg, attrs) {
		out << render(template: "/widgets/widgetSubscribe")
	}

	private void displayFollowUs(wg, attrs) {
		out << render(template: "/widgets/widgetFollowUs")
	}

	private void displayFacebook(wg, body, session) {
		String url = "https://www.facebook.com/deRide"
		String locale = "es_MX"
		out << render(template: "/widgets/widgetFollowUsInFacebook", model: [width: wg?.width, height: wg?.height, address: url, locale: locale])
	}

    public void displayRelatedPostsLike(wg, attrs) {
        def widgetTitle = wg?.title
        out << render(template: "/widgets/widgetRelatedContentSlider", model: [widgetTitle: widgetTitle])
    }

    def displayShareBar (wg, attrs){
        out << render(template: "/widgets/widgetShareBar", model: [widgetTitle: wg?.title])
    }
}
