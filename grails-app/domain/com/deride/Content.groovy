package com.deride

import com.deride.enums.*

class Content implements Serializable {

	String introText
	Date dateCreated
	Date lastUpdated
	Date lastEdited
	String author
	String robots
	String title
	String seoTitle
	String metaDescription
	String focusKeyword
	Boolean sitewide
	String slug
	String imageUrl
	String imageLink
	String imageAlt
	ContentStatus status = ContentStatus.DRAFT

	static mapping = {
		//paragraphs cache: true

		introText type: "text"
		metaDescription type: "text"
		focusKeyword type: "text"
	}

	/* Relations */
	static hasMany = [paragraphs: Paragraph, tags: Tag]

    static constraints = {
		author(nullable: false)
		title(nullable: false)
		dateCreated(display: true)
		lastEdited(nullable: true)
		slug(nullable: false)
		introText(nullable: false)
		focusKeyword(nullable: true)
		tags(nullable: true)
		paragraphs(nullable: true)
		imageUrl(nullable: false)
		imageLink(nullable: false)
		seoTitle(nullable: true)
		metaDescription(nullable: true)
		imageAlt(nullable: true)
		robots(nullable: true)
		sitewide(nullable: true)
		status(nullable: false)
    }

	String toString (){
		"Content ${id} with title '${title}'"
	}

}

