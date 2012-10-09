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
    <h1>Decaf's Caffeine Levels</h1>
</div>

<div class="row">
    <div class="span6">
        <h2>Caffeine levels (last 24 hours)</h2>

        <p>
            Shows your caffeine levels in the last 24 hours. You can download a CSV file with your levels on a 30-minute interval below.

        <p>
            <i class="icon-download"></i> <a href="daily.csv" id="csv-day">Download CSV</a>

        <p>
            <img src="img/daily.png"/>
    </div>

    <div class="span6">
        <h2>Caffeine levels (last 7 days)</h2>

        <p>
            Shows your caffeine levels in the last 7 days. You can download a CSV file with your levels on a 30-minute interval below.

        <p>
            <i class="icon-download"></i> <a href="weekly.csv" id="csv-week">Download CSV</a>

        <p>
            <img src="img/weekly.png"/>
    </div>
</div>

<div class="row">
    <div class="span12">
        <h2>Set up email alert</h2>

        <p>
            Set up an email alert if your caffeine level drops below a certain threshold.
        <p>

        <form class="form-inline">
            <div class="input-append">
                <input class="input-mini" type="text" id="alert-amount"><span class="add-on">.00 mg</span>
            </div>
            <button type="submit" class="btn btn-primary" id="alert-submit">set up alert</button>
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
