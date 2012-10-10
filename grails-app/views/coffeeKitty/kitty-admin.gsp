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
    <h1><g:message code="coffeeKitty.view.admin.title"/></h1>
</div>

<div class="row">
    <div class="span7">
        <g:render template="manage-members" />
    </div>

    <div class="span5">
        <g:render template="manage-price" />
    </div>
</div>

</body>
</html>
