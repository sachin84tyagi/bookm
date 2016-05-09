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
									<form action="change-password-submit.php" name="" method="post">
									<h2 class="br-orange default-head">Change Password</h2>
									<div class="form-group">
										<label> Old Password </label>
										<input name="old-password" type="password" class="form-control" placeholder="Password">
									</div>
									<div class="form-group">
										<label> New Password </label>
										<input name="password" type="password" class="form-control" placeholder="Password">
									</div>
									
									<div class="form-group">
										<label> Confirm Password </label>
										<input name="confirm-password" type="password" class="form-control" placeholder="Password">
									</div>
								
										<button type="submit" class="btn btn-default">Save</button>
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