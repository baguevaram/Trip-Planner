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
                <g:message code="default.home.label"/></a>
        </li>
        <li>
            <g:link class="list" action="index">
                <g:message code="default.list.label" args="[entityName]" />
            </g:link>
        </li>
        <li>
            <g:link class="create" action="create">
                <g:message code="default.new.label" args="[entityName]" />
            </g:link>
        </li>
        <li>
            <g:link class="Search" action="searchForm">
                <g:message code="Search" args="[entityName]" />
            </g:link>
        </li>

    </ul>
</div>
<div class="header-search">
    <g:form action="results" method="GET">
        <fieldset class="form">
            <p> Name </p>
            <g:textField name="name" class="search-field" />
        </fieldset>
        <fieldset>
            <g:submitButton name="search" value="${message(code: 'default.button.search.label', default: 'Search')}" />
        </fieldset>
    </g:form>
</div>
</body>

</html>