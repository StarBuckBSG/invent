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
	
	
	<g:if test="${query == null || query.length() == 0}">
	Welcome to the inventory system
	</g:if>
	<g:else>
		<g:if test="${searchResult.size() > 0}">
			<div class="bg-success">
				<p class="search-result-header">Search for '${query}' returned ${searchResult.size()} ${searchResult.size() ==1? 'item' : 'items'} :</p>
			</div>
						
			<table class="table table-striped">
	  		   	<g:each in="${searchResult}" var="item">
					 <tr>
					 	<td style='padding:10px 1px 10px 30px'>
					 		<g:link controller="item" action="show" id="${item.id}">${item.name}</g:link> is in <g:link controller="box" action="show" id="${item.box.id}">${item.box}</g:link>
					 	</td>
					</tr>
				</g:each>
		   </table>
		</g:if>
		<g:else>
		   Nothing found
		</g:else>
		
	</g:else>
	
	

	


    </body>
</html>