<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'box.label', default: 'Box')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="/box/create" class="btn btn-primary" >New box</a>
        
        <div id="list-box" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${boxList}" />

            <div class="pagination">
                <g:paginate total="${boxCount ?: 0}" />
            </div>
        </div>
    </body>
</html>