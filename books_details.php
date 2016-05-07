<?php 
include('codelibrary/inc/variables.php'); 
$obj= new database_class();
$search_item='';
if($_GET["b_detail_id"]!="")
{
	$search_item .= " and id = '".trim($_GET["b_detail_id"])."' ";
}
$catgory_data = $obj->getAnyTableAllData($obj->getTable("var_category"), " and parent_id = 0");	
$book_data = $obj->getAnyTableAllData($obj->getTable("var_product"), " $search_item and status = '1'");	
$city_id = "select DISTINCT(b.location) from bm_book b where 1=1 order by b.id desc";
$city_rec = mysql_query($city_id);
while($record = mysql_fetch_array($city_rec)) {
	 $city_data = mysql_query("select count(b.location),c.city_name,c.id from bm_book b inner join bm_city c on c.id=b.location where 1=1 AND b.location = '".$record['location']."' AND b.status = '1' order by c.priority desc");
	 $location_data[] = mysql_fetch_array($city_data);
}
$city_rec = mysql_query($city_data);
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
							
								<!-- products items -->
								<div class="recent-sale">
									<!-- heading -->
									<h2 class="br-orange default-head">Book List</h2>
									<div class="row">
									<?php foreach($book_data as $key=>$value){ //title?>
										<div class="col-md-4 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- hot tag -->
												<span class="hot br-brown">New</span>
												<!-- like, share, etc media tags for item -->
												<a href="#" class="media-1" data-toggle="tooltip" data-placement="left" title="" data-original-title="41 Likes"><i class="fa fa-thumbs-up"></i></a>
												<a href="#" class="media-2" data-toggle="tooltip" data-placement="left" title="" data-original-title="195 Purchase"><i class="fa fa-heart"></i></a>
												<a href="#" class="media-3" data-toggle="tooltip" data-placement="left" title="" data-original-title="795 Shares"><i class="fa fa-share-alt"></i></a>
												<!-- item image -->
												<?php //$file =  'products/'.str_replace(":","_",$value['image']); 
												if(!empty($value['image'])) { ?>
												<img class="img-responsive" src="products/<?php echo str_replace(":","_",$value['image']); ?>" width="150" height="150" alt="" />
												<?php } else {  ?>
												<img class="img-responsive" src="images/no_image.png" width="150" height="150" alt="" />
												<?php } ?>
												<!-- item name / title -->
												<h3><?php echo $value['title']; ?></h3>
												<!-- item details -->
												<span class="details"><?php echo html_entity_decode(substr($value['description'],0,40)); ?></span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">Rs-<?php echo $value['amount'];  ?></span> GetBook</button>
												</div>
											</div>
										</div>
										<?php } ?>
								
									</div>
								</div>
								<!-- recent sale end -->
							</div>
<?php include_once("r-sidebar.php"); ?>
						</div>
					</div>
					
				<!-- popular item -->
				<?php include_once("popular_book.php"); ?>
					<!-- popular item end -->
					
					<!-- subscribe -->
					<?php include_once('subscribe.php'); ?>
					<!-- subscribe end -->
					
				</div>
				<div class="container">	
					<!-- recent sale item block -->
					<?php include_once("recent_book.php"); ?>
					<!-- recent sale end -->
					
					<!-- promo -->
			<?php  include_once('promo.php'); ?>
					<!-- promo end -->
			
					<!-- popular item -->
					<div class="popular-sale">
						<!-- heading -->
						<h2 class="br-lblue default-head">Popular Products</h2>
						<!-- popular item slider -->
						<div id="carousel-example-genericPS" class="carousel slide" data-ride="carousel">

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<div class="row">
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/9.png" alt="" />
												<!-- item name / title -->
												<h3>Folsom-Sofa Set</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$199.95</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/4.png" alt="" />
												<!-- item name / title -->
												<h3>Pocket Wallet</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple pocket...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$21.89</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/5.png" alt="" />
												<!-- item name / title -->
												<h3>Lady Purse</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple pocket...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$21.89</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/6.png" alt="" />
												<!-- item name / title -->
												<h3>Running Shoes</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$21.89</span> Add to cart</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="row">
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/1.png" alt="" />
												<!-- item name / title -->
												<h3>Diamond Ring</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$199.95</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/7.png" alt="" />
												<!-- item name / title -->
												<h3>Running Shoes</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$21.89</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/2.png" alt="" />
												<!-- item name / title -->
												<h3>Study Chair</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$199.95</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/8.png" alt="" />
												<!-- item name / title -->
												<h3>Folsom-Sofa Set</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$199.95</span> Add to cart</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Controls -->
							<a class="left carousel-control" href="#carousel-example-genericPS" role="button" data-slide="prev">
								<span class="fa fa-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="right carousel-control" href="#carousel-example-genericPS" role="button" data-slide="next">
								<span class="fa fa-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>
					<!-- popular item end -->
					
					<!-- subscribe -->
					<div class="subscribe">
						<div class="row">
							<div class="col-md-4 col-sm-4">
								<!-- application store block -->
								<div class="app-store">
									<!-- brand icon -->
									<a href="#" class="green"><i class="fa fa-android"></i></a>
									<a href="#" class="grey"><i class="fa fa-apple"></i></a>
									<a href="#" class="lblue"><i class="fa fa-windows"></i></a>
									<!-- heading -->
									<h6>Mobile application available on app-store.</h6>
								</div>
							</div>
							<div class="col-md-8 col-sm-8">
								<!-- subscribe form -->
								<div class="subscribe-form">
									<!-- heading -->
									<h5><i class="fa fa-envelope-o red"></i>&nbsp;  Hot Offers - Don't Miss Anything!!!</h5>
									<p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...</p>
									<!-- input group -->
									<form>
									<div class="input-group">
										<input type="text" class="form-control" placeholder="Enter your email">
										<span class="input-group-btn">
											<button class="btn btn-default" type="button">Subscribe</button>
										</span>
									</div><!-- /input-group -->
									</form>
								</div>
							</div>
						</div>
					</div>
					<!-- subscribe end -->
					
				</div>
			</div>
			<!-- main content end -->
			
			<!-- footer -->
			<?php include_once("footer.php"); ?>