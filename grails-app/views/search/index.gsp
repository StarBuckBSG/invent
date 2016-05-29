<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

Search page


	<g:if test="${flash.message}">
	<div class="message" role="status">${flash.message}</div>
	</g:if>
	
	<fieldset class="form">
	    <g:form action="index" method="GET">
	        <div class="fieldcontain">
	            <label for="query">Search:</label>
	            <g:textField name="query" value="${params.query}"/>
	        </div>
	    </g:form>
	</fieldset>
	
	
	<g:each in="${searchResult}" var="item">
	
	<p><g:link controller="item" action="show" id="${item.id}">${item.name}</g:link> is in <g:link controller="box" action="show" id="${item.box.id}">${item.box}</g:link>
   		
	</g:each>
	
	

    </body>
</html>