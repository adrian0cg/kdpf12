<%--
    @Plat_Forms RM
--%>
<g:if test="${notifications}">

    <div class="page-header notifications">
    <h1><g:message code="coffeeKitty.view.kitty.notifications.title"/></h1>

    <g:each in="${notifications}" var="notification">

        <div class="alert alert-info">
            <g:message code="coffeeKitty.view.kitty.search.title"
                       args="[$ {notification?.user?.fullName}, $ {notification?.getCoffeeKitty().name}]"/>
            <div class="pull-right alert-controls">
                <button type="submit" class="btn btn-success btn-mini accept-member"
                        data-dismiss="alert"><g:message code="notification.view.accept"/></button>
                <button type="submit" class="btn btn-danger btn-mini decline-member"
                        data-dismiss="alert"><g:message code="notification.view.decline"/></button>
            </div>
        </div>

    </g:each>


    <r:script>
        $('.alert-controls').bind({
            close:function () {
                $(this).parent().bind({
                    closed:function () {
                        notifications = $(this).closest('.notifications');
                        if (notifications.find('.alert').length == 1)
                            notifications.remove();
                    }
                });
                $(this).parent().alert('close');
            }
        });
    </r:script>

</g:if>
