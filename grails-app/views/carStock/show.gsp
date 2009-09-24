

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code:'carStock.label', default:'CarStock')}" />
        <title>Show ${entityName}</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">${entityName} List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New ${entityName}</g:link></span>
        </div>
        <div class="body">
            <h1>Show ${entityName}</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">
                               <g:message code="carStock.id.label" default="Id" />:
                            </td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carStockInstance, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">
                               <g:message code="carStock.brand.label" default="Brand" />:
                            </td>
                            
                            <td valign="top" class="value"><g:link controller="carBrand" action="show" id="${carStockInstance?.brand?.id}">${carStockInstance?.brand?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">
                               <g:message code="carStock.model.label" default="Model" />:
                            </td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carStockInstance, field:'model')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">
                               <g:message code="carStock.colour.label" default="Colour" />:
                            </td>
                            
                            <td valign="top" class="value"><g:link controller="colour" action="show" id="${carStockInstance?.colour?.id}">${carStockInstance?.colour?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">
                               <g:message code="carStock.gear.label" default="Gear" />:
                            </td>
                            
                            <td valign="top" class="value"><g:link controller="gear" action="show" id="${carStockInstance?.gear?.id}">${carStockInstance?.gear?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">
                               <g:message code="carStock.type.label" default="Type" />:
                            </td>
                            
                            <td valign="top" class="value"><g:link controller="carType" action="show" id="${carStockInstance?.type?.id}">${carStockInstance?.type?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">
                               <g:message code="carStock.engine.label" default="Engine" />:
                            </td>
                            
                            <td valign="top" class="value"><g:link controller="engine" action="show" id="${carStockInstance?.engine?.id}">${carStockInstance?.engine?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">
                               <g:message code="carStock.fuel.label" default="Fuel" />:
                            </td>
                            
                            <td valign="top" class="value"><g:link controller="fuel" action="show" id="${carStockInstance?.fuel?.id}">${carStockInstance?.fuel?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">
                               <g:message code="carStock.carRegistration.label" default="Car Registration" />:
                            </td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carStockInstance, field:'carRegistration')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${carStockInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
