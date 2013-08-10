<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
	<style type='text/css' media='screen'>
		body.login {
			background: #fbfbfb;
			min-width: 0;
		}

		.login form,
		#login_error,
		.login .message {
			-webkit-border-radius: 3px;
			border-radius: 3px;
			border-width: 1px;
			border-style: solid;
		}

		h2 .nav-tab,
		.wrap h2,
		.subtitle,
		.login form .input {
			font-family: "Telex", "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", sans-serif;
		}

		/* login */

		.login * {
			margin: 0;
			padding: 0;
		}

		.login form {
			margin-left: 8px;
			padding: 26px 24px 46px;
			font-weight: normal;
			background: #fff;
			border: 1px solid #e5e5e5;
			-webkit-box-shadow: rgba(200, 200, 200, 0.7) 0px 4px 10px -1px;
			box-shadow: rgba(200, 200, 200, 0.7) 0px 4px 10px -1px;
		}

		.login form .forgetmenot {
			font-weight: normal;
			float: left;
			margin-bottom: 0;
		}

		.login .button-primary {
			float: right;
		}

		#login form p {
			margin-bottom: 0;
		}

		#login form p.submit {
			padding: 0;
		}

		.login label {
			color: #777;
			font-size: 14px;
		}

		.login form .forgetmenot label {
			font-size: 12px;
			line-height: 19px;
		}

		.login h1 a {
			background-image: url('../images/wordpress-logo.png?ver=20120216');
			background-size: 274px 63px;
			background-position: top center;
			background-repeat: no-repeat;
			width: 326px;
			height: 67px;
			text-indent: -9999px;
			outline: none;
			overflow: hidden;
			padding-bottom: 15px;
			display: block;
		}

		#login {
			width: 320px;
			padding: 114px 0 0;
			margin: auto;
		}

		#login_error,
		.login .message {
			margin: 0 0 16px 8px;
			padding: 12px;
		}

		.login #nav,
		.login #backtoblog {
			text-shadow: #fff 0 1px 0;
			margin: 0 0 0 16px;
			padding: 16px 16px 0;
		}

		#backtoblog {
			padding: 12px 16px 0;
		}

		.login form .input,
		.login input[type="text"] {
			color: #555;
			font-weight: 200;
			font-size: 24px;
			line-height: 1;
			width: 100%;
			padding: 3px;
			margin-top: 2px;
			margin-right: 6px;
			margin-bottom: 16px;
			border: 1px solid #e5e5e5;
			background: #fbfbfb;
			outline: none;
			-webkit-box-shadow: inset 1px 1px 2px rgba(200, 200, 200, 0.2);
			box-shadow: inset 1px 1px 2px rgba(200, 200, 200, 0.2);
		}

		.login #pass-strength-result {
			width: 250px;
			font-weight: bold;
			border-style: solid;
			border-width: 1px;
			margin: 12px 0 6px;
			padding: 6px 5px;
			text-align: center;
		}

		.mobile #login {
			padding: 20px 0;
		}

		.mobile #login form,
		.mobile #login .message,
		.mobile #login_error {
			margin-left: 0;
		}

		.mobile #login #nav,
		.mobile #login #backtoblog {
			margin-left: 8px;
		}

		.mobile #login h1 a {
			width: auto;
		}

		body.interim-login {
			height: auto;
		}

		.interim-login #login {
			padding: 0;
			margin: 5px auto 20px;
		}

		.interim-login.login h1 a {
			width: auto;
		}

		.interim-login #login_error,
		.interim-login.login .message {
			margin: 0 0 16px;
		}

		.interim-login.login form {
			margin: 0;
		}

		.button.right, .button-secondary.right, .button-primary.right {
			float: right;
		}

		.button.button-large,  .button-group.button-large .button {
			height: 30px;
			line-height: 28px;
			padding: 0 12px 2px;
		}

		.button,  .button-primary,  .button-secondary {
		    -moz-box-sizing: border-box;
		    border-radius: 3px 3px 3px 3px;
		    border-style: solid;
		    border-width: 1px;
		    cursor: pointer;
		    display: inline-block;
		    font-size: 12px;
		    height: 24px;
		    line-height: 23px;
		    margin: 0;
		    padding: 0 10px 1px;
		    text-decoration: none;
		    white-space: nowrap;
		}

		.button-primary.hover,  .button-primary:hover,  .button-primary.focus,  .button-primary:focus {
			background-color: #278ab7;
			background-image: -webkit-gradient(linear,left top,left bottom,from(#2e9fd2),to(#21759b));
			background-image: -webkit-linear-gradient(top,#2e9fd2,#21759b);
			background-image: -moz-linear-gradient(top,#2e9fd2,#21759b);
			background-image: -ms-linear-gradient(top,#2e9fd2,#21759b);
			background-image: -o-linear-gradient(top,#2e9fd2,#21759b);
			background-image: linear-gradient(to bottom,#2e9fd2,#21759b);
			border-color: #1b607f;
			-webkit-box-shadow: inset 0 1px 0 rgba(120,200,230,0.6);
			box-shadow: inset 0 1px 0 rgba(120,200,230,0.6);
			color: #fff;
			text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
		}

		.button-primary.active,  .button-primary:active {
			background-color: #2e9fd2;
			background-image: -webkit-gradient(linear,left top,left bottom,from(#21759b),to(#2e9fd2));
			background-image: -webkit-linear-gradient(top,#21759b,#2e9fd2);
			background-image: -moz-linear-gradient(top,#21759b,#2e9fd2);
			background-image: -ms-linear-gradient(top,#21759b,#2e9fd2);
			background-image: -o-linear-gradient(top,#21759b,#2e9fd2);
			background-image: linear-gradient(to bottom,#21759b,#2e9fd2);
			border-color: #1b607f;
			-webkit-box-shadow: inset 0 1px 0 rgba(120,200,230,0.6);
			box-shadow: inset 0 1px 0 rgba(120,200,230,0.6);
			color: #fff;
			text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
		}

		.button-primary {
			background-color: #21759b;
			background-image: -webkit-gradient(linear,left top,left bottom,from(#2a95c5),to(#21759b));
			background-image: -webkit-linear-gradient(top,#2a95c5,#21759b);
			background-image: -moz-linear-gradient(top,#2a95c5,#21759b);
			background-image: -ms-linear-gradient(top,#2a95c5,#21759b);
			background-image: -o-linear-gradient(top,#2a95c5,#21759b);
			background-image: linear-gradient(to bottom,#2a95c5,#21759b);
			border-color: #21759b;
			border-bottom-color: #1e6a8d;
			-webkit-box-shadow: inset 0 1px 0 rgba(120,200,230,0.5);
			box-shadow: inset 0 1px 0 rgba(120,200,230,0.5);
			color: #fff;
			text-decoration: none;
			text-shadow: 0 1px 0 rgba(0,0,0,0.1);
		}

		.login .button-primary {
			float: right;
		}
	</style>
</head>

<body>
<div id="login" class="login login-action-login wp-core-ui">
	<g:if test='${flash.message}'>
		<p class="message">${flash.message}<br></p>
	</g:if>

	<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
		<p>
			<label for="user_login"><g:message code="springSecurity.login.username.label"/>:<br>
			<input type="text" name="j_username" id="user_login" class="input" value="" size="20"></label>
		</p>
		<p>
			<label for="user_pass"><g:message code="springSecurity.login.password.label"/>:<br>
			<input type="password" name="j_password" id="user_pass" class="input" value="" size="20"></label>
		</p>
		<p class="forgetmenot"><label for="rememberme"><input name="${rememberMeParameter}" type="checkbox" id="rememberme" <g:if test='${hasCookie}'>checked='checked'</g:if>/>
		 <g:message code="springSecurity.login.remember.me.label"/></label></p>
		<p class="submit">
			<input type="submit" id="submit" class="button button-primary button-large" value="${message(code: "springSecurity.login.button")}">
		</p>
	</form>

	<p id="nav">
		<g:link rel="nofollow" action="registrar" controller="usuario">Registrarse</g:link> |
		<g:link action="restaurar" controller="usuario" title="Recupera tu contraseña perdida">¿Has perdido tu contraseña?</g:link>
	</p>
	<p id="backtoblog"><a href="http://www.deride.com.mx/" title="¿Te has perdido?">« Volver a De Ride</a></p>
</div>
<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
