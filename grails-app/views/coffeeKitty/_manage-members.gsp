<%--
    @Plat_Forms RM
--%>
<h2>Members</h2>

<form class="form">
    <table class="table">
        <thead>
        <tr>
            <th><g:message code="coffeeKitty.view.admin.table.name"/></th>
            <th><g:message code="coffeeKitty.view.admin.table.balance"/></th>
            <th><g:message code="coffeeKitty.view.admin.table.payment"/></th></tr>
        </thead>
        <tbody>

        <g:each in="${coffeeKitty?.members}" var="member">
            <tr>
                <td><g:fieldValue bean="${member}" field="user.fullName"/> (<g:fieldValue bean="${member}" field="user.username"/>)</td>
                <td>
                    <span class="text-error pull-right"><g:message code="default.view.euro" />
                    <g:fieldValue bean="${member}" field="balance"/></span>
                </td>
                <td>
                    <div class="input-prepend"><span class="add-on">
                        <g:message code="default.view.euro" /></span><input type="text" class="input-small input-payment">
                    </div>
                </td>
            </tr>
        </g:each>

        </tbody>
    </table>
    <button id="payments-submit" type="submit" class="btn btn-primary"><g:message code="coffeeKitty.view.admin.savePayments"/></button>
</form>
