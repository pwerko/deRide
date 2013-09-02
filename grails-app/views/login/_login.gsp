				<section class="login show" style="display: display;">
					<div class="content">
					    <form action="${resource(file: 'j_spring_security_facebook_redirect')}" method="post" id="js-login-form-facebook" novalidate="novalidate"><div class="is-hidden ajax-spinner"></div>
					      	<a id="login-button-login-fb" class="button button-facebook js-facebook-login" href="#">
					        	<div class="icon-wrap">
					          		<i class="icon icon-fb"></i>
					        	</div>
					        	<em class="text">Inicia con Facebook</em>
				      		</a>
					    </form>

					    	<strong class="line-thru">o</strong>

					    <form method="POST" action="${resource(file: 'j_spring_security_check')}" id="js-login-form-email" novalidate="novalidate"><div class="is-hidden ajax-spinner"></div>
					      	<fieldset>
						        <ul>
						          	<li>
							          	<g:if test="${params.error && params.error_description}">
							            	<label for="login-button-login-fb" class="has-error"><g:message code="springSecurity.errors.login.${params.error}" default="${params.error_description}" />.</label>
							        	</g:if>
							            <label for="login-username" class="is-visually-hidden">Nombre de usuario:</label>
							            <input type="text" class="${params.error?'has-error':''}" style="width: 235px;" autocorrect="off" autocomplete="off" autocapitalization="off" name="user_name" data-msg-required="Por favor introduce tu nombre de usuario." required="" id="login-username" placeholder="Nombre de usuario">
						          	</li>
						          	<li>
							            <label for="login-password" class="is-visually-hidden">Contraseña:</label>
							            <input type="password" class="${params.error?'has-error':''}" style="width: 235px;" name="password" data-msg-required="Por favor introduce tu contraseña." required="" id="login-password" placeholder="Contraseña">
						          	</li>
					        	</ul>
					      	</fieldset>
					      	<button class="button button-primary" type="submit" id="login-button-login-submit">Iniciar sesión</button>
					    </form>

					    <a onclick="toggleRecover();" class="primary js-link" href="#" id="login-link-password">¿Olvidaste tu contraseña?</a>

					    <p class="primary">¿No tienes cuenta? <a onclick="toggleSignup();" class="js-link" href="#" id="login-link-signup-email">Registráte</a>
					    </p>
				  	</div>
				</section>
