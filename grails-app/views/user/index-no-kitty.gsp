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

<div class="row">
    <div class="span6">
        <h2>Become a member of a coffee kitty</h2>

        <p>You currently are not a member of any coffee kitty. Use the following search form to search for one and request to become a member.</p>

        <p>

        <form class="form-search">
            <input id="search-name" type="text" class="input-xlarge search-query" placeholder="coffee kitty name">
            <button id="search-submit" type="submit" class="btn">Search</button>
        </form>
    </p>
    </div>

    <div class="span6">
        <h2>or start a new coffee kitty</h2>

        <p>

        <form class="form-inline">
            <input id="create-name" type="text" class="input-xlarge" placeholder="coffee kitty name">
            <button id="create-submit" type="sbumit" class="btn">Create kitty</button>
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

</body>
</html>
