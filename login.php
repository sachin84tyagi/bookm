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
									<h2 class="br-orange default-head">Login Form</h2>
									<div class="form-group">
										<label> UserName/Email </label>
										<input type="text" class="form-control" name="user_name" placeholder="UserName/Email">
									</div>
									<div class="form-group">
										<label> Password </label>
										<input type="password" name="password" class="form-control" placeholder="Password">
									</div>
										<button type="submit" class="btn btn-default">Submit</button>
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