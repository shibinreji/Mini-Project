<?php
   include('session.php');
?>
<html>
<head>
<title>Admin</title>
<style media="all" type="text/css">
@import "css/all.css";
</style>
</head>
<body>
<div id="main">
  <div id="header"> <a href="#" class="logo"><img src="img/logo.gif" width="101" height="29" alt="" /></a>
    <ul id="top-navigation">
      <li class="active"><span><span>Home</span></span></li>
      <li><span><span><a href="user.php">Users</a></span></span></li>
      <li><span><span><a href="order.php">Conform</a></span></span></li>
      <li><span><span><a href="product.php">Action</a></span></span></li>
    </ul>
  </div>
  <div id="middle">
    <div id="center-column">
      <div class="top-bar">
        <h1>Contents</h1>
        <div class="breadcrumbs"><a href="#">Homepage</a> / <a href="#">Contents</a></div>
      </div>
      <br />
      <div class="table"> <img src="img/bg-th-left.gif" width="8" height="7" alt="" class="left" /> <img src="img/bg-th-right.gif" width="7" height="7" alt="" class="right" />
     
      </div>
      <H1 align="center"> Welcome Admin</H1> 
<br>
<H2>
<?php echo $login_session; ?>
</H2>
<br><br><br><br><br><br><br> click here to 
     <h2><a href = "logout.php">Sign Out</a></h2>
  </div>
  <div id="footer"></div>
</div>
</body>
</html>