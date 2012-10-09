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
                  <li><a href="index.html">Home - anonymous user</a></li>
                  <li><a href="index-authd-no-kitty.html">Home - logged in but not member of any kitty</a></li>
                  <li class="active"><a href="index-authd.html">Home - logged in and member of at least one kitty</a></li>
                  <li><a href="index-admin.html">Home - logged in as the admin user</a></li>
                </ul>
              </li>
              <li><a id="caffeine-link" href="caffeine.html">Caffeine Statistics</a></li>
              <li><a id="highscores-link" href="highscore.html">Highscores</a></li>
              <li><a id="kitty-link" href="kitty.html">Coffee Kitty</a></li>
            </ul>
            <ul class="nav pull-right">
              <li><a id="profile-link" href="profile.html"><i class="icon-user icon-white"></i> Decaf (ulrich.staerk@fu-berlin.de)</a></li>
              <li><a id="logout" href="index.html"><i class="icon-off icon-white"></i> Sign out</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">

      <div class="hero-unit">
        <h1>Welcome to CafMan by Company!</h1>
        <p>CafMan is your all-purpose Caffeine Manager. It allows you to manage your team's coffee kitty, and plan and monitor your caffeine intoxication.</p>
      </div>

      <div class="page-header notifications">
        <h1>Notifications</h1>
        <div class="alert alert-info">
          John Smith (CoffeePapa) has requested to become a member of "The Addicts".
          <div class="pull-right alert-controls">
            <button type="submit" class="btn btn-success btn-mini accept-member" data-dismiss="alert">Accept</button>
            <button type="submit" class="btn btn-danger btn-mini decline-member" data-dismiss="alert">Decline</button>
          </div>
        </div>
        <div class="alert alert-info">
          Old Bushmills (Irish Coffee) has requested to become a member of "The Addicts".
          <div class="pull-right alert-controls">
            <button type="submit" class="btn btn-success btn-mini accept-member" data-dismiss="alert">Accept</button>
            <button type="submit" class="btn btn-danger btn-mini decline-member" data-dismiss="alert">Decline</button>
          </div>
        </div>
      </div>
	  
      <div class="row">
        <div class="span12">
          <h2>Get your coffee Fix!</h2>
          <div class="alert alert-success">
            <strong>Success!</strong> Your new balance with "The Addicts" is <span class="text-error">€ -17.85</span>.
            <a class="close" data-dismiss="alert" href="#">&times;</a>
          </div>
          <p>
            <form class="form-horizontal">
              <div class="control-group">
                <label class="control-label" for="kitty-select">Choose your kitty:</label>
                <div class="controls">
                  <select id="kitty-select">
                    <option>The Addicts</option>
                    <option>vel dolor.</option>
                  </select>
                  <button type="submit" class="btn" id="kitty-submit">Change kitty</button>
                </div>
              </div>
            </form>
            <form class="form-horizontal">
              <div class="control-group">
                <div class="controls">
                  <button type="submit" class="btn btn-primary btn-large" id="consume-coffee">Enough already! Give it to me!</button>
                  <span class="help-inline">Add € 0.30 to your debt with "The Addicts" and adjust your caffeine level.</span>
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
    <script type="text/javascript">
      $('.alert-controls').bind({
          close: function() {
              $(this).parent().bind({
                  closed: function() {
                      notifications = $(this).closest('.notifications');
                      if(notifications.find('.alert').length == 1)
                          notifications.remove();
                  }
              });
              $(this).parent().alert('close');
          }
      });
    </script>

  </body>
</html>
