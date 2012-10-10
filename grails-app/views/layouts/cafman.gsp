<%--
  @Plat_Forms RM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><g:layoutTitle default="${g.message(code: 'cafman.brand')}"/></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <r:require modules="bootstrap, html5shiv"/>
    <r:layoutResources/>
    <style type="text/css">
    body {
        padding-top: 60px;
        padding-bottom: 40px;
    }
    </style>

    <g:layoutHead/>
</head>

<body>

<g:render template="/layouts/navigation" />

<div class="container">
    <sec:ifLoggedIn>
        <notifications:show/>
    </sec:ifLoggedIn>

    <g:layoutBody/>

    <hr />

    <footer>
        <p><g:message code="cafman.copyright" /></p>
    </footer>
</div>

<r:layoutResources/>
</body>
</html>