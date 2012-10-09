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
                  <li class="active"><a href="index-authd-no-kitty.html">Home - logged in but not member of any kitty</a></li>
                  <li><a href="index-authd.html">Home - logged in and member of at least one kitty</a></li>
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

      <div class="row">
        <div class="span6">
          <h2>Become a member of a coffee kitty</h2>
          <p>You currently are not a member of any coffee kitty. Use the following search form to search for one and request to become a member.</p>
          <p>
            <form class="form-search">
              <input id="search-name" type="text" class="input-xlarge search-query" placeholder="coffee kitty name">
              <button id="search-submit" type="submit" class="btn">Search</button>
            </form>
          </p>
        </div>
        <div class="span6">
          <h2>or start a new coffee kitty</h2>
          <p>
            <form class="form-inline">
              <input id="create-name" type="text" class="input-xlarge" placeholder="coffee kitty name">
              <button id="create-submit" type="sbumit" class="btn">Create kitty</button>
            </form>
          </p>
        </div>
      </div>
      <div class="row">
        <div class="span12">
          <h3>Search results:</h2>
          <p>
            <table class="table">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <tr class="warning">
                  <td>Lorem ipsum</td>
                  <td>Membership Request Pending</td>
                </tr>
                <tr>
                  <td>dolor sit</td>
                  <td><button type="submit" class="btn-primary btn-mini member-request">Request Membership</button></td>
                </tr>
                <tr class="warning">
                  <td>amet, consectetur</td>
                  <td>Membership Request Pending</td>
                </tr>
                <tr>
                  <td>adipiscing elit.</td>
                  <td><button type="submit" class="btn-primary btn-mini member-request">Request Membership</button></td>
                </tr>
                <tr>
                  <td>Donec ante</td>
                  <td><button type="submit" class="btn-primary btn-mini member-request">Request Membership</button></td>
                </tr>
                <tr>
                  <td>nisl, scelerisque</td>
                  <td><button type="submit" class="btn-primary btn-mini member-request">Request Membership</button></td>
                </tr>
                <tr class="warning">
                  <td>quis suscipit</td>
                  <td>Membership Request Pending</td>
                </tr>
                <tr>
                  <td>eu, molestie</td>
                  <td><button type="submit" class="btn-primary btn-mini member-request">Request Membership</button></td>
                </tr>
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
