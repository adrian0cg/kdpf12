<%--
    @Plat_Forms RM
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="cafman"/>
</head>

<body>

<div class="page-header">
    <h1><g:if test="${user == spectator}">Your</g:if><g:else><sec:username/>'s</g:else> Caffeine Levels </h1>
</div>

<div class="row">
    <div class="span6">
        <h2>Caffeine levels (last 24 hours)</h2>

        <p>
            Shows <g:if test="${user == spectator}">Your</g:if><g:else><sec:username/>'s</g:else> caffeine levels in the last 24 hours. You can download a CSV file with your levels on a 30-minute interval below.

        <p>
            <i class="icon-download"></i> <a href="/caffeine/statistics/${user.id}/${timestamp}/daily.csv" id="csv-day">Download CSV</a>

        <p>
            <img src="img/daily.png"/>
    </div>

    <div class="span6">
        <h2>Caffeine levels (last 7 days)</h2>

        <p>Shows <g:if test="${user == spectator}">Your</g:if><g:else><sec:username/>'s</g:else> caffeine levels in the last 7 days. You can download a CSV file with your levels on a 30-minute interval below.</p>

        <p><i class="icon-download"></i> <a href="/caffeine/statistics/${userId}/${timestamp}/weekly.csv" id="csv-week">Download CSV</a></p>

        <p><img src="img/weekly.png"/></p>
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

</body>
</html>
