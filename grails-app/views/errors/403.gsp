<!doctype html>
<html>
	<head>
		<title><g:message code="springSecurity.denied.title" /></title>
		<meta name="layout" content="error">
	</head>
	<body>
		<g:render template="/header" model="['hideLogin': true]"/>
		<div class="contentContainer" style="min-height: 500px;">
			<p>&nbsp;<g:img style="display: block; margin-left: auto; margin-right: auto;" alt="500" dir="images" file="403.png" height="380" width="570" /></p>
			<h2 style="margin: 0;">... intenta proporcionando las credenciales válidas.</h2>
		</div>
	</body>
</html>
