<%--
    @Plat_Forms RM
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="cafman" />
</head>

<body>

<g:render template="hero-unit" />

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

<div class="row">
    <div class="span12">
        <h2>Get your coffee Fix!</h2>

        <div class="alert alert-success">
            <strong>Success!</strong> Your new balance with "The Addicts" is <span
                class="text-error">€ -17.85</span>.
            <a class="close" data-dismiss="alert" href="#">&times;</a>
        </div>

        <p>

        <form class="form-horizontal">
            <div class="control-group">
                <label class="control-label" for="kitty-select">Choose your kitty:</label>

                <div class="controls">
                    <select id="kitty-select">
                        <option>The Addicts</option>
                        <option>vel dolor.</option>
                    </select>
                    <button type="submit" class="btn" id="kitty-submit">Change kitty</button>
                </div>
            </div>
        </form>

        <form class="form-horizontal">
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-primary btn-large"
                            id="consume-coffee">Enough already! Give it to me!</button>
                    <span class="help-inline">Add € 0.30 to your debt with "The Addicts" and adjust your caffeine level.</span>
                </div>
            </div>
        </form>
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
