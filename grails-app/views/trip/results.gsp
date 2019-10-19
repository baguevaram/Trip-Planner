<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'trip.label', default: 'Trip')}" />
    <title>
        <g:message code="Search" args="[entityName]" />
    </title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li>
            <a class="home" href="${createLink(uri: '/')}">
                <g:message code="default.home.label" /></a>
        </li>
        <li>
            <g:link class="create" action="create">
                <g:message code="default.new.label" args="[entityName]" />
            </g:link>
        </li>
        <li>
            <g:link class="search" action="findByName">
                <g:message code="Search" args="[entityName]" />
            </g:link>
        </li>

    </ul>
</div>
<table>
    <thead>
    <tr>
        <g:sortableColumn property="name" title="${message(code: 'Trip.name.label')}"></g:sortableColumn>
        <g:sortableColumn property="airline" title="${message(code: 'Trip.airline.label')}"></g:sortableColumn>
        <g:sortableColumn property="place" title="${message(code: 'Trip.place.label')}"></g:sortableColumn>
    </tr>
    </thead>
    <tbody>
    <g:each var="r" in="${results}">
        <td>${r.name}</td>
        <td>${r.airline}</td>
        <td>${r.place}</td>
    </g:each>
    </tbody>
</table>

</body>

</html>