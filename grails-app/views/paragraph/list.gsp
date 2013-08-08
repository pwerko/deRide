
<%@ page import="com.deride.Paragraph" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paragraph.label', default: 'Paragraph')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-paragraph" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-paragraph" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="headline" title="${message(code: 'paragraph.headline.label', default: 'Headline')}" />
					
						<g:sortableColumn property="text" title="${message(code: 'paragraph.text.label', default: 'Text')}" />
					
						<g:sortableColumn property="imageAlt" title="${message(code: 'paragraph.imageAlt.label', default: 'Image Alt')}" />
					
						<th><g:message code="paragraph.biImage.label" default="Bi Image" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${paragraphInstanceList}" status="i" var="paragraphInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${paragraphInstance.id}">${fieldValue(bean: paragraphInstance, field: "headline")}</g:link></td>
					
						<td>${fieldValue(bean: paragraphInstance, field: "text")}</td>
					
						<td>${fieldValue(bean: paragraphInstance, field: "imageAlt")}</td>
					
						<td>${fieldValue(bean: paragraphInstance, field: "biImage")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${paragraphInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
