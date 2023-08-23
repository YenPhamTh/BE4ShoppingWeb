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
			data-bg="assets/images/bg/banner.jpg">
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
										<div
											class="product-details-images-2 slider-lg-image-1 tf-element-carousel"
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
												<img src="${product.imageSrc1}" alt="">
											</div>
											<div class="lg-image">
												<img src="${product.imageSrc2}" alt="">
											</div>
											<div class="lg-image">
												<img src="${product.imageSrc3}" alt="">
											</div>
											<div class="lg-image">
												<img src="${product.imageSrc4}" alt="">
											</div>
											<div class="lg-image">
												<img src="${product.imageSrc5}" alt="">
											</div>

										</div>
										<div
											class="product-details-thumbs-2 mt-0 slider-thumbs-1 tf-element-carousel"
											data-slick-options='{
                                            "slidesToShow": 4,
                                            "slidesToScroll": 1,
                                            "infinite": true,
                                            "focusOnSelect": true,
                                            "asNavFor": ".slider-lg-image-1",
                                            "arrows": false,
                                            "vertical": true,
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
												<img src="${product.imageSrc1}" alt="product image thumb">
											</div>
											<div class="sm-image">
												<img src="${product.imageSrc2}" alt="product image thumb">
											</div>
											<div class="sm-image">
												<img src="${product.imageSrc3}" alt="product image thumb">
											</div>
											<div class="sm-image">
												<img src="${product.imageSrc4}" alt="product image thumb">
											</div>
											<div class="sm-image">
												<img src="${product.imageSrc5}" alt="product image thumb">
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
											Rating ${product.rating} <a href="#">(??? customer
												review)</a>
										</div>
										<div class="single-product-price">
											<span class="price new-price">$${product.discountedPrice}</span>
											<c:if test="${product.discountedPrice < product.price}">
												<span class="regular-price">$${product.price}</span>
											</c:if>
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
										<p>${product.description}</p>
										<p></p>
									</div>
								</div>
								<div class="tab-pane fade" id="reviews">
									<div class="review-page-comment">
										<h2>Latest Reviews</h2>
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