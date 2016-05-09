<?php 
include('codelibrary/inc/variables.php'); 
$obj= new database_class();
$search_item='';
if($_GET["bid"]!="")
{
	$search_item .= " and category_id = '".trim($_GET["bid"])."' ";
}
if($_GET["lid"]!="")
{
	$search_item .= " and location = '".trim($_GET["lid"])."' ";
}	
$book_data = $obj->getAnyTableAllData($obj->getTable("var_product"), " $search_item and status = '1'");	
$category_data = $obj->getAnyTableAllData($obj->getTable("var_category"), " and parent_id = '0'");
$state_data = $obj->getAnyTableAllData($obj->getTable("var_state"));
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
<?php include_once("l-sidebar.php"); ?>
							<div class="col-md-6 col-sm-6">
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
										  <?php foreach($category_data as $k=>$v) { ?>
										  <option value=<?php echo $v['id']; ?>><?php echo $v['title']; ?></option>
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
										  <?php foreach($state_data as $k=>$v) { ?>
										  <option value=<?php echo $v['fld_id']; ?>><?php echo $v['fld_state']; ?></option>
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
							</div>
<?php include_once("r-sidebar.php"); ?>
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