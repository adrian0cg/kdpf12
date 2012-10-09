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
            <li class="dropdown">
                <a id="home-link" href="#" class="dropdown-toggle" data-toggle="dropdown">Home <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="index.html">Home - anonymous user</a></li>
                  <li><a href="index-authd-no-kitty.html">Home - logged in but not member of any kitty</a></li>
                  <li><a href="index-authd.html">Home - logged in and member of at least one kitty</a></li>
                  <li><a href="index-admin.html">Home - logged in as the admin user</a></li>
                </ul>
              </li>
              <li class="active"><a id="caffeine-link" href="caffeine-anon.html">Caffeine Statistics</a></li>
              <li><a id="highscores-link" href="highscore-anon.html">Highscores</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">
    
      <div class="page-header">
        <h1>Decaf's Caffeine Levels</h1>
      </div>
	  
      <div class="row">
        <div class="span6">
          <h2>Caffeine levels (last 24 hours)</h2>
          <p>
            Shows Decaf's caffeine levels in the last 24 hours. You can download a CSV file with Decaf's levels on a 30-minute interval below.
          <p>
            <i class="icon-download"></i> <a href="daily.csv" id="csv-day">Download CSV</a>
          <p>
            <img src="img/daily.png"/>
        </div>
        <div class="span6">
          <h2>Caffeine levels (last 7 days)</h2>
          <p>
            Shows Decaf's caffeine levels in the last 7 days. You can download a CSV file with Decaf's levels on a 30-minute interval below.
          <p>
            <i class="icon-download"></i> <a href="weekly.csv" id="csv-week">Download CSV</a>
          <p>
            <img src="img/weekly.png"/>
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
