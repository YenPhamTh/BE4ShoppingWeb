<%@page import="project.model.PCategory"%>
<%@page import="project.dao.PCategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home || Ginza</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Place favicon.ico in the root directory -->
<link href="assets/images/favicon.ico" type="img/x-icon"
	rel="shortcut icon">
<!-- All css files are included here. -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/iconfont.min.css">
<link rel="stylesheet" href="assets/css/plugins.css">
<link rel="stylesheet" href="assets/css/helper.css">
<link rel="stylesheet" href="assets/css/style.css">

</head>

<body>

	<div id="main-wrapper">

		<!--Header section start-->
		<header class="header header-sticky d-none d-lg-block">
			<div class="header-top pt-0 pb-0">
				<div class="container">
					<div class="row">
						<!-- Header Top Session Start -->
						<div class="col-12">

							<div class="sb-border sb-border pt-10 pb-10">
								<div class="row align-items-center">
									<!-- Header Top Social Start -->
									<div class="col-lg-6">
										<div class="header-top-text">
											<p>FREE SHIPPING for all orders over $199</p>
										</div>
									</div>
									<!-- Header Top Social End -->

									<!-- Header Logo Start -->
									<div class="col-lg-6">
										<div class="header-top-social justify-content-end">
											<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
												class="fa fa-twitter"></i></a> <a href="#"><i
												class="fa fa-instagram"></i></a> <a href="#"><i
												class="fa fa-linkedin"></i></a> <a href="#"><i
												class="fa fa-rss"></i></a>
										</div>
									</div>
									<!-- Header Logo Start -->

								</div>
							</div>
						</div>
						<!-- Header Top Session End -->
					</div>


				</div>
			</div>
			<div class="header-bottom">
				<div class="container">
					<div class="row align-items-center">

						<!-- Header Logo Start -->
						<div class="col-lg-2">
							<div class="header-logo">
								<a href="index.jsp"><img
									src="https://htmldemo.net/ginza/ginza/assets/images/logo.png"
									alt=""></a>
							</div>
						</div>
						<!-- Header Logo End -->

						<!--Menu start-->
						<div class="col-lg-7 d-flex justify-content-start">
							<nav class="main-menu main-menu-two">
								<ul>
									<li><a href="index.jsp">Home</a></li>
									<li><a href="PShop">Shop</a>
										<ul class="mega-menu four-column">
											<li><a href="#" class="item-link">Categories</a> <!-- Idea: homeServlet to call & show Category list -->
												<ul>
													<c:forEach var="category" items="${categoryList}">
														<a href="shop.jsp">
															<li>${category.name}</li>
														</a><br>
													</c:forEach>
												</ul></li>
											<li><a href="#" class="item-link">Utility</a>
												<ul>
													<li><a href="faq.jsp">Frequently Questions</a></li>
													<li><a href="404.jsp">Error 404</a></li>
												</ul></li>
											<li><a href="#" class="item-link">Product Details</a>
												<ul>
													<li><a href="single-product-sticky-left.jsp">Product
															Details</a></li>
												</ul></li>
										</ul></li>
									<li><a href="blog.jsp">Blog</a>
									<li><a href="about.jsp">About Us</a></li>
									<li><a href="contact.jsp">Contact Us</a>
										<ul class="mega-menu two-column">
											<li><a href="#" class="item-link">Find Our Store</a>
												<ul>
													<li><a href="#">My Map</a></li>
												</ul></li>
										</ul></li>
								</ul>
							</nav>
						</div>
						<!--Menu end-->

						<!-- Header Cart Start -->
						<div class="col-lg-3 d-flex justify-content-end">
							<div class="header-search">
								<button class="header-search-toggle">
									<i class="ion-ios-search-strong"></i>
								</button>
								<div class="header-search-form">
									<form action="#">
										<input type="text" placeholder="Type and hit enter">
										<button>
											<i class="ion-ios-search-strong"></i>
										</button>
									</form>
								</div>
							</div>
							<div class="header-cart">
								<a href="cart.jsp"><i class="ion-bag"></i><span>2</span></a>
								<!--Mini Cart Dropdown Start-->
								<div class="header-cart-dropdown">
									<ul class="cart-items">
										<li class="single-cart-item">
											<div class="cart-img">
												<a href="cart.jsp"><img
													src="assets/images/cart/cart-1.jpg" alt=""></a>
											</div>
											<div class="cart-content">
												<h5 class="product-name">
													<a href="single-product.jsp">Dell Inspiron 24</a>
												</h5>
												<span class="product-quantity">1 ×</span> <span
													class="product-price">$278.00</span>
											</div>
											<div class="cart-item-remove">
												<a title="Remove" href="#"><i class="fa fa-trash"></i></a>
											</div>
										</li>
										<li class="single-cart-item">
											<div class="cart-img">
												<a href="cart.jsp"><img
													src="assets/images/cart/cart-2.jpg" alt=""></a>
											</div>
											<div class="cart-content">
												<h5 class="product-name">
													<a href="single-product.jsp">Lenovo Ideacentre 300</a>
												</h5>
												<span class="product-quantity">1 ×</span> <span
													class="product-price">$23.39</span>
											</div>
											<div class="cart-item-remove">
												<a title="Remove" href="#"><i class="fa fa-trash"></i></a>
											</div>
										</li>
									</ul>
									<div class="cart-total">
										<h5>
											Subtotal :<span class="float-right">$39.79</span>
										</h5>
										<h5>
											Eco Tax (-2.00) :<span class="float-right">$7.00</span>
										</h5>
										<h5>
											VAT (20%) : <span class="float-right">$0.00</span>
										</h5>
										<h5>
											Total : <span class="float-right">$46.79</span>
										</h5>
									</div>
									<div class="cart-btn">
										<a href="cart.jsp">View Cart</a> <a href="checkout.jsp">checkout</a>
									</div>
								</div>
								<!--Mini Cart Dropdown End-->
							</div>
							<ul class="ht-us-menu">
								<li><a href="#"><i class="ion-android-settings"></i></a>
									<ul class="ht-dropdown right">
										<li><a href="compare.jsp">Compare Products</a></li>
										<li><a href="my-account.jsp">My Account</a></li>
										<li><a href="wishlist.jsp">My Wish List</a></li>
										<li><a href="login-register.jsp">Sign In</a></li>
									</ul></li>
							</ul>
						</div>
						<!-- Header Cart End -->

					</div>

				</div>
			</div>
		</header>
		<!--Header section end-->

		<!--Header Mobile section start-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-bottom menu-right">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="header-mobile-navigation d-block d-lg-none">
								<div class="row align-items-center">
									<div class="col-6 col-md-6">
										<div class="header-logo">
											<a href="index.jsp"> <img
												src="https://htmldemo.net/ginza/ginza/assets/images/logo.png"
												class="img-fluid" alt="">
											</a>
										</div>
									</div>
									<div class="col-6 col-md-6">
										<div class="mobile-navigation text-end">
											<div class="header-icon-wrapper">
												<ul class="icon-list justify-content-end">
													<li>
														<div class="header-cart-icon">
															<a href="cart.jsp"><i class="ion-bag"></i><span>2</span></a>
														</div>
													</li>
													<li><a href="javascript:void(0)"
														class="mobile-menu-icon" id="mobile-menu-trigger"><i
															class="fa fa-bars"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--Mobile Menu start-->
					<div class="row">
						<div class="col-12 d-flex d-lg-none">
							<div class="mobile-menu"></div>
						</div>
					</div>
					<!--Mobile Menu end-->

				</div>
			</div>
		</header>
		<!--Header Mobile section end-->

		<!-- Offcanvas Menu Start -->
		<div class="offcanvas-mobile-menu" id="offcanvas-mobile-menu">
			<a href="javascript:void(0)" class="offcanvas-menu-close"
				id="offcanvas-menu-close-trigger"> <i class="ion-android-close"></i>
			</a>

			<div class="offcanvas-wrapper">

				<div class="offcanvas-inner-content">
					<div class="offcanvas-mobile-search-area">
						<form action="#">
							<input type="search" placeholder="Search ...">
							<button type="submit">
								<i class="fa fa-search"></i>
							</button>
						</form>
					</div>
					<nav class="offcanvas-navigation">
						<ul>
							<li class="menu-item-has-children"><a href="#">Home</a>
								<ul class="submenu2">
									<li><a href="index.jsp">Home 01</a></li>
									<li><a href="index-2.jsp">Home 02</a></li>
									<li><a href="index-3.jsp">Home 03</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#">Shop</a>
								<ul class="submenu2">
									<li class="menu-item-has-children"><a href="#">Pages</a>
										<ul class="submenu2">
											<li><a href="compare.jsp">Compare</a></li>
											<li><a href="cart.jsp">Shopping Cart</a></li>
											<li><a href="checkout.jsp">Checkout</a></li>
											<li><a href="wishlist.jsp">Wishlist</a></li>
											<li><a href="my-account.jsp">My Account</a></li>
											<li><a href="login-register.jsp">Login Register</a></li>
											<li><a href="faq.jsp">Frequently Questions</a></li>
											<li><a href="404.jsp">Error 404</a></li>
										</ul></li>
									<li class="menu-item-has-children"><a href="#">Shop
											Layout</a>
										<ul class="submenu2">
											<li><a href="shop.jsp">Shop</a></li>
											<li><a href="shop-three-column.jsp">Shop Three
													Column</a></li>
											<li><a href="shop-four-column.jsp">Shop Four Column</a></li>
											<li><a href="shop-right-sidebar.jsp">Shop Right
													Sidebar</a></li>
											<li><a href="shop-list-nosidebar.jsp">Shop List No
													Sidebar</a></li>
											<li><a href="shop-list-left-sidebar.jsp">Shop List
													Left Sidebar</a></li>
											<li><a href="shop-list-right-sidebar.jsp">Shop List
													Right Sidebar</a></li>
										</ul></li>
									<li class="menu-item-has-children"><a href="#">Product
											Details</a>
										<ul class="submenu2">
											<li><a href="single-product.jsp">Single Product</a></li>
											<li><a href="single-product-variable.jsp">Variable
													Product</a></li>
											<li><a href="single-product-affiliate.jsp">Affiliate
													Product</a></li>
											<li><a href="single-product-group.jsp">Group Product</a></li>
											<li><a href="single-product-tabstyle-2.jsp">Product
													Left Tab</a></li>
											<li><a href="single-product-tabstyle-3.jsp">Product
													Right Tab</a></li>
											<li><a href="single-product-gallery-left.jsp">Product
													Gallery Left</a></li>
											<li><a href="single-product-gallery-right.jsp">Product
													Gallery Right</a></li>
										</ul></li>
									<li class="menu-item-has-children"><a href="#">Product
											Details</a>
										<ul class="submenu2">
											<li><a href="single-product-sticky-left.jsp">Product
													Sticky Left</a></li>
											<li><a href="single-product-sticky-right.jsp">Product
													Sticky Right</a></li>
											<li><a href="single-product-slider-box.jsp">Product
													Box Slider</a></li>
										</ul></li>

								</ul></li>
							<li class="menu-item-has-children"><a href="#">Blog</a>
								<ul class="submenu2">
									<li><a href="blog.jsp">Blog</a></li>
									<li><a href="blog-right-sidebar.jsp">Blog Right
											Sidebar</a></li>
									<li><a href="blog-grid.jsp">Blog Grid</a></li>
									<li><a href="blog-large-image.jsp">Blog Large Image</a></li>
									<li><a href="blog-no-sidebar.jsp">Blog No Sidebar</a></li>
									<li><a href="blog-details.jsp">Blog Details</a></li>
									<li><a href="blog-details-gallery.jsp">Blog Details
											Gallery</a></li>
									<li><a href="blog-details-audio.jsp">Blog Details
											Audio</a></li>
									<li><a href="blog-details-video.jsp">Blog Details
											Video</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="about.jsp">About
									Us</a></li>
							<li class="menu-item-has-children"><a href="contact.jsp">Contact
									Us</a></li>

						</ul>
					</nav>

					<div class="offcanvas-settings">
						<nav class="offcanvas-navigation">
							<ul>
								<li class="menu-item-has-children"><a href="#">MY
										ACCOUNT </a>
									<ul class="submenu2">
										<li><a href="login-register.jsp">Register</a></li>
										<li><a href="login-register.jsp">Login</a></li>
									</ul></li>
								<li class="menu-item-has-children"><a href="#">CURRENCY:
										USD </a>
									<ul class="submenu2">
										<li><a href="javascript:void(0)">€ Euro</a></li>
										<li><a href="javascript:void(0)">$ US Dollar</a></li>
									</ul></li>
								<li class="menu-item-has-children"><a href="#">LANGUAGE:
										EN-GB </a>
									<ul class="submenu2">
										<li><a href="javascript:void(0)"><img
												src="https://htmldemo.net/ginza/ginza/assets/images/icons/en-gb.png"
												alt=""> English</a></li>
										<li><a href="javascript:void(0)"><img
												src="https://htmldemo.net/ginza/ginza/assets/images/icons/de-de.png"
												alt=""> Germany</a></li>
									</ul></li>
							</ul>
						</nav>
					</div>

					<div class="offcanvas-widget-area">
						<div class="off-canvas-contact-widget">
							<div class="header-contact-info">
								<ul class="header-contact-info-list">
									<li><i class="ion-android-phone-portrait"></i> <a
										href="tel://12452456012">(1245) 2456 012 </a></li>
									<li><i class="ion-android-mail"></i> <a
										href="mailto:info@yourdomain.com">info@yourdomain.com</a></li>
								</ul>
							</div>
						</div>
						<!--Off Canvas Widget Social Start-->
						<div class="off-canvas-widget-social">
							<a href="#" title="Facebook"><i class="fa fa-facebook"></i></a> <a
								href="#" title="Twitter"><i class="fa fa-twitter"></i></a> <a
								href="#" title="LinkedIn"><i class="fa fa-linkedin"></i></a> <a
								href="#" title="Youtube"><i class="fa fa-youtube-play"></i></a>
							<a href="#" title="Vimeo"><i class="fa fa-vimeo-square"></i></a>
						</div>
						<!--Off Canvas Widget Social End-->
					</div>
				</div>
			</div>

		</div>
		<!-- Offcanvas Menu End -->

		<!--slider section start-->
		<div class="hero-section section position-relative">

			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="tf-element-carousel slider-nav"
							data-slick-options='{
                            "slidesToShow": 1,
                            "slidesToScroll": 1,
                            "infinite": true,
                            "arrows": false,
                            "dots": true,
                            "autoplay" : true
                            }'
							data-slick-responsive='[
                            {"breakpoint":768, "settings": {
                            "slidesToShow": 1
                            }},
                            {"breakpoint":575, "settings": {
                            "slidesToShow": 1
                            }}
                            ]'>
							<!--Hero Item start-->
							<div class="hero-item bg-image image-height-three"
								data-bg="https://htmldemo.net/ginza/ginza/assets/images/hero/hero-4.jpg">
								<div class="container">
									<div class="row">
										<div class="col-12">

											<!--Hero Content start-->
											<div
												class="hero-content-2 left hero-content-3 pl-60 pl-xs-0 ">

												<h3>LIMITED TIME ONLY</h3>
												<h1>
													The Week Only <br> Sale -50% Off
												</h1>
												<a class="btn" href="shop.jsp">shop now</a>

											</div>
											<!--Hero Content end-->

										</div>
									</div>
								</div>
							</div>
							<!--Hero Item end-->

							<!--Hero Item start-->
							<div class="hero-item bg-image image-height-three"
								data-bg="https://htmldemo.net/ginza/ginza/assets/images/hero/hero-5.jpg">
								<div class="container">
									<div class="row">
										<div class="col-12">

											<!--Hero Content start-->
											<div class="hero-content-2 left hero-content-3 pl-60 pl-xs-0">

												<h3>New Arrivals</h3>
												<h1>
													Wallnut Time <br> Signal Wall clock
												</h1>
												<a class="btn" href="shop.jsp">shop now</a>

											</div>
											<!--Hero Content end-->

										</div>
									</div>
								</div>
							</div>
							<!--Hero Item end-->

							<!--Hero Item start-->
							<div class="hero-item bg-image image-height-three"
								data-bg="https://htmldemo.net/ginza/ginza/assets/images/hero/hero-6.jpg">
								<div class="container">
									<div class="row">
										<div class="col-12">

											<!--Hero Content start-->
											<div class="hero-content-2 left hero-content-3 pl-60 pl-xs-0">

												<h3>SPECIAL OFFER</h3>
												<h1>
													New Products <br> Decorative Hourglass
												</h1>
												<a class="btn" href="shop.jsp">shop now</a>

											</div>
											<!--Hero Content end-->

										</div>
									</div>
								</div>
							</div>
							<!--Hero Item end-->

						</div>
					</div>
				</div>
			</div>

		</div>
		<!--slider section end-->

		<!--Feature section start-->
		<div
			class="feature-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50 pb-70 pb-lg-50 pb-md-40 pb-sm-30 pb-xs-20">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-6 col-sm-12">
						<!-- Single Feature Start -->
						<div class="single-feature mb-30">
							<div class="feature-image">
								<img
									src="https://htmldemo.net/ginza/ginza/assets/images/icons/free_shipping.png"
									class="img-fluid" alt="">
							</div>
							<div class="feature-content">
								<h4 class="title">FREE SHIPPING WORLDWIDE</h4>
								<p class="short-desc">Mirum est notare quam littera gothica,
									quam nunc putamus parum claram</p>
							</div>
						</div>
						<!-- Single Feature End -->
					</div>
					<div class="col-lg-4 col-md-6 col-sm-12">
						<!-- Single Feature Start -->
						<div class="single-feature mb-30">
							<div class="feature-image">
								<img
									src="https://htmldemo.net/ginza/ginza/assets/images/icons/money_back.png"
									class="img-fluid" alt="">
							</div>
							<div class="feature-content">
								<h4 class="title">MONEY BACK GUARANTEE</h4>
								<p class="short-desc">Mirum est notare quam littera gothica,
									quam nunc putamus parum claram</p>
							</div>
						</div>
						<!-- Single Feature End -->
					</div>
					<div class="col-lg-4 col-md-6 col-sm-12">
						<!-- Single Feature Start -->
						<div class="single-feature mb-30">
							<div class="feature-image">
								<img
									src="https://htmldemo.net/ginza/ginza/assets/images/icons/support247.png"
									class="img-fluid" alt="">
							</div>
							<div class="feature-content">
								<h4 class="title">ONLINE SUPPORT 24/7</h4>
								<p class="short-desc">Mirum est notare quam littera gothica,
									quam nunc putamus parum claram</p>
							</div>
						</div>
						<!-- Single Feature End -->
					</div>
				</div>
			</div>
		</div>
		<!--Feature section end-->

		<!--Banner section start-->
		<div class="banner-section section">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<!-- Single Banner Start -->
						<div class="single-banner-item mb-30">
							<div class="banner-image">
								<a href="shop.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/banner/home3-banner1.jpg"
									alt="">
								</a>
							</div>
							<div class="banner-content banner-content-three">
								<h4 class="title-light">Storage</h4>
								<h3 class="title">Sideboards</h3>
							</div>
						</div>
						<!-- Single Banner End -->
					</div>
					<div class="col-md-4 col-sm-6">
						<!-- Single Banner Start -->
						<div class="single-banner-item mb-30">
							<div class="banner-image">
								<a href="shop.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/banner/home3-banner2.jpg"
									alt="">
								</a>
							</div>
							<div class="banner-content banner-content-three">
								<h4 class="title-light">Decor</h4>
								<h3 class="title">Accents</h3>
							</div>
						</div>
						<!-- Single Banner End -->
					</div>
					<div class="col-md-4 col-sm-12">
						<div class="row">
							<div class="col-12 col-sm-6 col-md-12">
								<!-- Single Banner Start -->
								<div class="single-banner-item mb-30">
									<div class="banner-image">
										<a href="shop.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/banner/home3-banner3.jpg"
											alt="">
										</a>
									</div>
									<div class="banner-content banner-content-three">
										<h4 class="title-light">Decor</h4>
										<h3 class="title">Lighting</h3>
									</div>
								</div>
								<!-- Single Banner End -->
							</div>
							<div class="col-12 col-sm-6 col-md-12">
								<!-- Single Banner Start -->
								<div class="single-banner-item mb-30">
									<div class="banner-image">
										<a href="shop.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/banner/home3-banner4.jpg"
											alt="">
										</a>
									</div>
									<div class="banner-content banner-content-three">
										<h4 class="title-light">Chair</h4>
										<h3 class="title">Lounge Chairs</h3>
									</div>
								</div>
								<!-- Single Banner End -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Banner section end-->

		<!--Product section start-->
		<div
			class="product-section section pt-45 pt-lg-25 pt-md-15 pt-sm-5 pt-xs-0">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="section-title text-start mb-30 pt-20">
							<h2>Top rated Products</h2>
							<p>Browse the collection of our top rated products.</p>
						</div>
					</div>
				</div>
				<div class="product-slider tf-element-carousel"
					data-slick-options='{
                    "slidesToShow": 4,
                    "slidesToScroll": 1,
                    "infinite": true,
                    "arrows": true,
                    "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-left" },
                    "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-right" }
                    }'
					data-slick-responsive='[
                    {"breakpoint":1199, "settings": {
                    "slidesToShow": 3
                    }},
                    {"breakpoint":992, "settings": {
                    "slidesToShow": 2
                    }},
                    {"breakpoint":768, "settings": {
                    "slidesToShow": 2
                    }},
                    {"breakpoint":576, "settings": {
                    "slidesToShow": 1,
                    "arrows": false,
                    "autoplay": true
                    }}
                    ]'>
					<div class="col">
						<!--  Single Grid product Start -->
						<div class="single-grid-product mb-40">
							<div class="product-image">
								<div class="product-label">
									<span class="sale">-20%</span> <span class="new">New</span>
								</div>
								<a href="single-product.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/1-600x800.jpg"
									class="img-fluid" alt=""> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/1_1-600x800.jpg"
									class="img-fluid" alt="">
								</a>

								<div class="product-action d-flex justify-content-between">
									<a class="product-btn" href="cart.jsp">Add to Cart</a>
									<ul class="d-flex">
										<li><a href="wishlist.jsp"><i
												class="ion-android-favorite-outline"></i></a></li>
										<li><a href="compare.jsp"><i class="ion-ios-shuffle"></i></a></li>
										<li><a href="#quick-view-modal-container"
											data-bs-toggle="modal" title="Quick View"><i
												class="ion-ios-search-strong"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<div class="product-category-rating">
									<span class="category"><a href="shop.jsp">Decor</a></span> <span
										class="rating"> <i class="ion-android-star active"></i>
										<i class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star-outline"></i>
									</span>
								</div>

								<h3 class="title">
									<a href="single-product.jsp">Cillum dolore lorem ipsum
										decoration item</a>
								</h3>
								<p class="product-price">
									<span class="discounted-price">$100.00</span> <span
										class="main-price discounted">$120.00</span>
								</p>
							</div>
						</div>
						<!--  Single Grid product End -->
					</div>

					<div class="col">
						<!--  Single Grid product Start -->
						<div class="single-grid-product mb-40">
							<div class="product-image">
								<div class="product-label">
									<span class="sale">-20%</span> <span class="new">New</span>
								</div>
								<a href="single-product.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/2-600x800.jpg"
									class="img-fluid" alt=""> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/2_1-600x800.jpg"
									class="img-fluid" alt="">
								</a>

								<div class="product-action d-flex justify-content-between">
									<a class="product-btn" href="cart.jsp">Add to Cart</a>
									<ul class="d-flex">
										<li><a href="wishlist.jsp"><i
												class="ion-android-favorite-outline"></i></a></li>
										<li><a href="compare.jsp"><i class="ion-ios-shuffle"></i></a></li>
										<li><a href="#quick-view-modal-container"
											data-bs-toggle="modal" title="Quick View"><i
												class="ion-ios-search-strong"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<div class="product-category-rating">
									<span class="category"><a href="shop.jsp">Decor</a></span> <span
										class="rating"> <i class="ion-android-star active"></i>
										<i class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star-outline"></i>
									</span>
								</div>

								<h3 class="title">
									<a href="single-product.jsp">lorem ipsum cillium dolore
										decoration item</a>
								</h3>
								<p class="product-price">
									<span class="discounted-price">$64.00</span> <span
										class="main-price discounted">$78.00</span>
								</p>
							</div>
						</div>
						<!--  Single Grid product End -->
					</div>

					<div class="col">
						<!--  Single Grid product Start -->
						<div class="single-grid-product mb-40">
							<div class="product-image">
								<div class="product-label">
									<span class="sale">-20%</span> <span class="new">New</span>
								</div>
								<a href="single-product.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/3-600x800.jpg"
									class="img-fluid" alt=""> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/3_1-600x800.jpg"
									class="img-fluid" alt="">
								</a>

								<div class="product-action d-flex justify-content-between">
									<a class="product-btn" href="cart.jsp">Add to Cart</a>
									<ul class="d-flex">
										<li><a href="wishlist.jsp"><i
												class="ion-android-favorite-outline"></i></a></li>
										<li><a href="compare.jsp"><i class="ion-ios-shuffle"></i></a></li>
										<li><a href="#quick-view-modal-container"
											data-bs-toggle="modal" title="Quick View"><i
												class="ion-ios-search-strong"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<div class="product-category-rating">
									<span class="category"><a href="shop.jsp">Vase</a></span> <span
										class="rating"> <i class="ion-android-star active"></i>
										<i class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star-outline"></i>
									</span>
								</div>

								<h3 class="title">
									<a href="single-product.jsp">Cillum dolore lorem ipsum
										decoration item</a>
								</h3>
								<p class="product-price">
									<span class="discounted-price">$180.00</span> <span
										class="main-price discounted">$200.00</span>
								</p>
							</div>
						</div>
						<!--  Single Grid product End -->
					</div>

					<div class="col">
						<!--  Single Grid product Start -->
						<div class="single-grid-product mb-40">
							<div class="product-image">
								<div class="product-label">
									<span class="sale">-20%</span> <span class="new">New</span>
								</div>
								<a href="single-product.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/4-600x800.jpg"
									class="img-fluid" alt=""> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/4_1-600x800.jpg"
									class="img-fluid" alt="">
								</a>

								<div class="product-action d-flex justify-content-between">
									<a class="product-btn" href="cart.jsp">Add to Cart</a>
									<ul class="d-flex">
										<li><a href="wishlist.jsp"><i
												class="ion-android-favorite-outline"></i></a></li>
										<li><a href="compare.jsp"><i class="ion-ios-shuffle"></i></a></li>
										<li><a href="#quick-view-modal-container"
											data-bs-toggle="modal" title="Quick View"><i
												class="ion-ios-search-strong"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<div class="product-category-rating">
									<span class="category"><a href="shop.jsp">Vase</a></span> <span
										class="rating"> <i class="ion-android-star active"></i>
										<i class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star-outline"></i>
									</span>
								</div>

								<h3 class="title">
									<a href="single-product.jsp">lorem ipsum decoration item</a>
								</h3>
								<p class="product-price">
									<span class="discounted-price">$40.00</span> <span
										class="main-price discounted">$59.00</span>
								</p>
							</div>
						</div>
						<!--  Single Grid product End -->
					</div>

					<div class="col">
						<!--  Single Grid product Start -->
						<div class="single-grid-product mb-40">
							<div class="product-image">
								<div class="product-label">
									<span class="sale">-20%</span> <span class="new">New</span>
								</div>
								<a href="single-product.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/5-600x800.jpg"
									class="img-fluid" alt=""> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/5_1-600x800.jpg"
									class="img-fluid" alt="">
								</a>

								<div class="product-action d-flex justify-content-between">
									<a class="product-btn" href="cart.jsp">Add to Cart</a>
									<ul class="d-flex">
										<li><a href="wishlist.jsp"><i
												class="ion-android-favorite-outline"></i></a></li>
										<li><a href="compare.jsp"><i class="ion-ios-shuffle"></i></a></li>
										<li><a href="#quick-view-modal-container"
											data-bs-toggle="modal" title="Quick View"><i
												class="ion-ios-search-strong"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<div class="product-category-rating">
									<span class="category"><a href="shop.jsp">Vase</a></span> <span
										class="rating"> <i class="ion-android-star active"></i>
										<i class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star-outline"></i>
									</span>
								</div>

								<h3 class="title">
									<a href="single-product.jsp">Cillum dolore lorem ipsum
										decoration item</a>
								</h3>
								<p class="product-price">
									<span class="discounted-price">$17.00</span> <span
										class="main-price discounted">$39.00</span>
								</p>
							</div>
						</div>
						<!--  Single Grid product End -->
					</div>

					<div class="col">
						<!--  Single Grid product Start -->
						<div class="single-grid-product mb-40">
							<div class="product-image">
								<div class="product-label">
									<span class="sale">-20%</span> <span class="new">New</span>
								</div>
								<a href="single-product.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/1-600x800.jpg"
									class="img-fluid" alt=""> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/1_1-600x800.jpg"
									class="img-fluid" alt="">
								</a>

								<div class="product-action d-flex justify-content-between">
									<a class="product-btn" href="cart.jsp">Add to Cart</a>
									<ul class="d-flex">
										<li><a href="wishlist.jsp"><i
												class="ion-android-favorite-outline"></i></a></li>
										<li><a href="compare.jsp"><i class="ion-ios-shuffle"></i></a></li>
										<li><a href="#quick-view-modal-container"
											data-bs-toggle="modal" title="Quick View"><i
												class="ion-ios-search-strong"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<div class="product-category-rating">
									<span class="category"><a href="shop.jsp">Decor</a></span> <span
										class="rating"> <i class="ion-android-star active"></i>
										<i class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star-outline"></i>
									</span>
								</div>

								<h3 class="title">
									<a href="single-product.jsp">Cillum dolore lorem ipsum
										decoration item</a>
								</h3>
								<p class="product-price">
									<span class="discounted-price">$100.00</span> <span
										class="main-price discounted">$120.00</span>
								</p>
							</div>
						</div>
						<!--  Single Grid product End -->
					</div>

					<div class="col">
						<!--  Single Grid product Start -->
						<div class="single-grid-product mb-40">
							<div class="product-image">
								<div class="product-label">
									<span class="sale">-20%</span> <span class="new">New</span>
								</div>
								<a href="single-product.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/2-600x800.jpg"
									class="img-fluid" alt=""> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/2_1-600x800.jpg"
									class="img-fluid" alt="">
								</a>

								<div class="product-action d-flex justify-content-between">
									<a class="product-btn" href="cart.jsp">Add to Cart</a>
									<ul class="d-flex">
										<li><a href="wishlist.jsp"><i
												class="ion-android-favorite-outline"></i></a></li>
										<li><a href="compare.jsp"><i class="ion-ios-shuffle"></i></a></li>
										<li><a href="#quick-view-modal-container"
											data-bs-toggle="modal" title="Quick View"><i
												class="ion-ios-search-strong"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<div class="product-category-rating">
									<span class="category"><a href="shop.jsp">Decor</a></span> <span
										class="rating"> <i class="ion-android-star active"></i>
										<i class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star-outline"></i>
									</span>
								</div>

								<h3 class="title">
									<a href="single-product.jsp">lorem ipsum cillium dolore
										decoration item</a>
								</h3>
								<p class="product-price">
									<span class="discounted-price">$64.00</span> <span
										class="main-price discounted">$78.00</span>
								</p>
							</div>
						</div>
						<!--  Single Grid product End -->
					</div>

					<div class="col">
						<!--  Single Grid product Start -->
						<div class="single-grid-product mb-40">
							<div class="product-image">
								<div class="product-label">
									<span class="sale">-20%</span> <span class="new">New</span>
								</div>
								<a href="single-product.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/3-600x800.jpg"
									class="img-fluid" alt=""> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/3_1-600x800.jpg"
									class="img-fluid" alt="">
								</a>

								<div class="product-action d-flex justify-content-between">
									<a class="product-btn" href="cart.jsp">Add to Cart</a>
									<ul class="d-flex">
										<li><a href="wishlist.jsp"><i
												class="ion-android-favorite-outline"></i></a></li>
										<li><a href="compare.jsp"><i class="ion-ios-shuffle"></i></a></li>
										<li><a href="#quick-view-modal-container"
											data-bs-toggle="modal" title="Quick View"><i
												class="ion-ios-search-strong"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<div class="product-category-rating">
									<span class="category"><a href="shop.jsp">Vase</a></span> <span
										class="rating"> <i class="ion-android-star active"></i>
										<i class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star-outline"></i>
									</span>
								</div>

								<h3 class="title">
									<a href="single-product.jsp">Cillum dolore lorem ipsum
										decoration item</a>
								</h3>
								<p class="product-price">
									<span class="discounted-price">$180.00</span> <span
										class="main-price discounted">$200.00</span>
								</p>
							</div>
						</div>
						<!--  Single Grid product End -->
					</div>

					<div class="col">
						<!--  Single Grid product Start -->
						<div class="single-grid-product mb-40">
							<div class="product-image">
								<div class="product-label">
									<span class="sale">-20%</span> <span class="new">New</span>
								</div>
								<a href="single-product.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/4-600x800.jpg"
									class="img-fluid" alt=""> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/4_1-600x800.jpg"
									class="img-fluid" alt="">
								</a>

								<div class="product-action d-flex justify-content-between">
									<a class="product-btn" href="cart.jsp">Add to Cart</a>
									<ul class="d-flex">
										<li><a href="wishlist.jsp"><i
												class="ion-android-favorite-outline"></i></a></li>
										<li><a href="compare.jsp"><i class="ion-ios-shuffle"></i></a></li>
										<li><a href="#quick-view-modal-container"
											data-bs-toggle="modal" title="Quick View"><i
												class="ion-ios-search-strong"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<div class="product-category-rating">
									<span class="category"><a href="shop.jsp">Vase</a></span> <span
										class="rating"> <i class="ion-android-star active"></i>
										<i class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star-outline"></i>
									</span>
								</div>

								<h3 class="title">
									<a href="single-product.jsp">lorem ipsum decoration item</a>
								</h3>
								<p class="product-price">
									<span class="discounted-price">$40.00</span> <span
										class="main-price discounted">$59.00</span>
								</p>
							</div>
						</div>
						<!--  Single Grid product End -->
					</div>

					<div class="col">
						<!--  Single Grid product Start -->
						<div class="single-grid-product mb-40">
							<div class="product-image">
								<div class="product-label">
									<span class="sale">-20%</span> <span class="new">New</span>
								</div>
								<a href="single-product.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/5-600x800.jpg"
									class="img-fluid" alt=""> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/product/5_1-600x800.jpg"
									class="img-fluid" alt="">
								</a>

								<div class="product-action d-flex justify-content-between">
									<a class="product-btn" href="cart.jsp">Add to Cart</a>
									<ul class="d-flex">
										<li><a href="wishlist.jsp"><i
												class="ion-android-favorite-outline"></i></a></li>
										<li><a href="compare.jsp"><i class="ion-ios-shuffle"></i></a></li>
										<li><a href="#quick-view-modal-container"
											data-bs-toggle="modal" title="Quick View"><i
												class="ion-ios-search-strong"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<div class="product-category-rating">
									<span class="category"><a href="shop.jsp">Vase</a></span> <span
										class="rating"> <i class="ion-android-star active"></i>
										<i class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star active"></i> <i
										class="ion-android-star-outline"></i>
									</span>
								</div>

								<h3 class="title">
									<a href="single-product.jsp">Cillum dolore lorem ipsum
										decoration item</a>
								</h3>
								<p class="product-price">
									<span class="discounted-price">$17.00</span> <span
										class="main-price discounted">$39.00</span>
								</p>
							</div>
						</div>
						<!--  Single Grid product End -->
					</div>
				</div>

			</div>
		</div>
		<!--Product section end-->

		<!--Blog section start-->
		<div
			class="blog-section section pt-35 pt-lg-15 pt-md-5 pt-sm-0 pt-xs-0">
			<div class="container pb-80 pb-lg-60 pb-md-50 pb-sm-40 pb-xs-30">

				<div class="row">
					<!-- Section Title Start -->
					<div class="col">
						<div class="section-title mb-30 pt-20 pt-xs-5">
							<h2>Latest Blogs</h2>
							<p>Present posts in a best way to highlight interesting
								moments of your blog</p>
						</div>
					</div>
					<!-- Section Title End -->
				</div>

				<div class="blog-slider tf-element-carousel"
					data-slick-options='{
                    "slidesToShow": 3,
                    "slidesToScroll": 1,
                    "infinite": true,
                    "arrows": true,
                    "dots": false,
                    "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-left" },
                    "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-right" }
                    }'
					data-slick-responsive='[
                    {"breakpoint":1199, "settings": {
                    "slidesToShow": 3
                    }},
                    {"breakpoint":992, "settings": {
                    "slidesToShow": 2
                    }},
                    {"breakpoint":768, "settings": {
                    "slidesToShow": 2
                    }},
                    {"breakpoint":575, "settings": {
                    "slidesToShow": 1,
                    "arrows": false,
                    "autoplay": true
                    }}
                    ]'>
					<!-- Single Blog Start -->
					<div class="blog col">
						<div class="blog-inner">
							<div class="media">
								<a href="blog-details.jsp" class="image"><img
									src="https://htmldemo.net/ginza/ginza/assets/images/blog/blog-details-1.jpg"
									alt=""></a>
							</div>
							<div class="content">
								<h3 class="title">
									<a href="blog-details.jsp">Cool boy with tattoo</a>
								</h3>
								<ul class="meta">
									<li>By <a href="#" tabindex="0">admin</a></li>
									<li>30 October 2018</li>
								</ul>
								<a class="btn" href="blog-details.jsp">Read more</a>
							</div>
						</div>
					</div>
					<!-- Single Blog End -->
					<!-- Single Blog Start -->
					<div class="blog col">
						<div class="blog-inner">
							<div class="media">
								<a href="blog-details.jsp" class="image"><img
									src="https://htmldemo.net/ginza/ginza/assets/images/blog/blog-details-2.jpg"
									alt=""></a>
							</div>
							<div class="content">
								<h3 class="title">
									<a href="blog-details.jsp">Blog image post</a>
								</h3>
								<ul class="meta">
									<li>By <a href="#" tabindex="0">admin</a></li>
									<li>30 October 2018</li>
								</ul>
								<a class="btn" href="blog-details.jsp">Read more</a>
							</div>
						</div>
					</div>
					<!-- Single Blog End -->
					<!-- Single Blog Start -->
					<div class="blog col">
						<div class="blog-inner">
							<div class="media">
								<a href="blog-details.jsp" class="image"><img
									src="https://htmldemo.net/ginza/ginza/assets/images/blog/blog-details-3.jpg"
									alt=""></a>
							</div>
							<div class="content">
								<h3 class="title">
									<a href="blog-details.jsp">Blog Audio post</a>
								</h3>
								<ul class="meta">
									<li>By <a href="#" tabindex="0">admin</a></li>
									<li>30 October 2018</li>
								</ul>
								<a class="btn" href="blog-details.jsp">Read more</a>
							</div>
						</div>
					</div>
					<!-- Single Blog End -->
					<!-- Single Blog Start -->
					<div class="blog col">
						<div class="blog-inner">
							<div class="media">
								<a href="blog-details.jsp" class="image"><img
									src="https://htmldemo.net/ginza/ginza/assets/images/blog/blog-details-4.jpg"
									alt=""></a>
							</div>
							<div class="content">
								<h3 class="title">
									<a href="blog-details.jsp">Blog Video post</a>
								</h3>
								<ul class="meta">
									<li>By <a href="#" tabindex="0">admin</a></li>
									<li>30 October 2018</li>
								</ul>
								<a class="btn" href="blog-details.jsp">Read more</a>
							</div>
						</div>
					</div>
					<!-- Single Blog End -->
				</div>
			</div>
		</div>
		<!--Blog section end-->

		<!--Banner section start-->
		<div class="banner-section section">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<!-- Single Banner Start -->
						<div class="single-banner-item mb-30">
							<div class="banner-image">
								<a href="shop.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/banner/home3-banner5.jpg"
									alt="">
								</a>
							</div>
						</div>
						<!-- Single Banner End -->
					</div>
					<div class="col-md-6">
						<!-- Single Banner Start -->
						<div class="single-banner-item mb-30">
							<div class="banner-image">
								<a href="shop.jsp"> <img
									src="https://htmldemo.net/ginza/ginza/assets/images/banner/home3-banner6.jpg"
									alt="">
								</a>
							</div>
						</div>
						<!-- Single Banner End -->
					</div>
				</div>
			</div>
		</div>
		<!--Banner section end-->

		<!-- List Product Section Start -->
		<div
			class="list-product-section section pt-80 pt-lg-60 pt-md-50 pt-sm-40 pt-xs-20">
			<div
				class="container sb-border  pb-75 pb-lg-55 pb-md-45 pb-sm-35 pb-xs-25">
				<div class="row">
					<div class="col-lg-4 col-md-6">
						<!--  Product List Widget Wrapper -->
						<div class="product-list-widget-wrapper">
							<!-- widget product list title -->
							<div class="list-product-section-title mb-35">
								<h3>
									<span>On Sale</span>
								</h3>
								<div class="on-sale-nav slick-btns"></div>
							</div>
							<!-- widget product list title -->

							<!--  widget product list wrapper -->
							<div
								class="widget-product-list-wrapper tf-element-carousel top-nav"
								data-slick-options='{
                                    "slidesToShow": 1,
                                    "slidesToScroll": 1,
                                    "infinite": true,
                                    "arrows": true,
                                    "rows": 3,
                                    "appendArrows": ".on-sale-nav",
                                    "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-left" },
                                    "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-right" }
                                    }'
								data-slick-responsive='[
                                    {"breakpoint":1199, "settings": {
                                    "slidesToShow": 1
                                    }},
                                    {"breakpoint":992, "settings": {
                                    "slidesToShow": 1
                                    }},
                                    {"breakpoint":768, "settings": {
                                    "slidesToShow": 1
                                    }},
                                    {"breakpoint":576, "settings": {
                                    "slidesToShow": 1,
                                    "arrows": false,
                                    "autoplay": true
                                    }}
                                    ]'>
								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/5-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Decor</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Cillum dolore lorem ipsum
												decoration item</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$80.00</span> <span
												class="main-price discounted">$100.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/6-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Sports</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Pellentesque posuere
												hendrerit dui quis urna</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$58.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/7-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Toys</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Auctor gravida enim
												pellentesque quam ut risus</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$48.00</span> <span
												class="main-price discounted">$78.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/8-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Storage</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Kaoreet lobortis sagittis
												laoreet pellentesque torquent</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$80.00</span> <span
												class="main-price discounted">$100.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/9-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Furniture</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Sit voluptatem rhoncus sem
												lectus pellentesque eros</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$70.00</span> <span
												class="main-price discounted">$95.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/13-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Decor</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Nullam maximus eget nisi
												dignissim sodales eget tempor</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$60.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/12-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Decor</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Cillum dolore lorem ipsum
												decoration item</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$59.00</span> <span
												class="main-price discounted">$70.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/11-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Accessories</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Vestibulum suscipit sed
												consectetur dui placerat</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$90.00</span> <span
												class="main-price discounted">$120.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/10-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Lighting</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Donec eu libero ac dapibus
												urna consectetur rhoncus</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$85.00</span> <span
												class="main-price discounted">$100.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->
							</div>
							<!-- End of widget product list wrapper -->
						</div>
						<!--  Product List Widget Wrapper -->

					</div>

					<div class="col-lg-4 col-md-6">
						<!--  Product List Widget Wrapper -->
						<div class="product-list-widget-wrapper">
							<!-- widget product list title -->
							<div class="list-product-section-title mb-35">
								<h3>
									<span>Latest Arrivals</span>
								</h3>
								<div class="latest-nav slick-btns"></div>
							</div>
							<!-- widget product list title -->

							<!--  widget product list wrapper -->
							<div
								class="widget-product-list-wrapper tf-element-carousel top-nav"
								data-slick-options='{
                                    "slidesToShow": 1,
                                    "slidesToScroll": 1,
                                    "infinite": true,
                                    "arrows": true,
                                    "rows": 3,
                                    "appendArrows": ".latest-nav",
                                    "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-left" },
                                    "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-right" }
                                    }'
								data-slick-responsive='[
                                    {"breakpoint":1199, "settings": {
                                    "slidesToShow": 1
                                    }},
                                    {"breakpoint":992, "settings": {
                                    "slidesToShow": 1
                                    }},
                                    {"breakpoint":768, "settings": {
                                    "slidesToShow": 1
                                    }},
                                    {"breakpoint":576, "settings": {
                                    "slidesToShow": 1,
                                    "arrows": false,
                                    "autoplay": true
                                    }}
                                    ]'>
								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/9-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Furniture</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Sit voluptatem rhoncus sem
												lectus pellentesque eros</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$70.00</span> <span
												class="main-price discounted">$95.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/13-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Decor</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Nullam maximus eget nisi
												dignissim sodales eget tempor</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$60.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/12-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Decor</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Cillum dolore lorem ipsum
												decoration item</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$59.00</span> <span
												class="main-price discounted">$70.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/11-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Accessories</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Vestibulum suscipit sed
												consectetur dui placerat</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$90.00</span> <span
												class="main-price discounted">$120.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/10-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Lighting</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Donec eu libero ac dapibus
												urna consectetur rhoncus</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$85.00</span> <span
												class="main-price discounted">$100.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/5-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Decor</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Cillum dolore lorem ipsum
												decoration item</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$80.00</span> <span
												class="main-price discounted">$100.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/6-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Sports</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Pellentesque posuere
												hendrerit dui quis urna</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$58.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/7-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Toys</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Auctor gravida enim
												pellentesque quam ut risus</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$48.00</span> <span
												class="main-price discounted">$78.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/8-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Storage</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Kaoreet lobortis sagittis
												laoreet pellentesque torquent</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$80.00</span> <span
												class="main-price discounted">$100.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->
							</div>
							<!-- End of widget product list wrapper -->
						</div>
						<!--  Product List Widget Wrapper -->

					</div>

					<div class="col-lg-4 col-md-6">
						<!--  Product List Widget Wrapper -->
						<div class="product-list-widget-wrapper">
							<!-- widget product list title -->
							<div class="list-product-section-title mb-35">
								<h3>
									<span>Top Rated Products</span>
								</h3>
								<div class="top-rated-nav slick-btns"></div>
							</div>
							<!-- widget product list title -->

							<!--  widget product list wrapper -->
							<div
								class="widget-product-list-wrapper tf-element-carousel top-nav"
								data-slick-options='{
                                    "slidesToShow": 1,
                                    "slidesToScroll": 1,
                                    "infinite": true,
                                    "arrows": true,
                                    "rows": 3,
                                    "appendArrows": ".top-rated-nav",
                                    "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-left" },
                                    "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-right" }
                                    }'
								data-slick-responsive='[
                                    {"breakpoint":1199, "settings": {
                                    "slidesToShow": 1
                                    }},
                                    {"breakpoint":992, "settings": {
                                    "slidesToShow": 1
                                    }},
                                    {"breakpoint":768, "settings": { 
                                    "slidesToShow": 1
                                    }},
                                    {"breakpoint":576, "settings": {
                                    "slidesToShow": 1,
                                    "arrows": false,
                                    "autoplay": true
                                    }}
                                    ]'>
								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/8-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Storage</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Kaoreet lobortis sagittis
												laoreet pellentesque torquent</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$80.00</span> <span
												class="main-price discounted">$100.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/9-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Furniture</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Sit voluptatem rhoncus sem
												lectus pellentesque eros</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$70.00</span> <span
												class="main-price discounted">$95.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/13-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Decor</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Nullam maximus eget nisi
												dignissim sodales eget tempor</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$60.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/12-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Decor</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Cillum dolore lorem ipsum
												decoration item</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$59.00</span> <span
												class="main-price discounted">$70.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/5-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Decor</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Cillum dolore lorem ipsum
												decoration item</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$80.00</span> <span
												class="main-price discounted">$100.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/6-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Sports</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Pellentesque posuere
												hendrerit dui quis urna</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$58.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/7-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Toys</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Auctor gravida enim
												pellentesque quam ut risus</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$48.00</span> <span
												class="main-price discounted">$78.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/11-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Accessories</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Vestibulum suscipit sed
												consectetur dui placerat</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$90.00</span> <span
												class="main-price discounted">$120.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->

								<!--  single widget product -->
								<div class="single-grid-product list-mode">
									<div class="list-mode-image">
										<a href="single-product.jsp"> <img
											src="https://htmldemo.net/ginza/ginza/assets/images/product/10-100x133.jpg"
											class="img-fluid" alt="">
										</a>
									</div>
									<div class="list-mode-content">
										<span class="category"><a href="shop.jsp">Lighting</a></span>
										<h3 class="title">
											<a href="single-product.jsp">Donec eu libero ac dapibus
												urna consectetur rhoncus</a>
										</h3>
										<div class="product-category-rating">
											<span class="rating float-none"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span>
										</div>
										<p class="product-price">
											<span class="discounted-price">$85.00</span> <span
												class="main-price discounted">$100.00</span>
										</p>
									</div>
								</div>
								<!--  single widget product -->
							</div>
							<!-- End of widget product list wrapper -->
						</div>
						<!--  Product List Widget Wrapper -->
					</div>
				</div>
			</div>
		</div>
		<!-- List Product Section End -->

		<!--NewsLetter section start-->
		<div
			class="newsLetter-section section pt-95 pt-lg-75 pt-md-65 pt-sm-55 pt-xs-45 pb-100 pb-lg-80 pb-md-70 pb-sm-60 pb-xs-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 offset-lg-2">
						<div class="newsletter-wrapper">
							<p class="small-text">Special Ofers For Subscribers</p>
							<h3 class="title">Ten Percent Member Discount</h3>
							<p class="short-desc">Subscribe to our newsletters now and
								stay up to date with new collections, the latest lookbooks and
								exclusive offers.</p>

							<div class="newsletter-form">
								<form id="mc-form" class="mc-form">
									<input type="email"
										placeholder="Enter Your Email Address Here..." required>
									<button type="submit" value="submit">SUBSCRIBE!</button>
								</form>

							</div>
							<!-- mailchimp-alerts Start -->
							<div class="mailchimp-alerts">
								<div class="mailchimp-submitting"></div>
								<!-- mailchimp-submitting end -->
								<div class="mailchimp-success"></div>
								<!-- mailchimp-success end -->
								<div class="mailchimp-error"></div>
								<!-- mailchimp-error end -->
							</div>
							<!-- mailchimp-alerts end -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--NewsLetter section end-->

		<!--Footer section start-->
		<footer class="footer-section section bg-gray-two">

			<!--Footer Top start-->
			<div
				class="footer-top section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50 pb-60 pb-lg-40 pb-md-30 pb-sm-15 pb-xs-5">
				<div class="container">
					<div class="row">

						<!--Footer Widget start-->
						<div
							class="footer-widget col-lg-6 col-md-6 col-sm-6 col-12 mb-40 mb-xs-35">
							<div class="footer-logo">
								<a href="index.jsp"><img
									src="https://htmldemo.net/ginza/ginza/assets/images/logo.png"
									alt=""></a>
							</div>
							<p>Duis autem vel eum iriure dolor in hendrerit in vulputate
								velit esse molestie consequat, vel illum dolore eu feugiat nulla
								facilisis.</p>
							<div class="f-social-title">
								<h3>Follow Us On Social:</h3>
							</div>
							<div class="footer-social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-linkedin"></i></a> <a href="#"><i
									class="fa fa-rss"></i></a>
							</div>
						</div>
						<!--Footer Widget end-->


						<!--Footer Widget start-->
						<div
							class="footer-widget col-lg-2 col-md-6 col-sm-6 col-12 mb-40 mb-xs-35">
							<h4 class="title">
								<span class="text">Opening Time</span>
							</h4>
							<p class="mb-15">Mon – Fri: 8AM – 10PM</p>
							<p class="mb-15">Sat: 9AM-8PM</p>
							<p class="mb-15">Sun: Closed</p>
							<h4 class="opeaning-title">We Work All The Holidays</h4>
						</div>
						<!--Footer Widget end-->


						<!--Footer Widget start-->
						<div
							class="footer-widget col-lg-2 col-md-6 col-sm-6 col-12 mb-40 mb-xs-35">
							<h4 class="title">
								<span class="text">My Account</span>
							</h4>
							<ul class="ft-menu">
								<li><a href="#">My account</a></li>
								<li><a href="#">Wishlist</a></li>
								<li><a href="#">Order Tracking</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Shipping Information</a></li>
							</ul>
						</div>
						<!--Footer Widget end-->

						<!--Footer Widget start-->
						<div
							class="footer-widget col-lg-2 col-md-6 col-sm-6 col-12 mb-40 mb-xs-35">
							<h4 class="title">
								<span class="text">About Us</span>
							</h4>
							<ul class="ft-menu">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Shopping Guide</a></li>
								<li><a href="#">Delivery Information</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Our Store</a></li>
							</ul>
						</div>
						<!--Footer Widget end-->
					</div>
				</div>
			</div>
			<!--Footer Top end-->

			<!--Footer bottom start-->
			<div class="footer-bottom section">
				<div class="container">
					<div class="row g-0">
						<div class="col-12 ft-border pt-25 pb-25">
							<div class="row justify-content-between align-items-center">
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="copyright text-start">
										<p>
											Copyright &copy;2023 <a href="#">Ginza</a>. All rights
											reserved.
										</p>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="footer-nav text-end">
										<nav>
											<ul>
												<li><a href="#">Policy</a></li>
												<li><a href="#">Questions</a></li>
												<li><a href="#">Affiliate</a></li>
												<li><a href="#">Help</a></li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Footer bottom end-->

		</footer>
		<!--Footer section end-->

		<!-- Modal Area Strat -->
		<div class="modal fade quick-view-modal-container"
			id="quick-view-modal-container" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-bs-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="col-xl-12 col-lg-12">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<!-- Product Details Left -->
									<div class="product-details-left">
										<div
											class="product-details-images slider-lg-image-1 tf-element-carousel"
											data-slick-options='{
                                                "slidesToShow": 1,
                                                "slidesToScroll": 1,
                                                "infinite": true,
                                                "asNavFor": ".slider-thumbs-1",
                                                "arrows": false,
                                                "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-left" },
                                                "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-right" }
                                                }'>
											<div class="lg-image">
												<img
													src="https://htmldemo.net/ginza/ginza/assets/images/product/large-product/l-product-1.jpg"
													alt=""> <a
													href="https://htmldemo.net/ginza/ginza/assets/images/product/large-product/l-product-1.jpg"></a>
											</div>
											<div class="lg-image">
												<img
													src="https://htmldemo.net/ginza/ginza/assets/images/product/large-product/l-product-2.jpg"
													alt=""> <a
													href="https://htmldemo.net/ginza/ginza/assets/images/product/large-product/l-product-2.jpg"></a>
											</div>
											<div class="lg-image">
												<img
													src="https://htmldemo.net/ginza/ginza/assets/images/product/large-product/l-product-3.jpg"
													alt=""> <a
													href="https://htmldemo.net/ginza/ginza/assets/images/product/large-product/l-product-3.jpg"></a>
											</div>
											<div class="lg-image">
												<img
													src="https://htmldemo.net/ginza/ginza/assets/images/product/large-product/l-product-4.jpg"
													alt=""> <a
													href="https://htmldemo.net/ginza/ginza/assets/images/product/large-product/l-product-4.jpg"></a>
											</div>
											<div class="lg-image">
												<img
													src="https://htmldemo.net/ginza/ginza/assets/images/product/large-product/l-product-5.jpg"
													alt=""> <a
													href="https://htmldemo.net/ginza/ginza/assets/images/product/large-product/l-product-5.jpg"></a>
											</div>
										</div>
										<div
											class="product-details-thumbs slider-thumbs-1 tf-element-carousel"
											data-slick-options='{
                                                "slidesToShow": 4,
                                                "slidesToScroll": 1,
                                                "infinite": true,
                                                "focusOnSelect": true,
                                                "asNavFor": ".slider-lg-image-1",
                                                "arrows": false,
                                                "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-left" },
                                                "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-right" }
                                                }'
											data-slick-responsive='[
                                                {"breakpoint":991, "settings": {
                                                    "slidesToShow": 3
                                                }},
                                                {"breakpoint":767, "settings": {
                                                    "slidesToShow": 4
                                                }},
                                                {"breakpoint":479, "settings": {
                                                    "slidesToShow": 2
                                                }}
                                            ]'>
											<div class="sm-image">
												<img
													src="https://htmldemo.net/ginza/ginza/assets/images/product/small-product/s-product-1.jpg"
													alt="product image thumb">
											</div>
											<div class="sm-image">
												<img
													src="https://htmldemo.net/ginza/ginza/assets/images/product/small-product/s-product-2.jpg"
													alt="product image thumb">
											</div>
											<div class="sm-image">
												<img
													src="https://htmldemo.net/ginza/ginza/assets/images/product/small-product/s-product-3.jpg"
													alt="product image thumb">
											</div>
											<div class="sm-image">
												<img
													src="https://htmldemo.net/ginza/ginza/assets/images/product/small-product/s-product-4.jpg"
													alt="product image thumb">
											</div>
											<div class="sm-image">
												<img
													src="https://htmldemo.net/ginza/ginza/assets/images/product/small-product/s-product-5.jpg"
													alt="product image thumb">
											</div>
										</div>
									</div>
									<!--Product Details Left -->
								</div>
								<div class="col-lg-8 col-md-6">
									<!--Product Details Content Start-->
									<div class="product-details-content">
										<!--Product Nav Start-->
										<div class="product-nav">
											<a href="#"><i class="fa fa-angle-left"></i></a> <a href="#"><i
												class="fa fa-angle-right"></i></a>
										</div>
										<!--Product Nav End-->
										<h2>Aliquam lobortis est turpis mauris egestas eget</h2>
										<div class="single-product-reviews">
											<i class="fa fa-star active"></i> <i
												class="fa fa-star active"></i> <i class="fa fa-star active"></i>
											<i class="fa fa-star active"></i> <i class="fa fa-star-o"></i>
											<a class="review-link" href="#">(1 customer review)</a>
										</div>
										<div class="single-product-price">
											<span class="price new-price">$66.00</span> <span
												class="regular-price">$77.00</span>
										</div>
										<div class="product-description">
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco,Proin lectus ipsum, gravida et mattis
												vulputate, tristique ut lectus</p>
										</div>
										<div class="single-product-quantity">
											<form class="add-quantity" action="#">
												<div class="product-quantity">
													<input value="1" type="number">
												</div>
												<div class="add-to-link">
													<button class="btn">
														<i class="ion-bag"></i>add to cart
													</button>
												</div>
											</form>
										</div>
										<div class="wishlist-compare-btn">
											<a href="#" class="wishlist-btn">Add to Wishlist</a> <a
												href="#" class="add-compare">Compare</a>
										</div>
										<div class="product-meta">
											<span class="posted-in"> Categories: <a href="#">Accessories</a>,
												<a href="#">Electronics</a>
											</span>
										</div>
										<div class="single-product-sharing">
											<h3>Share this product</h3>
											<ul>
												<li><a href="#"><i class="fa fa-twitter"></i></a></li>
												<li><a href="#"><i class="fa fa-facebook"></i></a></li>
												<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
												<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
												<li><a href="#"><i class="fa fa-instagram"></i></a></li>
												<li><a href="#"><i class="fa fa-vimeo"></i></a></li>
											</ul>
										</div>
									</div>
									<!--Product Details Content End-->
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- Modal Area End -->

	</div>

	<!-- Placed js at the end of the document so the pages load faster -->

	<!-- All jquery file included here -->
	<script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
	<script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
	<script src="assets/js/vendor/jquery-migrate-3.3.2.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>