<%--
    @Plat_Forms RM
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="cafman"/>
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
    <h1>Manage Your Account</h1>
</div>

<div class="row">
    <div class="span12">
        <h2>Account Details</h2>

        <form class="form-horizontal">
            <div class="control-group">
                <label class="control-label" for="update-email">Email</label>

                <div class="controls">
                    <input type="text" id="update-email" value="ulrich.staerk@fu-berlin.de">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-password">New Password</label>

                <div class="controls">
                    <input type="password" id="update-password">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-repeat-password">Repeat New Password</label>

                <div class="controls">
                    <input type="password" id="update-repeat-password">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-displayname">Display Name</label>

                <div class="controls">
                    <input type="text" id="update-displayname" value="Decaf">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-fullname">Full Name</label>

                <div class="controls">
                    <input type="text" id="update-fullname" value="Ulrich Stärk">
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <input type="checkbox" checked="checked" id="update-publish"> Publish Statistics
                    </label>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-old-password">Old Password</label>

                <div class="controls">
                    <input type="password" id="update-old-password">
                    <span class="help-inline">Your old password must be given in order to confirm any changes.</span>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-primary" id="update-submit">Save Changes</button>
                </div>
            </div>
        </form>
    </div>
</div>

<hr>

<div class="row">
    <div class="span12">
        <h2>Choose Default Kitty</h2>

        <p>

        <form class="form-horizontal">
            <div class="control-group">
                <label class="control-label" for="kitty-select">Select kitty:</label>

                <div class="controls">
                    <select id="kitty-select">
                        <option>The Addicts</option>
                        <option>vel dolor.</option>
                    </select>
                    <button type="submit" class="btn btn-primary" id="kitty-submit">Set Default</button>
                </div>
            </div>
        </form>
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
