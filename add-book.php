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
?>
<?php include_once("header.php"); ?>
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
								<form action="login_submit.php" name="" method="post">
									<h2 class="br-orange default-head">Add Book</h2>
									<div class="form-group">
										<label> Book Name </label>
										<input type="text" class="form-control" placeholder="Email">
									</div>
									<div class="form-group">
										<label> Category </label>
										<select class="form-control">
										  <option>1</option>
										  <option>2</option>
										  <option>3</option>
										  <option>4</option>
										  <option>5</option>
										</select>
									</div>
									<div class="form-group">
										<label> Sub-Category </label>
										<select class="form-control">
										  <option>1</option>
										  <option>2</option>
										  <option>3</option>
										  <option>4</option>
										  <option>5</option>
										</select>
									</div>
									<div class="form-group">
										<label> Book Image </label>
										<input type="file" class="form-control" placeholder="Password">
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
			
			<!-- footer -->
			<?php include_once("footer.php"); ?>