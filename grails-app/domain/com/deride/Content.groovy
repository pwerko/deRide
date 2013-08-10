package com.deride

import com.deride.enums.*
import pl.burningice.plugins.image.ast.DBImageContainer
import java.text.Normalizer

@DBImageContainer(field = 'image')
class Content implements Serializable {

	String introText
	Date dateCreated
	Date lastUpdated
	String author
	String robots
	String title
	String seoTitle
	String metaDescription
	String focusKeyword
	Boolean sitewide
	String slug
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
		slug(nullable: false, unique:true)
		introText(nullable: false)
		focusKeyword(nullable: true)
		tags(nullable: true)
		paragraphs(nullable: true)
		imageLink(nullable: true)
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

	static String generateSlug(String name) {

		// lower case
		String slug = name.toLowerCase()

		// replace spaces
		slug = slug.replaceAll("\\s+", " ")
		slug = slug.replaceAll(" ", "-")

		// replace special characters
		slug = slug.replaceAll("[+.^°:,'´`¡!|&]", "")

		// normalize accents
		slug = Normalizer.normalize(slug, Normalizer.Form.NFD).replaceAll("\\p{IsM}", "")

		return slug
	}
}
