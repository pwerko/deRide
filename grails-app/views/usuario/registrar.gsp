<html>
	<head>
		<title>Registrar Usuario</title>
		<meta name="layout" content="login"/>
	</head>
	<body>
		<g:render template="/header" model="[hideLogin: true]"/>
		<div class="sign-up-overlay register" style="display: block;">
			<div class="sign-up module">
			  	<g:link controller="main" action="index" class="deride-logo"></g:link>
			  	<g:render template="/login/signup"/>
				<g:render template="/login/register"/>
				<g:render template="/login/done"/>
				<g:render template="/login/login"/>
				<g:render template="/login/recover"/>
			</div>
		</div>
		<div class="contentContainer"></div>
		<g:render template="/footer" />
	</body>
</html>

