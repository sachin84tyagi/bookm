<?php error_reporting(0) ; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BookMitra Administration ---&gt;Login</title>
<link REL="SHORTCUT ICON" HREF="images/favicon.ico">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<link href="style/frame.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <th width="14%" align="left"  bgcolor="#FFFFFF" style="padding:10px 10px 10px 20px; border-right:1px solid white; border-left:1px solid white;border-top:1px solid white; " scope="col"> <img src="images/logo.jpg" width="106" height="61" alt="logo" /></th>
    <th width="56%" align="left"  bgcolor="#FFFFFF" style="padding:10px 10px 10px 20px; border-right:1px solid white; border-left:1px solid white;border-top:1px solid white; " scope="col"></th>
   <th width="30%" align="right"  bgcolor="#FFFFFF" style="padding:10px 20px 10px 20px; border-right:1px solid white; border-left:1px solid white; font-size:11px;border-top:1px solid white; text-align:right; " scope="col" ><br /><br /><br /><br /><br />
    <?php
        if($_SESSION["sess_admin_id"]!='')
		{
		?>
   		 <?php echo $_SESSION["SESSION_USER_NAME"];?>  | <a href="logout.php">Logout</a>
     <?php
		}
		?>
        </th>
  </tr>
  <tr>
    <th height="30" colspan="3" align="left" class="menu-admin" scope="col">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="color:white;">
      <tr>
        <th align="left" scope="col"><div id="test"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <?php
		if($_SESSION["sess_admin_id"]!='' )
		{
		?>
      <tr>
	  <ul>
	  <li><a href="user-manage.php" class="child">User</a></li>
	  <li><a href="cat-manage.php">Category</a></li>
	  <li><a href="product-manage.php">Book</a></li>
	  <li><a href="event-manage.php">Event</a></li>
      <li><a href="news-manage.php">News</a></li>
	  <li><a href="testimonials-manage.php">Testimonials</a></li>
	  <li><a href="gallery-manage.php">Galley</a></li>
	  <li><a href="cms-manage.php">CMS Pages</a></li>
	  <li><a href="metadata-manage.php">SEO</a></li>
	  <li><a href="db-backup.php">DB Backup</a></li>
	  </ul>
     </tr>
      <?php
		}
	  ?>
	</table>
	</div>
	</th>
	</tr>
   </table>
   </th>
  </tr>