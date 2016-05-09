<?php
session_start();
/* $restricted_page = array('change-password.php','add-book.php');//make function for restricted_page.
$page_name = end(explode("/",$_SERVER['SCRIPT_FILENAME']));
if(empty($_SESSION["sess_user_id"]) && in_array($page_name, $restricted_page)) {
	header('Location:page-not-found.php');
} */

?><html>
	<head>
		<meta charset="utf-8">
		<title>Book Mitra</title>
		<!-- Description, Keywords and Author -->
		<meta name="description" content="Your description">
		<meta name="keywords" content="Your,Keywords">
		<meta name="author" content="Gupta">
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Styles -->
		<!-- Bootstrap CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!-- flex slider -->
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<!-- Font awesome CSS -->
		<link href="css/font-awesome.min.css" rel="stylesheet">		
		<!-- Custom CSS -->
		<link href="css/style.css" rel="stylesheet">
		<link href="css/style-less.css" rel="stylesheet">
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="#">
	</head>
	
	<body>

	
		<!-- main wrapper -->
		<div class="wrapper">
			
			<!-- header -->
			<header>
				<!-- header top section -->
				<div class="header-top">
					<div class="container">
						<span class="welcome-text pull-left">Welcome visitor to our shop.</span>
						<ul class="list-unstyled pull-right">
							<li class="dd-menu hidden-xs">
								<a href="#" class="dd-link">EN <i class="fa fa-angle-down"></i></a>
								<!-- different language option list -->
								<ul class="list-unstyled dd-dropdown toggle">
									<li><a href="#">HIN</a></li>
									<li><a href="#">URD</a></li>
									<li><a href="#">FRN</a></li>
								</ul>
							</li>
							<li class="dd-menu hidden-xs">
								<a href="#" class="dd-link">USD <i class="fa fa-angle-down"></i></a>
								<!-- different currency list -->
								<ul class="list-unstyled dd-dropdown toggle">
									<li><a href="#">INR</a></li>
									<li><a href="#">EUR</a></li>
									<li><a href="#">IDR</a></li>
									<li><a href="#">JPY</a></li>
									<li><a href="#">RUB</a></li>
								</ul>
							</li>
							<li class="hidden-xs"><a href="#"><i class="fa fa-heart"></i>&nbsp; Wishlist</a></li>
							<li class="dd-menu">
								<a href="#" class="dd-link"><i class="fa fa-shopping-cart"></i>&nbsp; My cart (3)</a>
								<!-- checkout list -->
								<ul class="list-unstyled checkout toggle">
									<li><div class="checkout-item">
										<!-- item image -->
										<img class="img-responsive img-thumbnail" src="img/item/1.png" alt="" />
										<!-- cross link -->
										<a href="#" class="cross pull-right"><i class="fa fa-times"></i></a>
										<!-- heading / title -->
										<h3><a href="login.php">Login</a></h3>
										<div class="clearfix"></div>
									</div></li>
									<li><div class="checkout-item">
										<!-- item image -->
										<img class="img-responsive img-thumbnail" src="img/item/2.png" alt="" />
										<!-- cross link -->
										<a href="#" class="cross pull-right"><i class="fa fa-times"></i></a>
										<!-- heading / title -->
										<h3><a href="registration.php">Registration</a></h3>
										
										<div class="clearfix"></div>
									</div></li>
								</ul>
							</li>
							<li class="hidden-xs"><a href="login.php"><i class="fa fa-user"></i>&nbsp; Login</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- logo -->
				<div class="container">
				<div class="row">
				<div class="col-xs-12 col-lg-3 col-sm-12 col-md-4">
							
							<a class="navbar-brand" href="#"><img class="img-responsive" src="images/bookmitra_logo.jpg"  alt=""></a>
						</div>
						<div class="col-xs-12 col-lg-9 col-sm-12 col-md-8">
							
							
						</div>
				</div></div>