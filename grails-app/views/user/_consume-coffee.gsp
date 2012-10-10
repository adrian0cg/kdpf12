<%--
    @Plat_Forms RM
--%>
<g:form class="form-horizontal" url="[controller: 'caffeine', action: 'consume']">
    <input type="hidden" name="id" value="${coffeeKitty.id}" />
    <div class="control-group">
        <div class="controls">
            <button type="submit" class="btn btn-primary btn-large" id="consume-coffee">
                <g:message code="coffee.get.consume" />
            </button>
            <span class="help-inline">
                <g:set var="formattedPrice" value="${g.formatNumber(format: g.message(code: 'formats.currency'), number: coffeeKitty.price)}" />
                <g:message code="coffee.get.consume.help" args="[formattedPrice, coffeeKitty.name]" />
            </span>
        </div>
    </div>
</g:form>
