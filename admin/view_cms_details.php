<?php
include_once("../codelibrary/inc/variables.php");
error_reporting(E_ALL);
$obj= new database_class();
$id = $_REQUEST["id"];
$res = $obj->getAnyTableAllData($obj->getTableName("var_cms_page")," and id='$id'");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CMS Page Content</title>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>Page Name:</td>
    <td><?php echo $res["page_name"];?></td>
  </tr>
  <tr>
    <td>Page Content:</td>
    <td><?php echo $res["content"];?></td>
  </tr>
</table>

</body>
</html>
