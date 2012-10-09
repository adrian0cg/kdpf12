<%--
    @Plat_Forms RM
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="cafman"/>
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

        <form class="form-horizontal" action="index-authd-success.html">
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

</body>
</html>
