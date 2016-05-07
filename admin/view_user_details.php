<?php
include_once("../codelibrary/inc/variables.php");
$obj= new database_class();
$id = $_REQUEST["id"];
$res = $obj->getAnyTableWhereData($obj->getTable("var_user")," and id='$id'");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Details</title>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>Name :</td>
    <td><?php echo $res["fname"]." ". $res["lname"];?></td>
  </tr>
  <tr>
    <td>City:</td>
    <td><?php echo $res["city"];?></td>
  </tr>
  <tr>
    <td>State:</td>
    <td><?php echo $res["state"];?></td>
  </tr>
</table>
</body>
</html>
