<%--
    @Plat_Forms RM
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="cafman"/>
</head>

<body>

<g:render template="hero-unit" />

<div class="row">
    <div class="span12">
        <h2><g:message code="admin.resetting.reset-application"/></h2>

        <g:form url="[controller: 'user', action: 'reset']">
            <p>
                <button type="submit" class="btn btn-primary btn-large" id="reset">
                    <g:message code="admin.resetting.reset"/>
                </button>
            </p>
        </g:form>
    </div>
</div>

</body>
</html>
