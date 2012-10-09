<div class="row">
    <div class="span12">
        <h2>Become a member of a coffee kitty</h2>

        <p>Use the following search form to search for a coffee kitty and request to become a member.</p>

        <p>

        <g:formRemote  class="form-search"  update="searchResults" url="[action:'search']" name="search">
            <input id="search-name" type="text" class="input-xlarge search-query" placeholder="coffee kitty name" name="query">
            <button id="search-submit" type="submit" class="btn">Search</button>
        </g:formRemote>
    </p>
    </div>
</div>

<g:render template="searchResults" bean="${coffeeKitties}" />

