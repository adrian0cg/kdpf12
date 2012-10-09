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
    <h1>Manage "The Addicts"</h1>
</div>

<div class="row">
    <div class="span7">
        <h2>Members</h2>

        <form class="form">
            <table class="table">
                <thead>
                <tr><th>Name (Display Name)</th><th>Balance</th><th>Payment</th></tr>
                </thead>
                <tbody>
                <tr>
                    <td>Jane Smith (CoffeeMama)</td>
                    <td><span class="text-error pull-right">€ -3.65</span></td>
                    <td><div class="input-prepend"><span class="add-on">€</span><input type="text"
                                                                                       class="input-small input-payment">
                    </div></td>
                </tr>
                <tr>
                    <td>John Doe (An Addict)</td>
                    <td><span class="text-success pull-right">€ 12.17</span></td>
                    <td><div class="input-prepend"><span class="add-on">€</span><input type="text"
                                                                                       class="input-small input-payment">
                    </div></td>
                </tr>
                <tr class="info">
                    <td>Ulrich St&auml;rk (Decaf) (You)</td>
                    <td><span class="text-error pull-right">€ -17.85</span></td>
                    <td><div class="input-prepend"><span class="add-on">€</span><input type="text"
                                                                                       class="input-small input-payment">
                    </div></td>
                </tr>
                <tr>
                    <td>Jim Smith (The Caffeinator)</td>
                    <td><span class="text-success pull-right">€ 1.89</span></td>
                    <td><div class="input-prepend"><span class="add-on">€</span><input type="text"
                                                                                       class="input-small input-payment">
                    </div></td>
                </tr>
                </tbody>
            </table>
            <button id="payments-submit" type="submit" class="btn btn-primary">Save payments</button>
        </form>
    </div>

    <div class="span5">
        <h2>Coffee Price</h2>

        <p>

        <form class="form-horizontal">
            <div class="control-group">
                <label class="control-label" for="coffee-price">Price for one cup</label>

                <div class="controls">
                    <div class="input-prepend"><span class="add-on">€</span><input id="price" type="text"
                                                                                   class="input-small" value="0.30">
                    </div>
                </div>
            </div>

            <div class="form-actions">
                <button type="submit" class="btn btn-primary" id="price-submit">Save price</button>
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
