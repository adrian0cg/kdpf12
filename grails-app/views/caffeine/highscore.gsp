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
    <h1>Caffeine Highscores Top 10</h1>
</div>

<div class="row">
    <div class="span4">
        <h2>All time</h2>

        <p>
        <table class="table hero-unit">
            <thead>
            <tr><th>Rank</th><th>Name</th><th>Level</th></tr>
            </thead>
            <tbody>
            <tr><td>1</td><td>Anonymous Caffeinic</td><td>467</td></tr>
            <tr><td>2</td><td><a href="caffeine.html" class="statistic-link">An Addict</a></td><td>453</td></tr>
            <tr><td>3</td><td>Anonymous Caffeinic</td><td>412</td></tr>
            <tr><td>4</td><td>Anonymous Caffeinic</td><td>398</td></tr>
            <tr class="info"><td>5</td><td><a href="caffeine.html" class="statistic-link">Decaf (You)</a>
            </td><td>390</td></tr>
            <tr><td>6</td><td>Anonymous Caffeinic</td><td>387</td></tr>
            <tr><td>7</td><td>Anonymous Caffeinic</td><td>382</td></tr>
            <tr><td>8</td><td><a href="caffeine.html" class="statistic-link">Espresso</a></td><td>380</td></tr>
            <tr><td>9</td><td>Anonymous Caffeinic</td><td>375</td></tr>
            <tr><td>10</td><td>Anonymous Caffeinic</td><td>360</td></tr>
            </tbody>
        </table>
    </div>

    <div class="span4">
        <h2>This week</h2>

        <p>
        <table class="table hero-unit">
            <thead>
            <tr><th>Rank</th><th>Name</th><th>Level</th></tr>
            </thead>
            <tbody>
            <tr><td>1</td><td>Anonymous Caffeinic</td><td>467</td></tr>
            <tr><td>2</td><td><a href="caffeine.html" class="statistic-link">An Addict</a></td><td>453</td></tr>
            <tr><td>3</td><td>Anonymous Caffeinic</td><td>412</td></tr>
            <tr><td>4</td><td>Anonymous Caffeinic</td><td>398</td></tr>
            <tr class="info"><td>5</td><td><a href="caffeine.html" class="statistic-link">Decaf (You)</a>
            </td><td>390</td></tr>
            <tr><td>6</td><td>Anonymous Caffeinic</td><td>387</td></tr>
            <tr><td>7</td><td>Anonymous Caffeinic</td><td>382</td></tr>
            <tr><td>8</td><td><a href="caffeine.html" class="statistic-link">Espresso</a></td><td>380</td></tr>
            <tr><td>9</td><td>Anonymous Caffeinic</td><td>375</td></tr>
            <tr><td>10</td><td>Anonymous Caffeinic</td><td>360</td></tr>
            </tbody>
        </table>
    </div>

    <div class="span4">
        <h2>Today</h2>

        <p>
        <table class="table hero-unit">
            <thead>
            <tr><th>Rank</th><th>Name</th><th>Level</th></tr>
            </thead>
            <tbody>
            <tr><td>1</td><td>Anonymous Caffeinic</td><td>467</td></tr>
            <tr><td>2</td><td><a href="caffeine.html" class="statistic-link">An Addict</a></td><td>453</td></tr>
            <tr><td>3</td><td>Anonymous Caffeinic</td><td>412</td></tr>
            <tr><td>4</td><td>Anonymous Caffeinic</td><td>398</td></tr>
            <tr class="info"><td>5</td><td><a href="caffeine.html" class="statistic-link">Decaf (You)</a>
            </td><td>390</td></tr>
            <tr><td>6</td><td>Anonymous Caffeinic</td><td>387</td></tr>
            <tr><td>7</td><td>Anonymous Caffeinic</td><td>382</td></tr>
            <tr><td>8</td><td><a href="caffeine.html" class="statistic-link">Espresso</a></td><td>380</td></tr>
            <tr><td>9</td><td>Anonymous Caffeinic</td><td>375</td></tr>
            <tr><td>10</td><td>Anonymous Caffeinic</td><td>360</td></tr>
            </tbody>
        </table>
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
