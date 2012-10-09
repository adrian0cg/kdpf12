<%--
    @Plat_Forms RM
--%>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href=""><g:message code="cafman.brand"/></a>

            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li class="dropdown active">
                        <g:link id="home-link" url="[controller: 'user', action: 'home']" class="dropdown-toggle" data-toggle="dropdown">
                            <g:message code="nav.home"/>
                            <b class="caret"></b>
                        </g:link>
                        <ul class="dropdown-menu">
                            <%--
                                different variant:
                                <li><a href="index.html">Home - anonymous user</a></li>
                            --%>
                            <li class="active"><a id="home-link" href="index.html">Home - anonymous user</a></li>
                            <li><a href="index-authd-no-kitty.html">Home - logged in but not member of any kitty</a>
                            </li>
                            <li><a href="index-authd.html">Home - logged in and member of at least one kitty</a></li>
                            <li><a href="index-admin.html">Home - logged in as the admin user</a></li>
                        </ul>
                    </li>
                    <sec:ifLoggedIn>
                        <li>
                            <g:link id="caffeine-link"  url="[controller: 'caffeine', action: 'statistics']">
                                <g:message code="nav.caffeine-statistics" />
                            </g:link>
                        </li>
                        <li>
                            <g:link id="highscores-link" url="[controller: 'caffeine', action: 'highscore']">
                                <g:message code="nav.highscores"/>
                            </g:link>
                        </li>
                        <li>
                            <g:link id="kitty-link" url="[controller: 'coffeeKitty', action: 'kitty']">
                                <g:message code="nav.coffee-kitty" />
                            </g:link>
                        </li>
                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>
                        <li>
                            <g:link id="highscores-link" url="[controller: 'caffeine', action: 'publicHighscore']">
                                <g:message code="nav.highscores"/>
                            </g:link>
                        </li>
                    </sec:ifNotLoggedIn>
                </ul>
                <sec:ifLoggedIn>
                    <ul class="nav pull-right">
                        <li>
                            <g:link id="profile-link" url="[controller: 'user', action: 'profile']">
                                <i class="icon-user icon-white"></i>
                                <g:message code="user.display.with-mail" args="[sec.username(), sec.email()]" />
                            </g:link>
                        </li>
                        <li>
                            <g:link id="logout" url="[controller: 'logout']">
                                <i class="icon-off icon-white"></i>
                                <g:message code="nav.sign-out"/>
                            </g:link>
                        </li>
                    </ul>
                </sec:ifLoggedIn>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>
