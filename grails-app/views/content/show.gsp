
<%@ page import="com.deride.Content" %>
<!DOCTYPE html>
<html>
	<head>
		<title>${contentInstance.seoTitle}</title>
		<meta name="description" content="${contentInstance.metaDescription}"/>
		<meta name="layout" content="main">
	</head>
	<body>
		<g:render template="/header" />
		<div id='mainDiv' class="contentContainer">
			<div id="show-content" class="content scaffold-show" role="main">
				<h1>${contentInstance?.title}</h1>
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<ol class="property-list content">

					<g:if test="${contentInstance?.author}">
					<li class="fieldcontain">
						<span id="author-label" class="property-label"><g:message code="content.author.label" default="Author" /></span>

							<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${contentInstance}" field="author"/></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.title}">
					<li class="fieldcontain">
						<span id="title-label" class="property-label"><g:message code="content.title.label" default="Title" /></span>

							<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${contentInstance}" field="title"/></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.dateCreated}">
					<li class="fieldcontain">
						<span id="dateCreated-label" class="property-label"><g:message code="content.dateCreated.label" default="Date Created" /></span>

							<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${contentInstance?.dateCreated}" /></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.slug}">
					<li class="fieldcontain">
						<span id="slug-label" class="property-label"><g:message code="content.slug.label" default="Slug" /></span>

							<span class="property-value" aria-labelledby="slug-label"><g:fieldValue bean="${contentInstance}" field="slug"/></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.introText}">
					<li class="fieldcontain">
						<span id="introText-label" class="property-label"><g:message code="content.introText.label" default="Intro Text" /></span>

							<span class="property-value" aria-labelledby="introText-label"><g:fieldValue bean="${contentInstance}" field="introText"/></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.focusKeyword}">
					<li class="fieldcontain">
						<span id="focusKeyword-label" class="property-label"><g:message code="content.focusKeyword.label" default="Focus Keyword" /></span>

							<span class="property-value" aria-labelledby="focusKeyword-label"><g:fieldValue bean="${contentInstance}" field="focusKeyword"/></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.tags}">
					<li class="fieldcontain">
						<span id="tags-label" class="property-label"><g:message code="content.tags.label" default="Tags" /></span>

							<g:each in="${contentInstance.tags}" var="t">
							<span class="property-value" aria-labelledby="tags-label"><g:link controller="tag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
							</g:each>

					</li>
					</g:if>

					<g:if test="${contentInstance?.paragraphs}">
					<li class="fieldcontain">
						<span id="paragraphs-label" class="property-label"><g:message code="content.paragraphs.label" default="Paragraphs" /></span>

							<g:each in="${contentInstance.paragraphs}" var="p">
							<span class="property-value" aria-labelledby="paragraphs-label"><g:link controller="paragraph" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
							</g:each>

					</li>
					</g:if>


					<g:if test="${contentInstance?.seoTitle}">
					<li class="fieldcontain">
						<span id="seoTitle-label" class="property-label"><g:message code="content.seoTitle.label" default="Seo Title" /></span>

							<span class="property-value" aria-labelledby="seoTitle-label"><g:fieldValue bean="${contentInstance}" field="seoTitle"/></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.metaDescription}">
					<li class="fieldcontain">
						<span id="metaDescription-label" class="property-label"><g:message code="content.metaDescription.label" default="Meta Description" /></span>

							<span class="property-value" aria-labelledby="metaDescription-label"><g:fieldValue bean="${contentInstance}" field="metaDescription"/></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.robots}">
					<li class="fieldcontain">
						<span id="robots-label" class="property-label"><g:message code="content.robots.label" default="Robots" /></span>

							<span class="property-value" aria-labelledby="robots-label"><g:fieldValue bean="${contentInstance}" field="robots"/></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.sitewide}">
					<li class="fieldcontain">
						<span id="sitewide-label" class="property-label"><g:message code="content.sitewide.label" default="Sitewide" /></span>

							<span class="property-value" aria-labelledby="sitewide-label"><g:formatBoolean boolean="${contentInstance?.sitewide}" /></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.status}">
					<li class="fieldcontain">
						<span id="status-label" class="property-label"><g:message code="content.status.label" default="Status" /></span>

							<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${contentInstance}" field="status"/></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.lastUpdated}">
					<li class="fieldcontain">
						<span id="lastUpdated-label" class="property-label"><g:message code="content.lastUpdated.label" default="Last Updated" /></span>

							<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${contentInstance?.lastUpdated}" /></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.imageLink}">
					<li class="fieldcontain">
						<span id="imageLink-label" class="property-label"><g:message code="content.imageLink.label" default="Image Link" /></span>

							<span class="property-value" aria-labelledby="imageLink-label"><g:fieldValue bean="${contentInstance}" field="imageLink"/></span>

					</li>
					</g:if>

					<g:if test="${contentInstance?.imageAlt}">
					<li class="fieldcontain">
						<span id="imageAlt-label" class="property-label"><g:message code="content.imageAlt.label" default="Image Alt" /></span>

							<span class="property-value" aria-labelledby="imageAlt-label"><g:fieldValue bean="${contentInstance}" field="imageAlt"/></span>

					</li>
					</g:if>

					<bi:hasImage bean="${contentInstance}">
					<li class="fieldcontain">
						<span id="image-label" class="property-label"><g:message code="content.image.label" default="Image" /></span>
				    	<span class="property-value" aria-labelledby="image-label"><bi:img size="large" bean="${contentInstance}" /></span>
				    </li>
					</bi:hasImage>
				</ol>
				<g:form>
					<fieldset class="buttons">
						<g:hiddenField name="id" value="${contentInstance?.id}" />
						<g:link class="edit" action="edit" id="${contentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
			</div>
		</div>
		<g:render template="/footer" />
	</body>
</html>
