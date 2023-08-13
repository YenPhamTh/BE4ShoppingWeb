<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cart || Ginza</title>
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
							<h2>Shopping Cart</h2>
							<ul class="page-breadcrumb">
								<li><a href="index.jsp">Home</a></li>
								<li>Shopping Cart</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Page Banner Section End -->

		<!--Cart section start-->
		<div
			class="cart-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50 ">
			<div
				class="container sb-border pb-70 pb-lg-50 pb-md-40 pb-sm-30 pb-xs-20">
				<div class="row">

					<div class="col-12">
						<!-- Cart Table -->
						<div class="cart-table table-responsive mb-30">
							<c:if test="${empty sessionScope.cart.products}">
								<h3 style="color: red;">
									No product in cart. <a href="Shop">Continue to purchase</a>
								</h3>
							</c:if>
							<c:if test="${not empty sessionScope.cart.products}">
								<table class="table">
									<thead>
										<tr>
											<th class="pro-thumbnail">Image</th>
											<th class="pro-title">Product</th>
											<th class="pro-price">Price</th>
											<th class="pro-quantity">Quantity</th>
											<th class="pro-subtotal">SubTotal</th>
											<th class="pro-remove">Remove</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="product" items="${sessionScope.cart.products}">
											<tr>
												<td class="pro-thumbnail"><a href="#"><img
														src="${product.imageSrc1}" alt="Product"></a></td>
												<td class="pro-title"><a href="#">${product.title}</a></td>
												<td class="pro-price"><span>$${product.discountedPrice}</span></td>
												<td class="pro-quantity">
													<div class="pro-qty">
														<input type="number" value="1" name="quantity">
													</div>
												</td>
												<td class="pro-subtotal"><span>(Chua biet lam)</span></td>
												<td class="pro-remove">
													<button
														onclick="window.location.href='Cart?command=REMOVE&productId=${product.id}'">
														<i class="fa fa-trash-o"></i>
													</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:if>
						</div>

						<div class="row">

							<div class="col-lg-6 col-12 mb-5">
								<!-- Calculate Shipping -->
								<div class="calculate-shipping">
									<h4>Calculate Shipping</h4>
									<form action="#">
										<div class="row">
											<div class="col-md-6 col-12 mb-25">
												<select class="nice-select">
													<option>Bangladesh</option>
													<option>China</option>
													<option>country</option>
													<option>India</option>
													<option>Japan</option>
												</select>
											</div>
											<div class="col-md-6 col-12 mb-25">
												<select class="nice-select">
													<option>Dhaka</option>
													<option>Barisal</option>
													<option>Khulna</option>
													<option>Comilla</option>
													<option>Chittagong</option>
												</select>
											</div>
											<div class="col-md-6 col-12 mb-25">
												<input type="text" placeholder="Postcode / Zip">
											</div>
											<div class="col-md-6 col-12 mb-25">
												<button class="btn">Estimate</button>
											</div>
										</div>
									</form>
								</div>
								<!-- Discount Coupon -->
								<div class="discount-coupon">
									<h4>Discount Coupon Code</h4>
									<form action="#">
										<div class="row">
											<div class="col-md-6 col-12 mb-25">
												<input type="text" placeholder="Coupon Code">
											</div>
											<div class="col-md-6 col-12 mb-25">
												<button class="btn">Apply Code</button>
											</div>
										</div>
									</form>
								</div>
							</div>

							<!-- Cart Summary -->
							<div class="col-lg-6 col-12 mb-30 d-flex">
								<div class="cart-summary">
									<div class="cart-summary-wrap">
										<h4>Cart Summary</h4>
										<p>
											Sub Total <span>${sessionScope.cart.totalPrice}</span>
										</p>
										<p>
											Shipping Cost <span>$00.00</span>
										</p>
										<h2>
											Grand Total <span>${sessionScope.cart.totalPrice}</span>
										</h2>
									</div>
									<div class="cart-summary-button">
										<c:if test="${not empty sessionScope.user}">
											<button class="btn"
												onclick="window.location.href='Cart?command=CHECK_OUT'">Checkout</button>
										</c:if>
										<button class="btn">Update Cart</button>
									</div>
								</div>
							</div>

						</div>

					</div>

				</div>
			</div>
		</div>
		<!--Cart section end-->

		<!--NewsLetter section start-->
		<jsp:include page="/includes/newsletter.jsp"></jsp:include>
		<!--NewsLetter section end-->

		<!--Footer section start-->
		<jsp:include page="/includes/footer.jsp"></jsp:include>
		<!--Footer section end-->

		<!-- Modal Area Strat -->
		<jsp:include page="/includes/modal.jsp"></jsp:include>
		<!-- Modal Area End -->

	</div>

	<!-- Placed js at the end of the document so the pages load faster -->

	<!-- All jquery file included here -->
	<jsp:include page="/includes/js-source.jsp"></jsp:include>

</body>

</html>