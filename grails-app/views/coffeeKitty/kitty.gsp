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

        <form class="form-inline">
            <input id="create-name" type="text" class="input-xlarge" placeholder="coffee kitty name">
            <button id="create-submit" type="sbumit" class="btn">Create kitty</button>
        </form>
    </p>
    </div>
</div>
<hr>

<div class="row">
    <div class="span12">
        <h2>Become a member of a coffee kitty</h2>

        <p>Use the following search form to search for a coffee kitty and request to become a member.</p>

        <p>

        <form class="form-search">
            <input id="search-name" type="text" class="input-xlarge search-query" placeholder="coffee kitty name">
            <button id="search-submit" type="submit" class="btn">Search</button>
        </form>
    </p>
    </div>
</div>

<div class="row">
    <div class="span12">
        <h3>Search results:</h3>
        <p>
        <table class="table">
            <thead>
            <tr>
                <th>Name</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr class="success">
                <td>The Addicts</td>
                <td>Already a Member</td>
            </tr>
            <tr class="warning">
                <td>Lorem ipsum</td>
                <td>Membership Request Pending</td>
            </tr>
            <tr>
                <td>dolor sit</td>
                <td><button type="submit"
                            class="btn-primary btn-mini member-request">Request Membership</button></td>
            </tr>
            <tr class="warning">
                <td>amet, consectetur</td>
                <td>Membership Request Pending</td>
            </tr>
            <tr>
                <td>adipiscing elit.</td>
                <td><button type="submit"
                            class="btn-primary btn-mini member-request">Request Membership</button></td>
            </tr>
            <tr>
                <td>Donec ante</td>
                <td><button type="submit"
                            class="btn-primary btn-mini member-request">Request Membership</button></td>
            </tr>
            <tr>
                <td>nisl, scelerisque</td>
                <td><button type="submit"
                            class="btn-primary btn-mini member-request">Request Membership</button></td>
            </tr>
            <tr class="warning">
                <td>quis suscipit</td>
                <td>Membership Request Pending</td>
            </tr>
            <tr>
                <td>eu, molestie</td>
                <td><button type="submit"
                            class="btn-primary btn-mini member-request">Request Membership</button></td>
            </tr>
            <tr class="success">
                <td>vel dolor.</td>
                <td>Already a Member</td>
            </tr>
            </tbody>
        </table>

        <div class="pagination">
            <ul>
                <li class="disabled"><a href="#">&laquo;</a></li>
                <li class="disabled"><a href="#">&lsaquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li class="disabled"><a href="#">...</a></li>
                <li><a href="#">15</a></li>
                <li class="disabled"><a href="#">...</a></li>
                <li><a href="#">&rsaquo;</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>
    </p>
    </div>
</div>

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
