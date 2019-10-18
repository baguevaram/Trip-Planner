<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'trip.label', default: 'Trip')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-trip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div class="header-find ">
            <g:form action="find">
                <g:textField  name="find" class="find-field" value="find"/>
                <button type="submit" class="search-submit">Find<i class="fa fa-search fa-lg" ></i></button>
            </g:form>
        </div>
        <div id="list-trip" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                <tr>
                    <g:sortableColumn property="name" title="${message(code: 'Trip.name.label')}"></g:sortableColumn>
                    <g:sortableColumn property="airline" title="${message(code: 'Trip.airline.label')}"></g:sortableColumn>
                    <g:sortableColumn property="place" title="${message(code: 'Trip.place.label')}"></g:sortableColumn>
                </tr>
                </thead>
                <tbody>
                <g:each in="${somelist}" status="i" var="nameInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="nameInstance.id"> ${fieldValue(bean : nameInstance, field: "name")}</g:link></td>
                        <td>${fieldValue(bean: nameInstance, field: "airline")}</td>
                        <td>${fieldValue(bean: nameInstance, field: "name")}</td>
                    </tr>

                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${tripCount ?: 0}" />
            </div>
        </div>
%{--        <a href="#create-trip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--    --}%
%{--        <div class="nav" role="navigation">--}%
%{--            <ul>--}%
%{--                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
%{--                <li><g:link class="find" action="find"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--            </ul>--}%
%{--        </div>--}%

%{--        <div id="create-trip" class="content scaffold-create" role="main">--}%
%{--            <h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
%{--            <g:if test="${flash.message}">--}%
%{--                <div class="message" role="status">${flash.message}</div>--}%
%{--            </g:if>--}%
%{--            <g:hasErrors bean="${this.trip}">--}%
%{--                <ul class="errors" role="alert">--}%
%{--                    <g:eachError bean="${this.trip}" var="error">--}%
%{--                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
%{--                    </g:eachError>--}%
%{--                </ul>--}%
%{--            </g:hasErrors>--}%
%{--            <g:form resource="${this.trip}" method="POST">--}%
%{--                <fieldset class="form">--}%
%{--                    <f:all bean="trip"/>--}%
%{--                </fieldset>--}%
%{--                <fieldset class="buttons">--}%
%{--                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
%{--                </fieldset>--}%
%{--            </g:form>--}%
%{--        </div>--}%
    </body>
</html>
