<%@ page import="de.kaufda.plat_forms.cafman.Member" %>
<%--
    @Plat_Forms RM
--%>
<div class="row">
    <div class="span12">
        <h2><g:message code="coffee-kitty.choose-default" /></h2>

        <g:form class="form-horizontal" url="[controller: 'user', action: 'changeCoffeeKitty']">
            <div class="control-group">
                <label class="control-label" for="kitty-select"><g:message code="coffee-kitty.select" /></label>

                <div class="controls">
                    <g:select id="kitty-select" name="id"
                              from="${coffeeKitties}" optionKey="id" optionValue="name"
                              value="${user.defaultCoffeeKitty?.id}" />

                    <button type="submit" class="btn btn-primary" id="kitty-submit"><g:message code="coffee-kitty.set-default" /></button>
                </div>
            </div>
        </g:form>
    </div>
</div>
