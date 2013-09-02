				<section class="password-reset" style="display: none;">
				  	<div class="content">
					    <h2 class="title">Recuperar contraseña</h2>
					    <p class="secondary">Proporciona la <b>dirección de correo electrónico</b> que usaste para registrarte. Te enviaremos un mensaje con tu nombre de usuario y un enlace para restablecer tu contraseña.</p>

					    <p class="msg primary"></p>

					    <form action="/mx/xhr/json/reset-password.php" method="post" id="js-password-reset-form" novalidate="novalidate"><div class="is-hidden ajax-spinner"></div>
					      	<fieldset>
						        <ul>
						          <li>
						            <label for="password-reset" class="is-visually-hidden">Dirección de correo electrónico:</label>
						            <input style="width: 235px;" type="text" name="email" data-msg-required="Por favor introduce tu email." autocorrect="off" autocomplete="off" autocapitalize="off" required="" id="password-reset" placeholder="Dirección de correo electrónico">
						          </li>
						        </ul>
					      	</fieldset>
					      	<button class="button button-primary" type="submit" id="password-button-password-submit">Enviar</button>
					    </form>

					    <a onclick="toggleRecover();" class="primary back-link js-link" href="#" id="password-link-login">« Ir atrás</a>
					    <p class="primary">
					      Si aún necesitas ayuda, manda un email a <a href="mailto:contacto@deride.com.mx">contacto@deride.com.mx</a> y con gusto te ayudarémos.</p>
				  	</div>
				</section>
