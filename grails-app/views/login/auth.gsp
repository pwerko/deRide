<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'auth.css')}" type="text/css">
</head>

<body>
<div id="login" class="login login-action-login wp-core-ui">
	<h1><g:link controller="main" action="index" title="">De Ride</g:link></h1>
	<g:if test='${flash.message}'>
		<p class="message">${flash.message}<br></p>
	</g:if>

	<form action='${postUrl}' method='POST' id='loginForm' class='cssform register' autocomplete='off'>
		<a id="login-button-login-fb" class="button button-facebook js-facebook-login" href="${resource(file: 'j_spring_security_facebook_redirect')}">
        	<div class="icon-wrap">
          		<i class="icon icon-fb"></i>
        	</div>
        	<em class="text">Inicia con Facebook</em>
  		</a>
  		<strong class="line-thru">o</strong>
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
			<input type="submit" style="font-size: 0.9375em;" id="submit" class="button button-primary button-large" value="${message(code: "springSecurity.login.button")}">
		</p>
	    <p class="primary">
	    	<a class="primary js-link" href="#" id="login-link-password">¿Olvidaste tu contraseña?</a>
	    	¿No tienes cuenta? <a class="js-link" href="#" id="login-link-signup-email">Registráte</a>
	    </p>
	</form>
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
