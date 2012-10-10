<%--
    @Plat_Forms RM
--%>
<h2><g:message code="coffee-kitty.admin.price" /></h2>


<g:form class="form-horizontal" url="[controller: 'coffeeKitty', action: 'changePrice', id: coffeeKitty.id]">
    <div class="control-group ${invalidPrice ? 'error' : ''}">
        <label class="control-label" for="coffee-price"><g:message code="coffee-kitty.admin.price-per-cup" /></label>

        <div class="controls">
            <div class="input-prepend">
                <g:set var="formattedPrice" value="${g.formatNumber(format: g.message(code: 'formats.currency'), number: coffeeKitty.price)}" />
                <span class="add-on"><g:message code="coffee-kitty.admin.currency-sign" /></span><input id="price" type="text" class="input-small" name="price" value="${formattedPrice}" />
            </div>
        </div>
    </div>

    <div class="form-actions">
        <button type="submit" class="btn btn-primary" id="price-submit"><g:message code="coffee-kitty.admin.save-price" /></button>
    </div>
</g:form>
