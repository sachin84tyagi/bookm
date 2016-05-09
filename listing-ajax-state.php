<?php
/* if(isset($_POST['id']) && !empty($_POST['id'])) {
	$ids = explode(",",$_POST['id']);
} else {
	exit;
} */
include('codelibrary/inc/variables.php'); 
$obj= new database_class();

$res = $obj->getAnyTableAllData($obj->getTable("var_city")," and fld_state_id='".$_POST["id"]."' ");
//echo "<pre>";print_r($main_res);echo "</pre>";
?>
<select multiple="multiple" id="subcat_list" name="category_id" class="form-control">
<option value="">--select--</option>
<?php foreach($res as $k=>$v) { ?>	
 <option value=<?php echo $v['id']; ?>><?php echo $v['city_name']; ?></option>
<?php } ?>									 
</select>
