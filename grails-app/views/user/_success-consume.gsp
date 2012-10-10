<%--
    @Plat_Forms RM
--%>
<div class="alert alert-success">
    <strong><g:message code="coffee.get.success" /></strong>
    <g:message code="coffee.get.new-balance-is" args="[coffeeKitty.name.encodeAsHTML()]" />
    <g:set var="balance" value="${coffeeKitty.findBalanceByUser(user) ?: 0d}" />
    <g:set var="formattedBalance" value="${g.formatNumber(format: g.message(code: 'formats.currency'), number: balance)}" />
    <span class="${balance > 0 ? 'text-success' : 'text-error'}"><g:message code="coffee.get.balance" args="[formattedBalance]" /></span>
    <a class="close" data-dismiss="alert" href="#">&times;</a>
</div>
