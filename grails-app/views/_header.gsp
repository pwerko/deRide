<div id="header">
	<div id="upperHeader">
		<div class="section">
			<div class="upper-header" style="width:20px;padding-bottom: 10px;" title=""></div>
			<g:link controller="main" style="color: black;"><div class="upper-header gradient logo" style="width:263px;" title=""><span class="slogan">La Mejor Forma Para Viajar En México</span></div></g:link>
			<div class="upper-header" style="width:251px;" title=""></div>
			<div class="upper-header" style="width:300px;" title="">
				<sec:ifNotGranted roles="ROLE_USER">
					<div id="loginInfo">
						<form name="simple_search" method="POST" action="${resource(file: 'j_spring_security_check')}">
							<div class="left">
								<g:field type="text" id="login_username" name="j_username" placeholder="Usuario" class="login_text complete-radius" autocomplete="off" />
								<g:field type="password" id="login_password" name="j_password" placeholder="Contraseña" class="login_text complete-radius" autocomplete="off" />
								<g:checkBox id="login_remember" name="_spring_security_remember_me" /><label for="login_remember">Recordarme</label>
							</div>
							<div id="submitDiv">
								<g:submitButton id="loginBtn" class="home-button-search" name="login" value="Entrar"/>
								<g:link id="registerBtn" class="home-button-search" action="usuario" controller="registrar">Registrar</g:link>
								<facebookAuth:connect />
							</div>
							<div id="registerDiv">
								<a href="#">¿Olvidaste tu contraseña?</a>
							</div>
						<form>
					</div>
				</sec:ifNotGranted>
				<sec:ifAllGranted roles="ROLE_USER">
					<div id="loginInfo">
						Bienvenido <span><sec:username/></span> (<g:link uri="/j_spring_security_logout" style="color: white;">Salir</g:link>)
					</div>
				</sec:ifAllGranted>
			</div>
		</div>
	</div>
	<div id="lowerHeader">
		<nav id="main" class="constrain clearfix">
			<div class="menu-top-container">
				<ul id="menu-top" class="menu">
					<li class="menu-item ${params.controller == 'main' && params.action == 'index'?'current':''}"><g:link controller="main" action="index">Inicio</g:link></li>
					<li class="menu-item ${params.controller == 'busqueda'?'current':''}"><g:link controller="busqueda">Buscar</g:link></li>
					<li class="menu-item ${params.controller == 'main' && params.action == 'ayuda'?'current':''}"><g:link controller="main" action="ayuda">Ayuda</g:link></li>
					<li class="menu-item ${params.controller == 'main' && params.action == 'autobuses'?'current':''}"><g:link controller="main" action="autobuses">Autobuses</g:link></li>
					<li class="menu-item ${params.controller == 'main' && params.action == 'registrarse'?'current':''}"><g:link controller="main" action="registro" style="color: yellow">Registrarse</g:link></li>
				</ul>
			</div>
			<div class="right">
				<!--div style="float: right;margin-top: 2px;"><div class="g-plusone" data-size="medium" data-recommendations="false" data-annotation="bubble" data-width="120" data-align="right" data-href="https://plus.google.com/u/0/103947006006824943588/posts"></div></div>
				<fb:like href="https://www.facebook.com/deRideComMx" send="false" layout="button_count" width="147" show_faces="false" font="tahoma" height="20" style="margin-top:2px;float: right;"></fb:like>
				<div-->
			</div>
		</nav>
	</div>
</div>

