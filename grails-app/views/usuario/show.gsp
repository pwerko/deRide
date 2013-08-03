
<%@ page import="com.deride.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="usuario.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${usuarioInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="usuario.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.titleType}">
				<li class="fieldcontain">
					<span id="titleType-label" class="property-label"><g:message code="usuario.titleType.label" default="Title Type" /></span>
					
						<span class="property-value" aria-labelledby="titleType-label"><g:fieldValue bean="${usuarioInstance}" field="titleType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="usuario.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${usuarioInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="usuario.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${usuarioInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="usuario.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${usuarioInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuario.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="usuario.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${usuarioInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.mobPhone}">
				<li class="fieldcontain">
					<span id="mobPhone-label" class="property-label"><g:message code="usuario.mobPhone.label" default="Mob Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobPhone-label"><g:fieldValue bean="${usuarioInstance}" field="mobPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.street}">
				<li class="fieldcontain">
					<span id="street-label" class="property-label"><g:message code="usuario.street.label" default="Street" /></span>
					
						<span class="property-value" aria-labelledby="street-label"><g:fieldValue bean="${usuarioInstance}" field="street"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="usuario.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${usuarioInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="usuario.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${usuarioInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="usuario.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${usuarioInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="usuario.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${usuarioInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.birthday}">
				<li class="fieldcontain">
					<span id="birthday-label" class="property-label"><g:message code="usuario.birthday.label" default="Birthday" /></span>
					
						<span class="property-value" aria-labelledby="birthday-label"><g:formatDate date="${usuarioInstance?.birthday}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.ocupation}">
				<li class="fieldcontain">
					<span id="ocupation-label" class="property-label"><g:message code="usuario.ocupation.label" default="Ocupation" /></span>
					
						<span class="property-value" aria-labelledby="ocupation-label"><g:fieldValue bean="${usuarioInstance}" field="ocupation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.maritalStatus}">
				<li class="fieldcontain">
					<span id="maritalStatus-label" class="property-label"><g:message code="usuario.maritalStatus.label" default="Marital Status" /></span>
					
						<span class="property-value" aria-labelledby="maritalStatus-label"><g:fieldValue bean="${usuarioInstance}" field="maritalStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.lastLogin}">
				<li class="fieldcontain">
					<span id="lastLogin-label" class="property-label"><g:message code="usuario.lastLogin.label" default="Last Login" /></span>
					
						<span class="property-value" aria-labelledby="lastLogin-label"><g:formatDate date="${usuarioInstance?.lastLogin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.languages}">
				<li class="fieldcontain">
					<span id="languages-label" class="property-label"><g:message code="usuario.languages.label" default="Languages" /></span>
					
						<span class="property-value" aria-labelledby="languages-label"><g:fieldValue bean="${usuarioInstance}" field="languages"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.newsLetter}">
				<li class="fieldcontain">
					<span id="newsLetter-label" class="property-label"><g:message code="usuario.newsLetter.label" default="News Letter" /></span>
					
						<span class="property-value" aria-labelledby="newsLetter-label"><g:formatBoolean boolean="${usuarioInstance?.newsLetter}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.emailAlerts}">
				<li class="fieldcontain">
					<span id="emailAlerts-label" class="property-label"><g:message code="usuario.emailAlerts.label" default="Email Alerts" /></span>
					
						<span class="property-value" aria-labelledby="emailAlerts-label"><g:formatBoolean boolean="${usuarioInstance?.emailAlerts}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.emailFormat}">
				<li class="fieldcontain">
					<span id="emailFormat-label" class="property-label"><g:message code="usuario.emailFormat.label" default="Email Format" /></span>
					
						<span class="property-value" aria-labelledby="emailFormat-label"><g:fieldValue bean="${usuarioInstance}" field="emailFormat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.vehicle}">
				<li class="fieldcontain">
					<span id="vehicle-label" class="property-label"><g:message code="usuario.vehicle.label" default="Vehicle" /></span>
					
						<span class="property-value" aria-labelledby="vehicle-label"><g:link controller="vehiculo" action="show" id="${usuarioInstance?.vehicle?.id}">${usuarioInstance?.vehicle?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="usuario.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${usuarioInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="usuario.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${usuarioInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="usuario.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${usuarioInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.emailConfirm}">
				<li class="fieldcontain">
					<span id="emailConfirm-label" class="property-label"><g:message code="usuario.emailConfirm.label" default="Email Confirm" /></span>
					
						<span class="property-value" aria-labelledby="emailConfirm-label"><g:formatBoolean boolean="${usuarioInstance?.emailConfirm}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="usuario.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${usuarioInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.facebookConnect}">
				<li class="fieldcontain">
					<span id="facebookConnect-label" class="property-label"><g:message code="usuario.facebookConnect.label" default="Facebook Connect" /></span>
					
						<span class="property-value" aria-labelledby="facebookConnect-label"><g:formatBoolean boolean="${usuarioInstance?.facebookConnect}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="usuario.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${usuarioInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.mobPhoneConfirm}">
				<li class="fieldcontain">
					<span id="mobPhoneConfirm-label" class="property-label"><g:message code="usuario.mobPhoneConfirm.label" default="Mob Phone Confirm" /></span>
					
						<span class="property-value" aria-labelledby="mobPhoneConfirm-label"><g:formatBoolean boolean="${usuarioInstance?.mobPhoneConfirm}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="usuario.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${usuarioInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.rides}">
				<li class="fieldcontain">
					<span id="rides-label" class="property-label"><g:message code="usuario.rides.label" default="Rides" /></span>
					
						<g:each in="${usuarioInstance.rides}" var="r">
						<span class="property-value" aria-labelledby="rides-label"><g:link controller="ride" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.smoker}">
				<li class="fieldcontain">
					<span id="smoker-label" class="property-label"><g:message code="usuario.smoker.label" default="Smoker" /></span>
					
						<span class="property-value" aria-labelledby="smoker-label"><g:formatBoolean boolean="${usuarioInstance?.smoker}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${usuarioInstance?.id}" />
					<g:link class="edit" action="edit" id="${usuarioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
