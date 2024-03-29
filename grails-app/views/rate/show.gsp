
<%@ page import="kennelpal.Rate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kpMain">
		<g:set var="entityName" value="${message(code: 'rate.label', default: 'Rate')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/user/home')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-rate" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rate">
			
				<g:if test="${rateInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="rate.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${rateInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rateInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="rate.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${rateInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rateInstance?.reservations}">
				<li class="fieldcontain">
					<span id="reservations-label" class="property-label"><g:message code="rate.reservations.label" default="Reservations" /></span>
					
						<g:each in="${rateInstance.reservations}" var="r">
						<span class="property-value" aria-labelledby="reservations-label"><g:link controller="reservation" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${rateInstance?.id}" />
					<g:link class="edit" action="edit" id="${rateInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
