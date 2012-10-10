<%--
    @Plat_Forms RM
--%>
<div class="row">
    <div class="span12">
        <h2><g:message code="coffeeKitty.view.kitty.search.title"/></h2>

        <p><g:message code="coffeeKitty.view.kitty.search.description"/></p>

        <p>

            <g:formRemote class="form-search" update="searchResults" url="[action: 'search']" name="search">
                <input id="search-name" type="text" class="input-xlarge search-query" placeholder="coffee kitty name"
                       name="query">
                <button id="search-submit" type="submit" class="btn"><g:message code="coffeeKitty.view.kitty.search.searchButton"/></button>
            </g:formRemote>
        </p>
    </div>
</div>

<g:render template="searchResults"/>
