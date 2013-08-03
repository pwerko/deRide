<%@ page import="com.deride.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuario.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="15" required="" value="${usuarioInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${usuarioInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'titleType', 'error')} ">
	<label for="titleType">
		<g:message code="usuario.titleType.label" default="Title Type" />
		
	</label>
	<g:select name="titleType" from="${com.deride.enums.TitleType?.values()}" keys="${com.deride.enums.TitleType.values()*.name()}" value="${usuarioInstance?.titleType?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="usuario.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${usuarioInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="usuario.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${usuarioInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="usuario.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${com.deride.enums.GenderType?.values()}" keys="${com.deride.enums.GenderType.values()*.name()}" required="" value="${usuarioInstance?.gender?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="usuario.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${usuarioInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'mobPhone', 'error')} ">
	<label for="mobPhone">
		<g:message code="usuario.mobPhone.label" default="Mob Phone" />
		
	</label>
	<g:textField name="mobPhone" value="${usuarioInstance?.mobPhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'street', 'error')} ">
	<label for="street">
		<g:message code="usuario.street.label" default="Street" />
		
	</label>
	<g:textField name="street" value="${usuarioInstance?.street}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'number', 'error')} ">
	<label for="number">
		<g:message code="usuario.number.label" default="Number" />
		
	</label>
	<g:textField name="number" value="${usuarioInstance?.number}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="usuario.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" value="${usuarioInstance?.zipCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="usuario.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${usuarioInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="usuario.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${usuarioInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'birthday', 'error')} ">
	<label for="birthday">
		<g:message code="usuario.birthday.label" default="Birthday" />
		
	</label>
	<g:datePicker name="birthday" precision="day"  value="${usuarioInstance?.birthday}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'ocupation', 'error')} ">
	<label for="ocupation">
		<g:message code="usuario.ocupation.label" default="Ocupation" />
		
	</label>
	<g:select name="ocupation" from="${com.deride.enums.OcupationType?.values()}" keys="${com.deride.enums.OcupationType.values()*.name()}" value="${usuarioInstance?.ocupation?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'maritalStatus', 'error')} ">
	<label for="maritalStatus">
		<g:message code="usuario.maritalStatus.label" default="Marital Status" />
		
	</label>
	<g:select name="maritalStatus" from="${com.deride.enums.MaritalStatus?.values()}" keys="${com.deride.enums.MaritalStatus.values()*.name()}" value="${usuarioInstance?.maritalStatus?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'lastLogin', 'error')} ">
	<label for="lastLogin">
		<g:message code="usuario.lastLogin.label" default="Last Login" />
		
	</label>
	<g:datePicker name="lastLogin" precision="day"  value="${usuarioInstance?.lastLogin}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'languages', 'error')} ">
	<label for="languages">
		<g:message code="usuario.languages.label" default="Languages" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'newsLetter', 'error')} ">
	<label for="newsLetter">
		<g:message code="usuario.newsLetter.label" default="News Letter" />
		
	</label>
	<g:checkBox name="newsLetter" value="${usuarioInstance?.newsLetter}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'emailAlerts', 'error')} ">
	<label for="emailAlerts">
		<g:message code="usuario.emailAlerts.label" default="Email Alerts" />
		
	</label>
	<g:checkBox name="emailAlerts" value="${usuarioInstance?.emailAlerts}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'emailFormat', 'error')} ">
	<label for="emailFormat">
		<g:message code="usuario.emailFormat.label" default="Email Format" />
		
	</label>
	<g:select name="emailFormat" from="${com.deride.enums.EmailType?.values()}" keys="${com.deride.enums.EmailType.values()*.name()}" value="${usuarioInstance?.emailFormat?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'vehicle', 'error')} ">
	<label for="vehicle">
		<g:message code="usuario.vehicle.label" default="Vehicle" />
		
	</label>
	<g:select id="vehicle" name="vehicle.id" from="${com.deride.Vehiculo.list()}" optionKey="id" value="${usuarioInstance?.vehicle?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="usuario.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${usuarioInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="usuario.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${usuarioInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'emailConfirm', 'error')} ">
	<label for="emailConfirm">
		<g:message code="usuario.emailConfirm.label" default="Email Confirm" />
		
	</label>
	<g:checkBox name="emailConfirm" value="${usuarioInstance?.emailConfirm}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="usuario.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${usuarioInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'facebookConnect', 'error')} ">
	<label for="facebookConnect">
		<g:message code="usuario.facebookConnect.label" default="Facebook Connect" />
		
	</label>
	<g:checkBox name="facebookConnect" value="${usuarioInstance?.facebookConnect}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'mobPhoneConfirm', 'error')} ">
	<label for="mobPhoneConfirm">
		<g:message code="usuario.mobPhoneConfirm.label" default="Mob Phone Confirm" />
		
	</label>
	<g:checkBox name="mobPhoneConfirm" value="${usuarioInstance?.mobPhoneConfirm}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="usuario.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${usuarioInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'rides', 'error')} ">
	<label for="rides">
		<g:message code="usuario.rides.label" default="Rides" />
		
	</label>
	<g:select name="rides" from="${com.deride.Ride.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.rides*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'smoker', 'error')} ">
	<label for="smoker">
		<g:message code="usuario.smoker.label" default="Smoker" />
		
	</label>
	<g:checkBox name="smoker" value="${usuarioInstance?.smoker}" />
</div>

