<?php
include_once("../codelibrary/inc/variables.php");
error_reporting(0);
$obj= new database_class();
$id = $_REQUEST["id"];
$res = $obj->getAnyTableWhereData($obj->getTable("var_events")," and id='$id'");

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Event Details</title>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="27%">Event Name :</td>
    <td width="73%"><?php echo $res["event_name"] ; ?></td>
  </tr>
  <tr>
    <td>Location :</td>
    <td><?php echo $res["location"] ;?></td>
  </tr>
  <tr>
    <td>Arival Date:</td>
    <td><?php echo date('M j Y',$res["arival_date"]) ;?></td>
  </tr>
  <tr>
    <td colspan="2">Description <br  />
    <?php echo html_entity_decode($res["description"]) ;?></td>
  </tr>
  <tr>
    <td>Status :</td>
    <td><?php echo $res["status"];?></td>
  </tr>
</table>
</body>
</html>
