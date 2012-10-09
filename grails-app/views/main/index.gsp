<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>CafMan by Company</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
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
                <a id="home-link" href="#" class="dropdown-toggle" data-toggle="dropdown">Home <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li class="active"><a id="home-link" href="index.html">Home - anonymous user</a></li>
                  <li><a href="index-authd-no-kitty.html">Home - logged in but not member of any kitty</a></li>
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

      <div class="hero-unit">
        <h1>Welcome to CafMan by Company!</h1>
        <p>
          CafMan is your all-purpose Caffeine Manager. It allows you to manage your team's coffee kitty, and plan and monitor your caffeine intoxication.
        </p>
      </div>

      <div class="row">
        <div class="span6">
          <h2>Sign up</h2>
          <p>
            <form class="form-horizontal" action="index-authd-no-kitty.html">
              <div class="control-group">
                <label class="control-label" for="signup-email">Email</label>
                <div class="controls">
                  <input type="text" id="signup-email" placeholder="e.g. foo@bar.com">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="signup-password">Password</label>
                <div class="controls">
                  <input type="password" id="signup-password" placeholder="Password">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="signup-repeat-password">Repeat Password</label>
                <div class="controls">
                  <input type="password" id="signup-repeat-password" placeholder="Password">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="signup-displayname">Display Name</label>
                <div class="controls">
                  <input type="text" id="signup-displayname" placeholder="e.g. &quot;Decaf&quot;">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="signup-fullname">Full Name</label>
                <div class="controls">
                  <input type="text" id="signup-fullname" placeholder="e.g. John Smith">
                </div>
              </div>
              <div class="control-group">
                <div class="controls">
                  <label class="checkbox">
                    <input type="checkbox" checked="checked" id="signup-publish"> Publish Statistics
                  </label>
                </div>
              </div>
              <div class="control-group">
                <div class="controls">
                  <button id="signup-submit" type="submit" class="btn">Sign up</button>
                </div>
              </div>
            </form>
          </p>
       </div>
        <div class="span6">
          <h2>... or sign in</h2>
          <p>
            <form class="form-horizontal" action="index-authd.html">
              <div class="control-group">
                <label class="control-label" for="signin-email">Email</label>
                <div class="controls">
                  <input type="text" id="signin-email" placeholder="Email">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label" for="signin-password">Password</label>
                <div class="controls">
                  <input type="password" id="signin-password" placeholder="Password">
                </div>
              </div>
              <div class="control-group">
                <div class="controls">
                  <button id="signin-submit" type="submit" class="btn">Sign in</button>
                </div>
              </div>
            </form>
          </p>
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; Company 2012</p>
      </footer>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.8.0.js"></script>
    <script src="js/bootstrap.js"></script>

  </body>
</html>
