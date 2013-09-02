				<section class="register form" style="display: none;">
				  	<div class="content">
				    	<h2 class="title">Regístrate con tu dirección de email</h2>
				    	<form action="/usuario/registrar" method="post" id="js-register-with-email" novalidate="novalidate"><div class="is-hidden ajax-spinner"></div>
					    	<fieldset>
						        <ul>
							        <li>
							            <label for="register-username" class="is-visually-hidden">Nombre de usuario:</label>
							            <input style="width: 235px;" type="text" autocorrect="off" autocomplete="off" autocapitalize="off" maxlength="50" data-msg-remote="Lo sentimos, ese nombre de usuario no está disponible." data-rule-remote="/mx/xhr/json/isUsernameAvailable.php" data-msg-minlength="Tu nombre de usuario es muy corto." data-rule-minlength="4" data-msg-required="Por favor elige un nombre de usuario." required="" placeholder="Nombre de usuario" name="username" id="register-username">
							        </li>
							        <li>
							            <label for="register-password" class="is-visually-hidden">Contraseña:</label>
							            <input style="width: 235px;" type="password" autocomplete="off" maxlength="100" data-msg-minlength="Tu contraseña es demasiado corta." data-rule-minlength="4" data-msg-required="Por favor elige una contraseña." required="" placeholder="Contraseña" name="password" id="register-password">
							        </li>
							        <li>
							            <label for="register-email" class="is-visually-hidden">Email:</label>
							            <input style="width: 235px;" type="email" maxlength="100" data-msg-remote="Lo sentimos, este correo ya está registrado." data-rule-remote="/mx/xhr/json/isEmailAvailable.php" data-msg-email="La dirección de email que proporcionaste no es válida." data-msg-required="Por favor introduce tu email." required="" placeholder="Email" name="email" id="register-email">
							        </li>
						          	<li>
							            <label for="register-confirm-email" class="is-visually-hidden">Confirmar email:</label>
							            <input style="width: 235px;" type="email" maxlength="100" data-msg-equalto="La dirección de email no coincide." data-rule-equalto="#register-email" data-msg-email="La dirección de email que proporcionaste no es válida." data-msg-required="Por favor confirma tu email." required="" placeholder="Confirmar email" name="confirm_email" id="register-confirm-email">
						          	</li>
		          					<li data-error-age="Lo sentimos, para crear una cuenta debes tener al menos trece años." class="controls-dob" id="li-dob">
		            					<label for="register-age">Fecha de nacimiento:</label>
		            					<div class="register-dob" id="register-dob">
											<div class="controls controls-day">
		  										<input style="width: 30px;" type="number" data-msg-max="Por favor introduce un día válido del mes." data-msg-min="Por favor introduce un día válido del mes." data-msg-number="Por favor introduce un día válido del mes." data-msg-required="¿Cuándo naciste?" required="" max="31" min="1" maxlength="2" pattern="[0-9]*" placeholder="día" name="dob_day" class="dob" id="register-dob-day">
											</div>
											<div class="controls controls-month">
				  								<select style="width: 117px" data-msg-required="¿Cuándo naciste?" required="" name="dob_month" class="dob" id="register-dob-month">
				    								<option disabled="" selected="" value="">Mes</option>
				    								<option value="01">enero</option>
												    <option value="02">febrero</option>
												    <option value="03">marzo</option>
												    <option value="04">abril</option>
												    <option value="05">mayo</option>
												    <option value="06">junio</option>
												    <option value="07">julio</option>
												    <option value="08">agosto</option>
												    <option value="09">septiembre</option>
												    <option value="10">octubre</option>
												    <option value="11">noviembre</option>
												    <option value="12">diciembre</option>
				  								</select>
											</div>
											<div class="controls controls-year">
												<input style="width: 40px;" type="number" data-msg-min="Por favor introduce un año válido." data-msg-number="Por favor introduce un año válido." data-msg-required="¿Cuándo naciste?" required="" max="2000" min="1900" maxlength="4" pattern="[0-9]*" placeholder="año" name="dob_year" class="dob" id="register-dob-year">
											</div>
		    							</div>
		          					</li>

							        <li id="li-gender">
							            <label class="is-visually-hidden">Sexo:</label>
							            <label class="radio control-inline" for="register-male">
							            <input type="radio" data-msg-required="Por favor indica tu género." required="" value="male" name="gender" class="gender" id="register-male">
							                Masculino              </label>

							            <label class="radio control-inline" for="register-female">
							            <input type="radio" data-msg-required="Por favor indica tu género." required="" value="female" name="gender" class="gender" id="register-female">
							                Femenino              </label>
							        </li>

							        <li id="li-terms-notick">
							            <p class="notice">Al hacer click en Regístrate, aceptas los <a target="_blank" href="/tdu">términos de uso</a> y la <a target="_blank" href="/aviso_legal">política de privacidad.</a></p>
							        </li>
						        </ul>
						    </fieldset>
						    <button class="button button-primary js-signup-email-submit" type="submit" id="register-button-email-submit">Registrarse</button>
						</form>
					    <p class="primary">
					      ¿Ya tienes una cuenta? <a href="#" onclick="showLogin();" class="js-link" id="register-link-login">Iniciar sesión</a>
					    </p>
			  		</div>
				</section>
