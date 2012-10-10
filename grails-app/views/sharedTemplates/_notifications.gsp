<%--
    @Plat_Forms RM
--%>
<g:if test="${notifications}">

    <div class="page-header notifications">
    <h1><g:message code="coffeeKitty.view.kitty.notifications.title"/></h1>

    <g:each in="${notifications}" var="notification">

        <div class="alert alert-info">
            <g:message code="notification.view.message"
                       args="${[notification?.user?.fullName, notification?.findCoffeeKitty().name]}"/>
            <div class="pull-right alert-controls">
                <button type="submit" class="btn btn-success btn-mini accept-member"
                        data-id="${notification?.id}"
                        data-dismiss="alert"><g:message code="notification.view.accept"/></button>
                <button type="submit" class="btn btn-danger btn-mini decline-member"
                        data-id="${notification?.id}"
                        data-dismiss="alert"><g:message code="notification.view.decline"/></button>
            </div>
        </div>

    </g:each>


    <r:script>
        $('.alert-controls .btn').click(function() {
            var item = $(this);
            if (item.hasClass('accept-member')) {
                $.ajax({url: '${g.createLink(controller: 'notification', action: "accept")}', data: {id: item.data('id')}});

            } else {
                $.ajax({url: '${g.createLink(controller: 'notification', action: "decline")}', data: {id: item.data('id')}});
            }
        });
        $('.alert-controls').bind({
            close:function () {
                $(this).parent().bind({
                    closed:function () {
                        var notifications = $(this).closest('.notifications');
                        if (notifications.find('.alert').length == 1)
                            notifications.remove();
                    }
                });
                $(this).parent().alert('close');
            }
        });
    </r:script>

</g:if>
