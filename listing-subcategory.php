<?php
if(isset($_POST['id']) && !empty($_POST['id'])) {
	$ids = explode(",",$_POST['id']);
} else {
	exit;
}
include('codelibrary/inc/variables.php'); 
$obj= new database_class();

foreach($ids as $key=>$value) {
	//$results[] = $obj->getAnyTableAllData($obj->getTable("var_category")," and parent_id='".$value."' ");
	$query = mysql_query("SELECT * FROM ".$obj->getTable("var_category")." WHERE parent_id='".$value."'");
	while($result = mysql_fetch_array($query)) {
		$main_res[] = $result;
		
	}
}
//echo "<pre>";print_r($main_res);echo "</pre>";
?>
<select multiple="multiple" id="subcat_list" name="category_id" class="form-control">
<option value="">--select--</option>
<?php foreach($main_res as $k=>$v) { ?>	
 <option value=<?php echo $v['id']; ?>><?php echo $v['title']; ?></option>
<?php } ?>									 
</select>
