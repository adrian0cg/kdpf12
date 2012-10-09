<div class="row">
    <div class="span12" id="searchResults">

        <g:if test="${coffeeKitties?.size() > 0}">

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

                <g:each in="${coffeeKitties}" var="coffeeKitty">
                    <member:showMembership coffeeKitty="${coffeeKitty}"/>
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

        </g:if>

    </div>
</div>
