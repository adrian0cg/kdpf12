<%--
    @Plat_Forms RM
--%>
<div class="row">
    <div class="span12">
        <h2><g:message code="coffee.get.headline" /></h2>

        <g:if test="${params.getBoolean('success')}">
            <g:render template="success-consume" />
        </g:if>

        <g:render template="change-kitty" />

        <g:render template="consume-coffee" />
    </div>
</div>
