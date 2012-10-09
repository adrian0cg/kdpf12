<div class="row">
    <div class="span12" id="searchResults">
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

            <g:each in="coffeeKitties" var="coffeeKitty">

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

            </g:each>

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