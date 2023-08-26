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
<title>Shop || LinhYen</title>
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
							<h2>Shop</h2>
							<ul class="page-breadcrumb">
								<li><a href="index.jsp">Home</a></li>
								<li>Shop</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Page Banner Section End -->

		<!-- Shop Section Start -->
		<div class="shop-section section">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div
							class="shop-area sb-border pb-70 pb-lg-50 pb-md-40 pb-sm-60 pb-xs-50">
							<div class="row">
								<div class="col-12">
									<!-- Grid & List View Start -->
									<div
										class="shop-topbar-wrapper d-flex justify-content-between align-items-center">
										<div class="grid-list-option d-flex">
											<ul class="nav">
												<li><a class="active show" data-bs-toggle="tab"
													href="#grid"><i class="fa fa-th"></i></a></li>
												<li><a data-bs-toggle="tab" href="#list" class=""><i
														class="fa fa-th-list"></i></a></li>
											</ul>
											<p>
												Showing <b>${count}</b> products
											</p>
										</div>
										<!--Toolbar Short Area Start-->

										<!--Toolbar Short Area End-->
									</div>
									<!-- Grid & List View End -->
								</div>
							</div>
							<div class="row">
								<div class="col-lg-3 order-lg-1 order-2">
									<form method="get" action="Shop">
										<!-- Single Sidebar Start  -->
										<div class="common-sidebar-widget">
											<h3 class="sidebar-title">Product categories</h3>
											<ul class="sidebar-list">
												<c:forEach var="category" items="${categoryList}">
													<li><input type="checkbox" name="category"
														value="${category.id}"> ${category.name}</li>
												</c:forEach>
											</ul>
										</div>
										<!-- Single Sidebar End  -->
										<!-- Single Sidebar Start  -->
										<div class="common-sidebar-widget">
											<h3 class="sidebar-title">Filter by price</h3>
											<input type="range" name="max" id="range_weight" value="500"
												min="1" max="500"
												oninput="range_weight_disp.value = range_weight.value">
											<output id="range_weight_disp"></output>
										</div>
										<!-- Single Sidebar End  -->
										<!-- Single Sidebar Start  -->
										<div class="common-sidebar-widget">
											<h3 class="sidebar-title">Filter by Color</h3>
											<ul class="sidebar-tag">
												<c:forEach var="color" items="${colorList}">
													<li><input type="checkbox" name="color"
														value="${color.color}"> ${color.color}</li>
												</c:forEach>
											</ul>
										</div>
										<input type="submit" value="Search" /> <input type="reset"
											value="Clear" href="Shop" />
									</form>
									<!-- Single Sidebar End  -->
									<!-- Single Sidebar Start - compare product  -->
									<!-- Single Sidebar End  -->
								</div>
								<div class="col-lg-9 order-lg-2 order-1">
									<div class="row">
										<div class="col-12">
											<div class="shop-product">
												<div id="myTabContent-2" class="tab-content">
													<div id="grid" class="tab-pane fade active show">
														<div class="product-grid-view">
															<div class="row">
																<!--  Single Grid product Start -->
																<c:forEach var="product" items="${productList}">
																	<div class="col-lg-4 col-md-6 col-sm-6">
																		<div class="single-grid-product mb-30">
																			<div class="product-image">
																				<div class="product-label">
																					<c:if
																						test="${product.discountedPrice < product.price}">
																						<span class="sale">Sales</span>
																					</c:if>

																					<c:if test="${product.lableIsNew == true}">
																						<span class="new">New</span>
																					</c:if>
																				</div>
																				<a href="ProductDetail?productId=${product.id}">
																					<img src="${product.imageSrc1}" class="img-fluid"
																					alt=""> <img src="${product.imageSrc2}"
																					class="img-fluid" alt="">
																				</a>

																				<div
																					class="product-action d-flex justify-content-between">
																					<a class="product-btn"
																						href="Cart?command=ADD_TO_CART&productId=${product.id}">Add
																						to Cart</a>
																				</div>
																			</div>
																			<div class="product-content">
																				<div class="product-category-rating">
																					<span class="category"><a href="shop.jsp">
																							${product.category}</a></span>
																					
																					<c:forEach var="i" begin="1" end="${product.rating}">
																					<span class="rating">
																						<i class="fa fa-star" style="color:orange"></i></span>
																					</c:forEach> 	
																				</div>

																				<h3 class="title">
																					<a href="ProductDetail?productId=${product.id}">${product.title}</a>
																				</h3>
																				<p class="product-price">
																					<c:if
																						test="${product.discountedPrice < product.price}">
																						<span class="discounted-price">$${product.discountedPrice}</span>
																						<span class="main-price discounted">$${product.price}</span>
																					</c:if>
																					<c:if
																						test="${product.discountedPrice == product.price}">
																						<span class="discounted-price">$${product.price}</span>
																					</c:if>

																				</p>
																			</div>
																		</div>
																		<!--  Single Grid product End -->
																	</div>
																</c:forEach>
															</div>
															<!-- Single List Product End -->
														</div>
													</div>
													<div id="list" class="tab-pane fade">
														<div class="product-list-view">
															<!-- Single List Product Start -->
															<c:forEach var="product" items="${productList}">
																<div class="product-list-item mb-40">
																	<div class="row">
																		<div class="col-md-4 col-sm-6">
																			<div class="single-grid-product">
																				<div class="product-image">
																					<div class="product-label">
																						<c:if
																							test="${product.discountedPrice < product.price}">
																							<span class="sale">Sales</span>
																						</c:if>

																						<c:if test="${product.lableIsNew == true}">
																							<span class="new">New</span>
																						</c:if>
																					</div>
																					<a href="ProductDetail?productId=${product.id}">
																						<img src="${product.imageSrc1}" class="img-fluid"
																						alt=""> <img src="${product.imageSrc2}"
																						class="img-fluid" alt="">
																					</a>

																					<div
																						class="product-action d-flex justify-content-between">
																						<a class="product-btn"
																							href="Cart?command=ADD_TO_CART&productId=${product.id}">Add
																							to Cart</a>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="col-md-8 col-sm-6">
																			<div class="product-content-shop-list">
																				<div class="product-content">
																					<span class="category"><a href="shop.jsp">
																							${product.category}</a>
																						<h3 class="title">
																							<a href="ProductDetail?productId=${product.id}">${product.title}</a>
																						</h3>
																						<div class="product-category-rating"></span>
																						<span
																						class="rating">Rating: ${product.rating} <i class="fa fa-star"></i></span>
																						<span
																						class="review"><a href="#"></a></span>
																				</div>
																				<p class="product-price">
																					<c:if
																						test="${product.discountedPrice < product.price}">
																						<span class="discounted-price">$${product.discountedPrice}</span>
																						<span class="main-price discounted">$${product.price}</span>
																					</c:if>
																					<c:if
																						test="${product.discountedPrice == product.price}">
																						<span class="discounted-price">$${product.price}</span>
																					</c:if>
																				</p>
																				<p class="product-desc">${product.description}</p>
																			</div>
																		</div>
																	</div>
																</div>
														</div>
														</c:forEach>
														<!-- Single List Product Start -->
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row mb-30 mb-sm-40 mb-xs-30">
							<div class="col">
								<ul class="page-pagination">
									<c:forEach begin="1" end="${endPage}" var="i">
										<li class="${pageIndex == i?"active":""}" ><a
											href="Shop?pageIndex=${i}">${i}</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<!-- Shop Section End -->

	<!--NewsLetter section start-->
	<jsp:include page="/includes/newsletter.jsp"></jsp:include>
	<!--NewsLetter section end-->

	<!--Footer section start-->
	<jsp:include page="/includes/footer.jsp"></jsp:include>
	<!--Footer section end-->

	<!-- Modal Area Start -->
	<jsp:include page="/includes/modal.jsp"></jsp:include>
	<!-- Modal Area End -->

	</div>

	<!-- Placed js at the end of the document so the pages load faster -->

	<!-- All jquery file included here -->
	<jsp:include page="/includes/js-source.jsp"></jsp:include>
</body>

</html>