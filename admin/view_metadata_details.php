<?php
session_start();
include_once("../codelibrary/inc/variables.php");
//creating database object
$obj= new database_class;
$query = "SELECT * from ".$obj->getTable("var_pages")."  WHERE id = '".$_REQUEST["id"]."' ";					
$res = mysql_query($query, $obj->db_connect());
$result = mysql_fetch_array($res);
?>
<link href="../codelibrary/css/style.css" rel="stylesheet" type="text/css" />
<table width="100%" border="0" cellpadding="10" cellspacing="0">
<tr><td width="26%" class="textform">Page Name:</td><td width="74%" class="textform"><?php echo $result["pages_name"];?></td></tr>
<tr><td class="textform">Meta Title:</td><td class="textform"><?php echo $result["meta_title"];?></td></tr>
<tr><td class="textform">Meta Keywords:</td><td class="textform"><?php echo $result["meta_keywords"];?></td></tr>
<tr><td class="textform">Meta Description:</td><td class="textform"><?php echo $result["meta_description"];?></td></tr>
<tr><td class="textform">status</td><td class="textform"><?php 
echo ($result["status"]==1) ?'Activated':'De-Activated';?></td></tr>
<tr><td class="textform">Date Posted</td><td class="textform"><?php echo date("j M Y",$result["date_added"] );?></td></tr>
</table>