<?php
session_start();
include_once("../codelibrary/inc/variables.php"); 
 //creating database objet
$db          = new database_class();
$product_id = $_POST['product_id'] ;
$pdf_id   = $_POST['pdf_id'] ;
if($pdf_id != "" ) {
	$db->my_query("delete from profine_product_pdf where id = '$pdf_id' ") ;
}
$qry = "select * from profine_product_pdf where product_id = '$product_id' " ;
$pdfRec = $db->my_query($qry) ;
if(mysql_num_rows($pdfRec) > 0 ) {
  while($pdfData = mysql_fetch_array($pdfRec)) 
  { 
    echo '<span><a href="'.$pdfData['pdf_name'].'"  target="_blanck" ><img src="images/pdf-icon.jpg"></a></span>';
?>
<a href="javascript:;" onclick="DeleteProductPdf('<?php echo $product_id ?>','<?php echo $pdfData['id'] ?>');" ><img src="images/remove.png"></a> <?php 
  }
}
else {
  echo '<p style="color:#F00" >No Property Pdf</p>' ;
}
?>