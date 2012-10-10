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

        <g:form class="form-inline" action="save">
            <input id="create-name" type="text" class="input-xlarge" placeholder="coffee kitty name" name="name">
            <button id="create-submit" type="sbumit" class="btn">Create kitty</button>
        </g:form>
    </p>
    </div>
</div>
<hr>

<g:render template="search" bean="${coffeeKitties}" />

</body>
</html>
