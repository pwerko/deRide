
<%@ page import="com.deride.Paragraph" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paragraph.label', default: 'Paragraph')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-paragraph" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-paragraph" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list paragraph">

				<g:if test="${paragraphInstance?.headline}">
				<li class="fieldcontain">
					<span id="headline-label" class="property-label"><g:message code="paragraph.headline.label" default="Headline" /></span>

						<span class="property-value" aria-labelledby="headline-label"><g:fieldValue bean="${paragraphInstance}" field="headline"/></span>

				</li>
				</g:if>

				<g:if test="${paragraphInstance?.text}">
				<li class="fieldcontain">
					<span id="text-label" class="property-label"><g:message code="paragraph.text.label" default="Text" /></span>

						<span class="property-value" aria-labelledby="text-label"><g:fieldValue bean="${paragraphInstance}" field="text"/></span>

				</li>
				</g:if>

				<g:if test="${paragraphInstance?.imageAlt}">
				<li class="fieldcontain">
					<span id="imageAlt-label" class="property-label"><g:message code="paragraph.imageAlt.label" default="Image Alt" /></span>

						<span class="property-value" aria-labelledby="imageAlt-label"><g:fieldValue bean="${paragraphInstance}" field="imageAlt"/></span>

				</li>
				</g:if>

				<bi:hasImage bean="${paragraphInstance}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="paragraph.image.label" default="Image" /></span>
			    	<span class="property-value" aria-labelledby="image-label"><bi:img size="large" bean="${paragraphInstance}" /></span>
			    </li>
				</bi:hasImage>

			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${paragraphInstance?.id}" />
					<g:link class="edit" action="edit" id="${paragraphInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
