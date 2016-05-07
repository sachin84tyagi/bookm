<?php
include_once("../codelibrary/inc/variables.php");
$obj= new database_class();
$id = $_REQUEST["id"];
$res = $obj->getAnyTableWhereData($obj->getTable("var_category")," and id='$id'");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Category Details</title>
</head>

<body>
<table width="100%" border="0" cellspacing="5" cellpadding="5">
 <tr>
    <td  colspan="2" align="center"><strong>Category Information</strong></td>
 </tr>
 <?php if($res['parent_id'] > 0 ) { 
     $parent_res = $obj->getAnyTableAllData($obj->getTableName("var_category")," and id='".$res["category"]."'");
 ?> 
  <tr>
    <td width="20%">Parent Category :</td>
    <td width="80%"><?php echo $parent_res["category"]  ;?></td>
  </tr>
  <?php } ?>
  <tr>
    <td>Category Name :</td>
    <td><?php echo $res["category"]  ;?></td>
  </tr>
  <tr>
    <td>Date Added:</td>
    <td><?php echo date('M j Y',$res["date_added"]);?></td>
  </tr>
  <tr>
    <td>Status:</td>
    <td><?php echo $res["status"];?></td>
  </tr>
</table>
</body>
</html>
