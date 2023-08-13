<%@page import="project.model.Category"%>
<%@page import="project.dao.CategoryDAO"%>
<%@page import="project.model.Product"%>
<%@page import="project.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Single Product || Ginza</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- All css files are included here. -->
<jsp:include page="/includes/css-source.jsp"></jsp:include>
</head>

<body>

	<div id="main-wrapper">

		<!--Header section start-->
		<jsp:include page="/includes/top-header.jsp"></jsp:include>
		<!--Header section end-->

	<!-- Page Banner Section Start -->
	<div class="page-banner-section section bg-image"
		data-bg="https://htmldemo.net/ginza/ginza/assets/images/bg/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="page-banner text-center">
						<h2>Single Product</h2>
						<ul class="page-breadcrumb">
							<li><a href="index.jsp">Home</a></li>
							<li>Single Product</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- Page Banner Section End -->

	<!-- Single Product Section Start -->
	<div
		class="single-product-section section pb-100 pb-lg-80 pb-md-70 pb-sm-30 pb-xs-20">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="shop-area">
						<div class="row">
							<div class="col-md-6">
								<!-- Product Details Left -->
								<div class="product-details-left">
									<div class="slider-lg-image-1">
										<div class="lg-image sidebar-sticky">
											<img src="${product.imageSrc1}" alt=""> <a
												href="#"
												class="popup-img venobox vbox-item" data-gall="myGallery"><i
												class="fa fa-expand"></i></a>
										</div>
									</div>
								</div>
								<!--Product Details Left -->
							</div>
							<div class="col-md-6" id="sticky-sidebar">
								<!--Product Details Content Start-->
								<div class="product-details-content">
									<!--Product Nav Start-->
									<div class="product-nav">
										<a href="#"><i class="fa fa-angle-left"></i></a> <a href="#"><i
											class="fa fa-angle-right"></i></a>
									</div>
									<!--Product Nav End-->
									<h2>${product.title}</h2>
									<div class="single-product-reviews">
										Rating ${product.rating} <a href="#">(??? customer review)</a>
									</div>
									<div class="single-product-price">
										<span class="price new-price">$${product.discountedPrice}</span>
										<span class="regular-price">$${product.price}</span>
									</div>
									<div class="product-description">
										<p>${product.description}</p>
									</div>
									<div class="single-product-quantity">
										<button class="btn"
											onclick="window.location.href='Cart?command=ADD_TO_CART&productId=${product.id}'">
											<i class="ion-bag"></i>add to cart
										</button>

									</div>
									<div class="wishlist-compare-btn">
										<a href="#" class="wishlist-btn">Add to Wishlist</a> <a
											href="#" class="add-compare">Compare</a>
									</div>
									<div class="product-meta">
										<span class="posted-in"> Categories: <a href="#">${product.category}</a>
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
	<!-- Single Product Section End -->

	<!--Product Description Review Section Start-->
	<div class="product-description-review-section section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-review-tab section">
						<!--Review And Description Tab Menu Start-->
						<ul class="nav dec-and-review-menu">
							<li><a class="active" data-bs-toggle="tab"
								href="#description">Description</a></li>
							<li><a data-bs-toggle="tab" href="#reviews">Reviews (1)</a>
							</li>
						</ul>
						<!--Review And Description Tab Menu End-->
						<!--Review And Description Tab Content Start-->
						<div class="tab-content product-review-content-tab"
							id="myTabContent-4">
							<div class="tab-pane fade active show" id="description">
								<div class="single-product-description">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Nam fringilla augue nec est tristique auctor. Donec non est at
										libero vulputate rutrum. Morbi ornare lectus quis justo
										gravida semper. Nulla tellus mi, vulputate adipiscing cursus
										eu, suscipit id nulla.</p>
									<p>Pellentesque aliquet, sem eget laoreet ultrices, ipsum
										metus feugiat sem, quis fermentum turpis eros eget velit.
										Donec ac tempus ante. Fusce ultricies massa massa. Fusce
										aliquam, purus eget sagittis vulputate, sapien libero
										hendrerit est, sed commodo augue nisi non neque. Lorem ipsum
										dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem
										et placerat vestibulum, metus nisi posuere nisl, in accumsan
										elit odio quis mi. Cras neque metus, consequat et blandit et,
										luctus a nunc. Etiam gravida vehicula tellus, in imperdiet
										ligula euismod eget.</p>
								</div>
							</div>
							<div class="tab-pane fade" id="reviews">
								<div class="review-page-comment">
									<h2>1 review for Sit voluptatem</h2>
									<ul>
										<li>
											<div class="product-comment">
												<img
													src="https://htmldemo.net/ginza/ginza/assets/images/icons/author.png"
													alt="">
												<div class="product-comment-content">
													<div class="product-reviews">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<p class="meta">
														<strong>admin</strong> - <span>November 22, 2018</span>
													<div class="description">
														<p>Good Product</p>
													</div>
												</div>
											</div>
										</li>
									</ul>
									<div class="review-form-wrapper">
										<div class="review-form">
											<span class="comment-reply-title">Add a review </span>
											<form action="#">
												<p class="comment-notes">
													<span id="email-notes">Your email address will not
														be published.</span> Required fields are marked <span
														class="required">*</span>
												</p>
												<div class="comment-form-rating">
													<label>Your rating</label>
													<div class="rating">
														<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
														<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<div class="input-element">
													<div class="comment-form-comment">
														<label>Comment</label>
														<textarea name="message" cols="40" rows="8"></textarea>
													</div>
													<div class="review-comment-form-author">
														<label>Name </label> <input required="required"
															type="text">
													</div>
													<div class="review-comment-form-email">
														<label>Email </label> <input required="required"
															type="text">
													</div>
													<div class="comment-submit">
														<button type="submit" class="form-button">Submit</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--Review And Description Tab Content End-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Product Description Review Section Start-->

	<!--Product section start-->
	<div
		class="product-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50 pb-95 pb-lg-75 pb-md-65 pb-sm-55 pb-xs-45">
		<div class="container">

			<div class="row">
				<div class="col">
					<div class="section-title st-border mb-20 pt-20">
						<h2>Related Products</h2>
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
					<div class="single-grid-product">
						<div class="product-image">
							<div class="product-label">
								<span class="sale">-20%</span> <span class="new">New</span>
							</div>
							<a href="single-product.jsp"> <img
								src="https://htmldemo.net/ginza/ginza/assets/images/product/8-600x800.jpg"
								class="img-fluid" alt=""> <img
								src="https://htmldemo.net/ginza/ginza/assets/images/product/8_1-600x800.jpg"
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
								<span class="category"><a href="shop.jsp">Furniture</a></span> <span
									class="rating"> <i class="ion-android-star active"></i>
									<i class="ion-android-star active"></i> <i
									class="ion-android-star active"></i> <i
									class="ion-android-star active"></i> <i
									class="ion-android-star-outline"></i>
								</span>
							</div>

							<h3 class="title">
								<a href="single-product.jsp">Consequuntur magni risus
									tincidunt convallis scelerisque</a>
							</h3>
							<p class="product-price">
								<span class="discounted-price">$30.00</span>
							</p>
						</div>
					</div>
					<!--  Single Grid product End -->
				</div>
				</div>
			</div>

		</div>
	</div>
	<!--Product section end-->

	<!--Product section start-->
	<div class="product-section section">
		<div
			class="container  sb-border pb-95 pb-lg-75 pb-md-65 pb-sm-55 pb-xs-45">

			<div class="row">
				<div class="col">
					<div class="section-title st-border mb-20 pt-20">
						<h2>Upsell Products</h2>
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
					<div class="single-grid-product">
						<div class="product-image">
							<div class="product-label">
								<span class="sale">-20%</span>
							</div>
							<a href="single-product.jsp"> <img
								src="https://htmldemo.net/ginza/ginza/assets/images/product/6-600x800.jpg"
								class="img-fluid" alt=""> <img
								src="https://htmldemo.net/ginza/ginza/assets/images/product/6_1-600x800.jpg"
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
								<a href="single-product.jsp">Auctor gravida enim
									pellentesque quam ut risus</a>
							</h3>
							<p class="product-price">
								<span class="discounted-price">$85.00</span>
							</p>
						</div>
					</div>
					<!--  Single Grid product End -->
				</div>
				</div>
			</div>

		</div>

	<!--Product section end-->

	<!--NewsLetter section start-->
	<jsp:include page="/includes/newsletter.jsp"></jsp:include>
	<!--NewsLetter section end-->

	<!--Footer section start-->
	<jsp:include page="/includes/footer.jsp"></jsp:include>
	<!--Footer section end-->

	<!-- Modal Area Strat -->
	<jsp:include page="/includes/modal.jsp"></jsp:include>
	<!-- Modal Area End -->

	<!-- Placed js at the end of the document so the pages load faster -->

	<!-- All jquery file included here -->
	<jsp:include page="/includes/js-source.jsp"></jsp:include>
</body>

</html>