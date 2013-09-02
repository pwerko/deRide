				<section class="signup-select" style="display: none;">
				  	<form action="/usuario/registrar" method="post" id="js-register-with-facebook" novalidate="novalidate"><div class="is-hidden ajax-spinner"></div>
				    	<div class="content">
				      		<div data-error="¡Vaya! Algo ha salido mal. Int&eacute;ntalo de nuevo o visita nuestra &lt;a href=&quot;/ayuda/&quot;&gt;zona de ayuda&lt;/a&gt;." class="alert alert-info is-hidden" id="js-general-error"></div>
			      			<a id="select-button-signup-fb" class="button button-facebook js-signup-fb" href="#">
			        		<div class="icon-wrap">
			          			<i class="icon icon-fb"></i>
			        		</div>
			        			<em class="text">Regístrate con Facebook</em></a>
			      			<strong class="line-thru">o</strong>

			      			<a id="select-link-signup-email" onclick="showRegister();" class="primary js-link" href="#">
			        			Regístrate con tu dirección de email</a>
			      			<p class="primary">
			        			¿Ya tienes una cuenta?
			        			<a href="#" onclick="toggleSignup();" class="js-link" id="select-link-login">Iniciar sesión</a>
			      			</p>
				    	</div>
				    	<div class="terms-endcap">
				      		<fieldset>
						        <ul>
						          	<li id="li-terms-notick">
						            	<p class="notice">Al hacer click en Regístrate, aceptas los <a target="_blank" href="/tdu">términos de uso</a> y la <a target="_blank" href="/aviso_legal">política de privacidad.</a></p>
						          	</li>
						        </ul>
				      		</fieldset>
				    	</div>
				  	</form>
				</section>
