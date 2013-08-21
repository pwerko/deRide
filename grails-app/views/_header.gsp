<div id="header">
	<div id="upperHeader">
		<div class="section">
			<div id="logo" class="upper-header" style="width:534px;" title=""><g:link controller="main" style="color: black;"/></div>
			<div class="upper-header" style="width:300px;" title="">
				<g:if test="${!hideLogin}">
				<sec:ifNotLoggedIn>
					<div id="loginInfo">
						<form name="simple_search" method="POST" action="${resource(file: 'j_spring_security_check')}">
							<div class="left">
								<g:field type="text" id="login_username" name="j_username" placeholder="Usuario" class="login_text complete-radius" autocomplete="off" />
								<g:field type="password" id="login_password" name="j_password" placeholder="Contraseña" class="login_text complete-radius" autocomplete="off" />
								<g:checkBox id="login_remember" name="_spring_security_remember_me" /><label for="login_remember">Recordarme</label>
							</div>
							<div id="submitDiv">
								<g:submitButton name="login" class="button button-primary button-large" style="" value="Entrar"/>
								<p class="menu-separator"><span>o</span></p>
								<a id="login-button-login-fb" class="button button-facebook js-facebook-login" href="j_spring_security_facebook_redirect">
							        <div class="icon-wrap">
							          <i class="icon icon-fb"></i>
							        </div>
							    	<em class="text">Entrar</em>
							    </a>
							</div>
							<div id="registerDiv">
								<g:link class="forgetPass" controller="usuario" action="recuperar">¿Olvidaste tu contraseña?</g:link>
							</div>
						<form>
					</div>
				</sec:ifNotLoggedIn>
				<sec:ifLoggedIn>
					<!--div id="loginInfo">
					</div-->
					<ul id="accountPane" class="nav pull-right">
					<li class="dropdown user-profile">
						<div class="welcomeText">
							<span class="welcome">Bienvenido,</span>
							<span class="username firstname"><usersec:loggedInUsuarioInfo field="name"/></span>
						</div>

						<a data-toggle="dropdown" class="dropdown-toggle" href="#" onclick="toggleUserMenu();">
							<sec:ifAllGranted roles="ROLE_FACEBOOK">
								<img alt="${usersec.loggedInUsuarioInfo(field: 'email')}" src="http://graph.facebook.com/${usersec.loggedInUsuarioInfo(field: 'lastName')}/picture"/>
							</sec:ifAllGranted>
							<sec:ifNotGranted roles="ROLE_FACEBOOK">
								<usersec:hasImage>
									<usersec:img alt="${usersec.loggedInUsuarioInfo(field: 'email')}" size="small" width="50" height="50"/>
								</usersec:hasImage>
								<usersec:hasNoImage>
									<g:img alt="${usersec.loggedInUsuarioInfo(field: 'email')}" folder="images" file="default_user.png" width="50" height="50" style="background-color:#F1F1F1;-webkit-border-radius: 4px;-moz-border-radius: 4px;border-radius: 4px;"/>
								</usersec:hasNoImage>
							</sec:ifNotGranted>
							<b class="caret"></b>
						</a>

						<ul class="dropdown-menu" style="display: none;">
							<div class="up-arrow"></div>
							<li class="profileBtn">
								<a href="#" onclick="toggleUserMenu();"><span class="icon-item-myprofile"><i class="icon-chevron-right pull-right"></i></span>Mi Perfil</a>
							</li>
							<li class="rideBtn">
								<a href="#" onclick="toggleUserMenu();"><span class="icon-item-travel"><i class="icon-chevron-right pull-right"></i></span>Mis Viajes</a>
							</li>
							<li class="alertsBtn">
								<a href="#" onclick="toggleUserMenu();"><span class="icon-item-alerts"><i class="icon-chevron-right pull-right"></i></span>Mis Alertas</a>
							</li>
							<!--li class="opinionsBtn">
								<a href="#" onclick="toggleUserMenu();"><span class="icon-item-opinions"><i class="icon-chevron-right pull-right"></i></span>Mis Opiniones</a>
							</li-->
							<li class="logoutBtn">
								<g:link class="no-ajaxy menu-item-logout" uri="/j_spring_security_logout" onclick="toggleUserMenu();"><span class="icon-item-logout"><i class="icon-chevron-right pull-right"></i></span>Salir</g:link>
							</li>
						</ul>
					</li>
					</ul>
				</sec:ifLoggedIn>
				</g:if>
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
					<li class="menu-item ${params.controller == 'usuario' && params.action == 'registrar'?'current':''}"><g:link controller="usuario" action="registrar" style="color: yellow">Registrarse</g:link></li>
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

