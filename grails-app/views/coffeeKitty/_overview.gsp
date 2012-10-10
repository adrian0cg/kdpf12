<%--
    @Plat_Forms RM
--%>
<div class="row">
    <div class="span6">
        <p>

        <h2><g:message code="coffeeKitty.view.kitty.overview.title" /></h2>
        <table class="table table-condensed">
            <thead>
            <tr>
                <th><g:message code="coffeeKitty.view.kitty.overview.table.name" /></th>
                <th><g:message code="coffeeKitty.view.kitty.overview.table.accountBalance" /></th>
                <th></th>
            </tr>
            </thead>
            <tbody>
                <g:each in="${coffeeKitties}" var="coffeeKitty">
                    <tr>
                        <td><g:fieldValue bean="${coffeeKitty}" field="name" /></td>
                        <g:if test="${coffeeKitty.isUserOwner(loggedUser)}">
                            <td><span class="text-error pull-right"><g:message code="default.view.euro" /> ${coffeeKitty?.findBalanceByUser(loggedUser)}</span></td>
                            <td>
                                <g:link  class="administer-link" action="kittyAdmin" id="${coffeeKitty?.id}">
                                    <g:message code="coffeeKitty.view.kitty.overview.administerLink" />
                                </g:link >
                            </td>
                        </g:if>
                        <g:else>
                            <td><span class="text-success pull-right">€ ${coffeeKitty?.findBalanceByUser(loggedUser)}</span></td>
                            <td></td>
                        </g:else>
                    </tr>
                </g:each>

            </tbody>
        </table>
    </div>
</div>
<hr>