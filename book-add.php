<?php 
include('codelibrary/inc/variables.php'); 
include_once("codelibrary/inc/admin-header.php");
include("codelibrary/ckeditor/ckeditor.php");
$edit_key = $_REQUEST["editKey"]==""?"":$_REQUEST["editKey"] ;
$obj= new database_class();
if($edit_key != "" )
{
 // $qry = "select p.* from ".$obj->getTable("var_profine_product")." p where 1=1 and p.id = '$edit_key'  order by p.id desc" ;	
 $v   =  $obj->getAnyTableWhereData($obj->getTable("var_book"), " and id = '$edit_key' ") ; 
 $subcategoryRec  =  $obj->getAnyTableWhereData($obj->getTable("var_category"), " AND status = '1' AND id = '".$v['category_id']."' ") ;  

}
$categoryRec = $obj->my_query("select * from ".$obj->getTable("var_category")." where parent_id = '0'") ;
$stateRec = $obj->my_query("select * from ".$obj->getTable("var_state")) ;
$style_front = "";

/* $obj= new database_class();
$search_item='';
if($_GET["bid"]!="")
{
	$search_item .= " and category_id = '".trim($_GET["bid"])."' ";
}
if($_GET["lid"]!="")
{
	$search_item .= " and location = '".trim($_GET["lid"])."' ";
}	
$book_data = $obj->getAnyTableAllData($obj->getTable("var_book"), " $search_item and status = '1'");	
$category_data = $obj->getAnyTableAllData($obj->getTable("var_category"), " and parent_id = '0'");
$state_data = $obj->getAnyTableAllData($obj->getTable("var_state")); */
//print_r($state_data);
//fld_state	
/* echo "<pre>";
print_r($category_data);echo "</pre>"; */
?>
<?php include_once("header.php"); ?>
<script LANGUAGE="JavaScript" SRC="codelibrary/js/func_ajax.js"></script>
<script LANGUAGE="JavaScript" SRC="codelibrary/js/jquery.js"></script>
				<!-- navigation menu with logo -->
<?php include_once("navigation.php"); ?>
			</header>
			<!-- header end -->
			
			<!-- banner -->
			<!-- banner end -->
			
		
			<!-- promo end -->
			
			<!-- main content -->
			<div class="main-content">
			<div class="container">	
				
					<!-- inner items -->
					<div class="inner-content items">
						<div class="row">
<?php //include_once("l-sidebar.php"); ?>
							
								<form action="add-book_submit.php" name="" method="post" enctype="multipart/form-data">
									<h2 class="br-orange default-head">Add Book</h2>
									<div class="form-group">
										<label> Book Name </label>
										<input name="title" type="text" class="form-control" placeholder="Book name">
									</div>
									<div class="form-group">
										<label> Category </label>
										<select multiple="multiple" id="main-category" name="category[]" class="form-control">
										  <option value="">--select--</option>
										  <?php while($categoryData = mysql_fetch_array($categoryRec)) { ?>
										  <option value=<?php echo $categoryData['id']; ?>><?php echo $categoryData['title']; ?></option>
										  <?php } ?>
										</select>
									</div>
									<div class="form-group">
										<label> Sub-Category </label>
										<select multiple="multiple" id="subcat_list" name="category_id[]" class="form-control">
										  <option value="">--select--</option>
										</select>
									</div>
									
									<div class="form-group">
										<label> State </label>
										<select id="state" name="state" class="form-control">
										  <option value="">--select--</option>
										 <?php while($stateData = mysql_fetch_array($stateRec)) { ?>
										  <option value=<?php echo $stateData['fld_id']; ?>><?php echo $stateData['fld_state']; ?></option>
										  <?php } ?>
										</select>
									</div>
									<div class="form-group">
										<label> City </label>
										<select id="city" name="city" class="form-control">
										  <option value="">--select--</option>
										</select>
									</div>
									
									<div class="form-group">
										<label> Book Image </label>
										<input name="image" type="file" class="form-control" placeholder="Password">
									</div>
										<button type="submit" class="btn btn-default">Register</button>
								</form>	
							
<?php //include_once("r-sidebar.php"); ?>
						</div>
					</div>
				
					
				</div>

			</div>
			<!-- main content end -->
<script>
$('#state').change(function() { 
	parameters = $('#state').val();
	callAjax("city", "listing-ajax-state.php", { 
		params:"id="+parameters+"&rand="+Math.random(),

		meth:"post",

		async:true
	}

	);
});	
$('#main-category').click(function() { 
	parameters = $('#main-category').val();
	callAjax("subcat_list", "listing-subcategory.php", { 
		params:"id="+parameters+"&rand="+Math.random(),

		meth:"post",

		async:true
	}

	);
});		
</script>			
			<!-- footer -->
			<?php include_once("footer.php"); ?>