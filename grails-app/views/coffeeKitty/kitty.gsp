<%--
    @Plat_Forms RM
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="cafman" />
</head>

<body>

<div class="page-header notifications">
    <h1>Notifications</h1>

    <div class="alert alert-info">
        John Smith (CoffeePapa) has requested to become a member of "The Addicts".
        <div class="pull-right alert-controls">
            <button type="submit" class="btn btn-success btn-mini accept-member"
                    data-dismiss="alert">Accept</button>
            <button type="submit" class="btn btn-danger btn-mini decline-member"
                    data-dismiss="alert">Decline</button>
        </div>
    </div>

    <div class="alert alert-info">
        Old Bushmills (Irish Coffee) has requested to become a member of "The Addicts".
        <div class="pull-right alert-controls">
            <button type="submit" class="btn btn-success btn-mini accept-member"
                    data-dismiss="alert">Accept</button>
            <button type="submit" class="btn btn-danger btn-mini decline-member"
                    data-dismiss="alert">Decline</button>
        </div>
    </div>
</div>

<div class="page-header">
    <h1>Manage Your Coffee Kittys</h1>
</div>

<div class="row">
    <div class="span6">
        <p>

        <h2>Overview</h2>
        <table class="table table-condensed">
            <thead>
            <tr><th>Coffee Kitty</th><th>Account Balance</th><th></th></tr>
            </thead>
            <tbody>
            <tr><td>The Addicts</td><td><span class="text-error pull-right">€ -17.85</span></td><td><a
                    class="administer-link" href="kitty-admin.html">Administer</a></td></tr>
            <tr><td>vel dolor.</td><td><span class="text-success pull-right">€ 2.54</span></td><td></td></tr>
            </tbody>
        </table>
    </div>
</div>
<hr>

<div class="row">
    <div class="span6">
        <h2>start a new coffee kitty</h2>

        <p>

        <g:form class="form-inline" action="save">
            <input id="create-name" type="text" class="input-xlarge" placeholder="coffee kitty name" name="name">
            <button id="create-submit" type="sbumit" class="btn">Create kitty</button>
        </g:form>
    </p>
    </div>
</div>
<hr>

<g:render template="search" bean="${coffeeKitties}" />

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

</body>
</html>
