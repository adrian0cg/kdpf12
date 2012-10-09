<%--
  @Plat_Forms M
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><g:layoutTitle default="${g.message(code: 'cafman.title')}"/></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <r:require modules="bootstrap, html5shiv"/>
    <r:layoutResources/>
    <style type="text/css">
    body {
        padding-top: 60px;
        padding-bottom: 40px;
    }
    </style>

    <g:layoutHead/>
</head>

<body>

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="">CafMan by Company</a>

            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li class="dropdown active">
                        <a id="home-link" href="#" class="dropdown-toggle" data-toggle="dropdown">Home <b
                                class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="active"><a id="home-link" href="index.html">Home - anonymous user</a></li>
                            <li><a href="index-authd-no-kitty.html">Home - logged in but not member of any kitty</a>
                            </li>
                            <li><a href="index-authd.html">Home - logged in and member of at least one kitty</a></li>
                            <li><a href="index-admin.html">Home - logged in as the admin user</a></li>
                        </ul>
                    </li>
                    <li><a id="highscores-link" href="highscore-anon.html">Highscores</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="container">
    <g:layoutBody/>

    <hr />

    <footer>
        <p><g:message code="cafman.copyright" /></p>
    </footer>
</div>

<r:layoutResources/>
</body>
</html>