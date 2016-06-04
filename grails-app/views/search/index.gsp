<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
        <title>Search results</title>
    </head>
    <body>
	<g:if test="${flash.message}">
	<div class="message" role="status">${flash.message}</div>
	</g:if>
	
	<g:if test="${searchResult.size() > 0}">
	   	<g:each in="${searchResult}" var="item">
			<p><g:link controller="item" action="show" id="${item.id}">${item.name}</g:link> is in <g:link controller="box" action="show" id="${item.box.id}">${item.box}</g:link>
		</g:each>
	</g:if>
	<g:else>
	   Nothing found
	</g:else>
	


    </body>
</html>