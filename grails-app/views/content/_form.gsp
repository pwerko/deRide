<%@ page import="com.deride.Content" %>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'author', 'error')} ">
	<label for="author">
		<g:message code="content.author.label" default="Author" />

	</label>
	<g:textField name="author" value="${contentInstance?.author}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="content.title.label" default="Title" />

	</label>
	<g:textField name="title" value="${contentInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'slug', 'error')} ">
	<label for="slug">
		<g:message code="content.slug.label" default="Slug" />

	</label>
	<g:textField name="slug" value="${contentInstance?.slug}" disabled="disabled"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'introText', 'error')} ">
	<label for="introText">
		<g:message code="content.introText.label" default="Intro Text" />

	</label>
	<g:textArea name="introText" rows="5" cols="80" value="${contentInstance?.introText}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'focusKeyword', 'error')} ">
	<label for="focusKeyword">
		<g:message code="content.focusKeyword.label" default="Focus Keyword" />

	</label>
	<g:textField name="focusKeyword" value="${contentInstance?.focusKeyword}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'imageLink', 'error')} ">
	<label for="imageLink">
		<g:message code="content.imageLink.label" default="Image Link" />

	</label>
	<g:textField name="imageLink" value="${contentInstance?.imageLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'seoTitle', 'error')} ">
	<label for="seoTitle">
		<g:message code="content.seoTitle.label" default="Seo Title" />

	</label>
	<g:textField name="seoTitle" value="${contentInstance?.seoTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'metaDescription', 'error')} ">
	<label for="metaDescription">
		<g:message code="content.metaDescription.label" default="Meta Description" />

	</label>
	<g:textArea name="metaDescription" rows="5" cols="80" value="${contentInstance?.metaDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'imageAlt', 'error')} ">
	<label for="imageAlt">
		<g:message code="content.imageAlt.label" default="Image Alt" />

	</label>
	<g:textField name="imageAlt" value="${contentInstance?.imageAlt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'robots', 'error')} ">
	<label for="robots">
		<g:message code="content.robots.label" default="Robots" />

	</label>
	<g:select name="robots" from="${["FOLLOW","INDEX", "NOARCHIVE","NOFOLLOW","NOINDEX","NONE","NOODP","NOSNIPPET","NOYDIR","INDEX,FOLLOW","INDEX,NOFOLLOW","NOINDEX,NOFOLLOW","NOINDEX,FOLLOW"]}" required="" value="${contentInstance?.robots}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'sitewide', 'error')} ">
	<label for="sitewide">
		<g:message code="content.sitewide.label" default="Sitewide" />

	</label>
	<g:checkBox name="sitewide" value="${contentInstance?.sitewide}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="content.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${com.deride.enums.ContentStatus?.values()}" keys="${com.deride.enums.ContentStatus.values()*.name()}" required="" value="${contentInstance?.status?.name()}"/>
</div>

<div class="">
	<bi:hasImage bean="${contentInstance}">
	    <bi:img size="large" bean="${contentInstance}" />
	</bi:hasImage>
	<label for="image">
		<g:message code="content.image.label" default="Image" />
	</label>
	<g:field name="image" type="file"/>
</div>
<div id="paragraphs" class="paragraphs">
	<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'paragraphs', 'error')} ">
		<label for="paragraphs">
			<g:message code="content.paragraphs.label" default="Paragraphs" />
		</label>
		<g:select style="min-width:500px;" name="paragraphs" from="${com.deride.Paragraph.list()}" multiple="multiple" optionKey="id" size="5" value="${contentInstance?.paragraphs*.id}" class="one-to-many"/>
	</div>
</div>
<div id="tags" class="tags">
	<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'tags', 'error')} ">
		<label for="tags">
			<g:message code="content.tags.label" default="Tags" />
		</label>
		<g:select style="min-width:300px;" name="tags" from="${com.deride.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${contentInstance?.tags*.id}" class="many-to-many"/>
	</div>
	<div>
		<label for="newTags">
			<g:message code="content.add.tag.label" default="Add tags" />
		</label>
		<g:textField name="newTags" value=""/>
	</div>
</div>

