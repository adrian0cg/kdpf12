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
              <li class="active"><a id="highscores-link" href="highscore.html">Highscores</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">

      <div class="page-header">
        <h1>Caffeine Highscores Top 10</h1>
      </div>

      <div class="row">
        <div class="span4">
          <h2>All time</h2>  
          <p>
            <table class="table hero-unit">
              <thead>
                <tr><th>Rank</th><th>Name</th><th>Level</th></tr>
              </thead>
              <tbody>
                <tr><td>1</td><td>Anonymous Caffeinic</td><td>467</td></tr>
                <tr><td>2</td><td><a href="caffeine-anon.html" class="statistic-link">An Addict</a></td><td>453</td></tr>
                <tr><td>3</td><td>Anonymous Caffeinic</td><td>412</td></tr>
                <tr><td>4</td><td>Anonymous Caffeinic</td><td>398</td></tr>
                <tr><td>5</td><td><a href="caffeine-anon.html" class="statistic-link">Decaf</a></td><td>390</td></tr>
                <tr><td>6</td><td>Anonymous Caffeinic</td><td>387</td></tr>
                <tr><td>7</td><td>Anonymous Caffeinic</td><td>382</td></tr>
                <tr><td>8</td><td><a href="caffeine-anon.html" class="statistic-link">Espresso</a></td><td>380</td></tr>
                <tr><td>9</td><td>Anonymous Caffeinic</td><td>375</td></tr>
                <tr><td>10</td><td>Anonymous Caffeinic</td><td>360</td></tr>
              </tbody>
            </table>
        </div>
        <div class="span4">
          <h2>This week</h2>
          <p>
            <table class="table hero-unit">
              <thead>
                <tr><th>Rank</th><th>Name</th><th>Level</th></tr>
              </thead>
              <tbody>
                <tr><td>1</td><td>Anonymous Caffeinic</td><td>467</td></tr>
                <tr><td>2</td><td><a href="caffeine-anon.html" class="statistic-link">An Addict</a></td><td>453</td></tr>
                <tr><td>3</td><td>Anonymous Caffeinic</td><td>412</td></tr>
                <tr><td>4</td><td>Anonymous Caffeinic</td><td>398</td></tr>
                <tr><td>5</td><td><a href="caffeine-anon.html" class="statistic-link">Decaf</a></td><td>390</td></tr>
                <tr><td>6</td><td>Anonymous Caffeinic</td><td>387</td></tr>
                <tr><td>7</td><td>Anonymous Caffeinic</td><td>382</td></tr>
                <tr><td>8</td><td><a href="caffeine-anon.html" class="statistic-link">Espresso</a></td><td>380</td></tr>
                <tr><td>9</td><td>Anonymous Caffeinic</td><td>375</td></tr>
                <tr><td>10</td><td>Anonymous Caffeinic</td><td>360</td></tr>
              </tbody>
            </table>
        </div>
        <div class="span4">
          <h2>Today</h2>
          <p>
            <table class="table hero-unit">
              <thead>
                <tr><th>Rank</th><th>Name</th><th>Level</th></tr>
              </thead>
              <tbody>
                <tr><td>1</td><td>Anonymous Caffeinic</td><td>467</td></tr>
                <tr><td>2</td><td><a href="caffeine-anon.html" class="statistic-link">An Addict</a></td><td>453</td></tr>
                <tr><td>3</td><td>Anonymous Caffeinic</td><td>412</td></tr>
                <tr><td>4</td><td>Anonymous Caffeinic</td><td>398</td></tr>
                <tr><td>5</td><td><a href="caffeine-anon.html" class="statistic-link">Decaf</a></td><td>390</td></tr>
                <tr><td>6</td><td>Anonymous Caffeinic</td><td>387</td></tr>
                <tr><td>7</td><td>Anonymous Caffeinic</td><td>382</td></tr>
                <tr><td>8</td><td><a href="caffeine-anon.html" class="statistic-link">Espresso</a></td><td>380</td></tr>
                <tr><td>9</td><td>Anonymous Caffeinic</td><td>375</td></tr>
                <tr><td>10</td><td>Anonymous Caffeinic</td><td>360</td></tr>
              </tbody>
            </table>
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
