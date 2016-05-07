<?php
include_once("../codelibrary/inc/variables.php");
//include("session.php");
$obj= new database_class();	
$id = $_POST['id'] ;
$result = $obj->getAnyTableAllData($obj->getTable("var_category"), " and parent_id = '$id' ");
?>
<label>
 <select name=""  id="" style="width:150px" >
 <option value="">--select--</option>
         <?php 
		     foreach($result as $k=>$v)
			 {
		  ?>
          <option value="<?php echo $v['id'] ?>" ><?php echo $v['title'] ?></option>
          <?php } ?>
  </select>
</label>