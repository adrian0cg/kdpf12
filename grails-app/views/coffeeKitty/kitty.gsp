<%--
    @Plat_Forms RM
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="cafman" />
</head>

<body>

<div class="page-header">
    <h1><g:message code="coffeeKitty.view.kitty.manage.title" /></h1>
</div>


<g:render template="overview" model="['coffeeKitties': coffeeKitties, 'loggedUser': loggedUser]" />


<div class="row">
    <div class="span6">
        <h2><g:message code="coffeeKitty.view.kitty.new.title" /></h2>
        <p>
        <g:render template="create" />
    </p>
    </div>
</div>
<hr>

<g:render template="search" />

</body>
</html>
