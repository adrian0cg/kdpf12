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
                    <li class="${(controllerName == 'user' && actionName == 'home') || (controllerName == 'login' && actionName == 'auth') ? 'active' : ''}">
                        <g:link elementId="home-link" url="[controller: 'user', action: 'home']">
                            <g:message code="nav.home"/>
                        </g:link>
                    </li>
                    <sec:ifLoggedIn>
                        <li class="${controllerName == 'caffeine' && actionName == 'statistics' ? 'active' : ''}">
                            <g:link elementId="caffeine-link"  url="[controller: 'caffeine', action: 'statistics']">
                                <g:message code="nav.caffeine-statistics" />
                            </g:link>
                        </li>
                        <li class="${controllerName == 'caffeine' && actionName == 'highscore' ? 'active' : ''}">
                            <g:link elementId="highscores-link" url="[controller: 'caffeine', action: 'highscore']">
                                <g:message code="nav.highscores"/>
                            </g:link>
                        </li>
                        <li class="${controllerName == 'coffeeKitty' && (actionName in ['kitty', 'kittyAdmin']) ? 'active' : ''}">
                            <g:link elementId="kitty-link" url="[controller: 'coffeeKitty', action: 'kitty']">
                                <g:message code="nav.coffee-kitty" />
                            </g:link>
                        </li>
                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>
                        <li class="${controllerName == 'caffeine' && actionName == 'highscore' ? 'active' : ''}">
                            <g:link elementId="highscores-link" url="[controller: 'caffeine', action: 'publicHighscore']">
                                <g:message code="nav.highscores"/>
                            </g:link>
                        </li>
                    </sec:ifNotLoggedIn>
                </ul>
                <sec:ifLoggedIn>
                    <ul class="nav pull-right">
                        <li>
                            <g:link elementId="profile-link" url="[controller: 'user', action: 'profile']">
                                <i class="icon-user icon-white"></i>
                                <g:message code="user.display.with-mail" args="[sec.username(), sec.userEmail()]" />
                            </g:link>
                        </li>
                        <li>
                            <g:link elementId="logout" url="[controller: 'logout']">
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
