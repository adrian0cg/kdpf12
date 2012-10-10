<%--
    @Plat_Forms RM
--%>
<g:form class="form-horizontal" url="[controller: 'user', action: 'changeCoffeeKitty']">
    <div class="control-group">
        <label class="control-label" for="kitty-select"><g:message code="coffee.get.choose-kitty" /></label>

        <div class="controls">
            <g:select id="kitty-select" name="id" from="${coffeeKitties}" optionKey="id" optionValue="name" value="${coffeeKitty?.id}"/>

            <button type="submit" class="btn" id="kitty-submit"><g:message code="coffee.get.change-kitty" /></button>
        </div>
    </div>
</g:form>
