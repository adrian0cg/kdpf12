<%--
    @Plat_Forms RM
--%>
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
