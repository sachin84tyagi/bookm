<?php
include('codelibrary/inc/variables.php'); 
include("session.php");
$obj= new database_class();	

	$query = $obj->getAnyTableAllData($obj->getTable("var_customer")," and email != '' order by email ");
$filename = 'customer_email.csv';	
$fp = fopen($filename, 'w');

foreach ($query as $k=>$v) {
$_csv_data= $v["email"]. "\n";
fwrite( $fp, $_csv_data );
}

fclose($fp);

if(is_file($filename))
{
$size=filesize("$filename");
header("Content-type: application/csv");
header("Content-Length: $size");
header("Content-Disposition: attachment; filename=$filename");
header("Pragma: no-cache");
header("Expires: 0");
readfile($filename);

 exit;
 }
 else
 {
  echo "Invalid file!";
 }
?>