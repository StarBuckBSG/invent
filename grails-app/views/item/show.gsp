<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-item" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            
            <ol class="property-list box">
    
		        <li class="fieldcontain">
		            <span id="itemNumber-label" class="property-label">Name</span>
		            <div class="property-value" aria-labelledby="itemNumber-label"><f:display bean="item" property="name" /></div>
		        </li>
		        
		       	<li class="fieldcontain">
		            <span id="itemNumber-label" class="property-label">Description</span>
		            <div class="property-value" aria-labelledby="itemNumber-label"><f:display bean="item" property="description" /></div>
		        </li>

		       	<li class="fieldcontain">
		            <span id="itemNumber-label" class="property-label">quantity</span>
		            <div class="property-value" aria-labelledby="itemNumber-label"><f:display bean="item" property="quantity" /></div>
		        </li>
		        
  		       	<li class="fieldcontain">
		            <span id="itemNumber-label" class="property-label">Our part number</span>
		            <div class="property-value" aria-labelledby="itemNumber-label"><f:display bean="item" property="ourPartNumber" /></div>
		        </li>
		        
		       	<li class="fieldcontain">
		            <span id="itemNumber-label" class="property-label">Manufacturer part number</span>
		            <div class="property-value" aria-labelledby="itemNumber-label"><f:display bean="item" property="manufacturerPartNumber" /></div>
		        </li>
		        
		        <li class="fieldcontain">
		            <span id="itemNumber-label" class="property-label">Suppliers part number</span>
		            <div class="property-value" aria-labelledby="itemNumber-label"><f:display bean="item" property="suppliersPartNumber" /></div>
		        </li>
		        
		       	<li class="fieldcontain">
		            <span id="itemNumber-label" class="property-label">Manufacturer name</span>
		            <div class="property-value" aria-labelledby="itemNumber-label"><f:display bean="item" property="manufacturerName" /></div>
		        </li>

		       	<li class="fieldcontain">
		            <span id="itemNumber-label" class="property-label">Model number</span>
		            <div class="property-value" aria-labelledby="itemNumber-label"><f:display bean="item" property="modelNumber" /></div>
		        </li>
		        
  		       	<li class="fieldcontain">
		            <span id="itemNumber-label" class="property-label">List price</span>
		            <div class="property-value" aria-labelledby="itemNumber-label"><f:display bean="item" property="listPrice" /></div>
		        </li>
		        
		       	<li class="fieldcontain">
		            <span id="itemNumber-label" class="property-label">Sell price</span>
		            <div class="property-value" aria-labelledby="itemNumber-label"><f:display bean="item" property="sellPrice" /></div>
		        </li>
		        
			</ol>
                     
            <g:form resource="${this.item}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.item}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
