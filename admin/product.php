<?php
include_once("codelibrary/inc/variables.php") ;
$db = new database_class() ;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Profine International Profile Group</title>
<?php include_once("common-css-js.php") ; ?>
</head>
<body>
<div id="outer-wraper">
<div id="wraper">
<?php include_once("top-navigation.php") ; ?>
<?php include_once("main-menu.php") ; ?>
<div class="header">
<img src="images/about-header-pic.jpg" alt="About Banner" />
</div>
<div class="welcome-cnt">
<div class="welcome-cnt-left">
<div id="company">
<h1>Company</h1>
<ul class="company">
		<li><a href="aboutus.php" class="none">About Us</a></li>
		<li><a href="history.php">History</a></li>
		<li><a href="guidlines-pricipales.php">Guidlines Principales</a></li>
		<li><a href="responcibility.php">Responsibility</a></li>
</ul>
</div>
<div class="our-network-bx">
<h4>Our Network&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/small-facebook.jpg" width="16" height="16" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/small-twitter.jpg" width="16" height="16" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/small-youtube.jpg" width="16" height="16" /></h4>
<div class="gallery-icn">Photo Gallery</div>
<div class="testimonials-icn">Testimonials</div>
<div class="testimonial-box">
<div class="location-icn">Locations</div>
</div>
</div>
</div>
<div class="welcome-inner-cnt">
<h1>The page you requested cannot be found!</h1>
<p>
The page you requested cannot be found. 
</p>
<br />
<br />
<br />
</div>
</div>
<div class="bottom-link-section">
<?php include_once("link-section.php") ; ?>
</div>
<?php include_once("footer.php") ; ?>
</div>
</div>
</body>
</html>
