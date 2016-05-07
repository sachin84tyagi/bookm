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
								<div class="recent-sale">
									<!-- heading -->
									<?php if(isset($_SESSION["sess_user_id"])) { ?>
									<h2 class="br-orange default-head">Welcome User Dashboard</h2>
									
									<div><a href="update_profile.php">Update Profile</a></div>
									<div><a href="change_password.php">Change Password</a></div>
									<div><a href="manage_user_book.php">Book Management</a></div>
									<div><a href="user_book_listing.php">Approved Book List</a></div>
									<div><a href="message_listing.php">Message for You</a></div>
									<div><a href="user_sold_books.php">Sold Books</a></div>
									<?php } ?>
									<!-- Login HTML CODE-->
									
								</div>
							</div>
<?php include_once("r-sidebar.php"); ?>
						</div>
					</div>
				
					
				</div>

			</div>
			<!-- main content end -->
			
			<!-- footer -->
			<?php include_once("footer.php"); ?>