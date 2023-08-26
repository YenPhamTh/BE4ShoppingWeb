<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">

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
							<h2>Checkout</h2>
							<ul class="page-breadcrumb">
								<li><a href="index.jsp">Home</a></li>
								<li>Checkout</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Page Banner Section End -->

		<!--Checkout section start-->
		<div
			class="checkout-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50 ">
			<div
				class="container sb-border pb-70 pb-lg-50 pb-md-40 pb-sm-30 pb-xs-20">
				<div class="row">
					<div class="col-12">

						<!-- Checkout Form Start-->
						<form action="#" class="checkout-form">
							<div class="row row-40">

								<div class="col-lg-7">

									<!-- Billing Address -->
									<div id="billing-form" class="mb-10">
										<h4 class="checkout-title">Billing Address</h4>

										<div class="row">

											<div class="col-md-6 col-12 mb-20">
												<label>First Name*</label> <input type="text"
													placeholder="First Name">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Last Name*</label> <input type="text"
													placeholder="Last Name">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Email Address*</label> <input type="email"
													placeholder="Email Address">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Phone no*</label> <input type="text"
													placeholder="Phone number">
											</div>

											<div class="col-12 mb-20">
												<label>Company Name</label> <input type="text"
													placeholder="Company Name">
											</div>

											<div class="col-12 mb-20">
												<label>Address*</label> <input type="text"
													placeholder="Address line 1"> <input type="text"
													placeholder="Address line 2">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Country*</label> <select class="nice-select">
													<option>Vietnam</option>
													<option>Singapore</option>
													<option>Australia</option>
												</select>
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Town/City*</label> <input type="text"
													placeholder="Town/City">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>State*</label> <input type="text" placeholder="State">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Zip Code*</label> <input type="text"
													placeholder="Zip Code">
											</div>

											<div class="col-12 mb-20">
												<div class="check-box">
													<input type="checkbox" id="create_account"> <label
														for="create_account">Create an Acount?</label>
												</div>
												<div class="check-box">
													<input type="checkbox" id="shiping_address" data-shipping>
													<label for="shiping_address">Ship to Different
														Address</label>
												</div>
											</div>

										</div>

									</div>

									<!-- Shipping Address -->
									<div id="shipping-form">
										<h4 class="checkout-title">Shipping Address</h4>

										<div class="row">

											<div class="col-md-6 col-12 mb-20">
												<label>First Name*</label> <input type="text"
													placeholder="First Name">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Last Name*</label> <input type="text"
													placeholder="Last Name">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Email Address*</label> <input type="email"
													placeholder="Email Address">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Phone no*</label> <input type="text"
													placeholder="Phone number">
											</div>

											<div class="col-12 mb-20">
												<label>Company Name</label> <input type="text"
													placeholder="Company Name">
											</div>

											<div class="col-12 mb-20">
												<label>Address*</label> <input type="text"
													placeholder="Address line 1"> <input type="text"
													placeholder="Address line 2">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Country*</label> <select class="nice-select">
													<option>Vietnam</option>
													<option>Singapore</option>
													<option>Australia</option>
												</select>
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Town/City*</label> <input type="text"
													placeholder="Town/City">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>State*</label> <input type="text" placeholder="State">
											</div>

											<div class="col-md-6 col-12 mb-20">
												<label>Zip Code*</label> <input type="text"
													placeholder="Zip Code">
											</div>

										</div>

									</div>

								</div>

								<div class="col-lg-5">
									<div class="row">

										<!-- Cart Total -->
									</div>
									<div class="col-12 mb-60">

										<h4 class="checkout-title">Cart Total</h4>

										<div class="checkout-cart-total">
											<table class="table">
												<thead>
													<tr>
														<th class="pro-title">Product</th>
														<th class="pro-quantity">Quantity</th>
														<th class="pro-price">Unit Price</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="orderItem"
														items="${sessionScope.orderSummary.orderItems}">
														<tr>
															<td class="pro-title"><span>${orderItem.product.title}</span></td>
															<td class="pro-quantity"><span>${orderItem.quantity}</span></td>
															<td class="pro-price"><span>$${orderItem.product.discountedPrice}</span></td>
														</tr>
													</c:forEach>
												</tbody>
												</table>
												<h4>
													Grand Total <span>$${sessionScope.orderSummary.totalPrice}</span>
												</h4>
										</div>
									</div>

									<!-- Payment Method -->
									<div class="col-12 mb-30">

										<h4 class="checkout-title">Payment Method</h4>

										<div class="checkout-payment-method">

											<div class="single-method">
												<input type="radio" id="payment_check" name="payment-method"
													value="check"> <label for="payment_check">Check
													Payment</label>
												<p data-method="check">Please send a Check to Store name
													with Store Street, Store Town, Store State, Store Postcode,
													Store Country.</p>
											</div>

											<div class="single-method">
												<input type="radio" id="payment_bank" name="payment-method"
													value="bank"> <label for="payment_bank">Direct
													Bank Transfer</label>
												<p data-method="bank">Please send a Check to Store name
													with Store Street, Store Town, Store State, Store Postcode,
													Store Country.</p>
											</div>

											<div class="single-method">
												<input type="radio" id="payment_cash" name="payment-method"
													value="cash"> <label for="payment_cash">Cash
													on Delivery</label>
												<p data-method="cash">Please send a Check to Store name
													with Store Street, Store Town, Store State, Store Postcode,
													Store Country.</p>
											</div>

											<div class="single-method">
												<input type="radio" id="payment_paypal"
													name="payment-method" value="paypal"> <label
													for="payment_paypal">Paypal</label>
												<p data-method="paypal">Please send a Check to Store
													name with Store Street, Store Town, Store State, Store
													Postcode, Store Country.</p>
											</div>

											<div class="single-method">
												<input type="radio" id="payment_payoneer"
													name="payment-method" value="payoneer"> <label
													for="payment_payoneer">Payoneer</label>
												<p data-method="payoneer">Please send a Check to Store
													name with Store Street, Store Town, Store State, Store
													Postcode, Store Country.</p>
											</div>

											<div class="single-method">
												<input type="checkbox" id="accept_terms"> <label
													for="accept_terms">I have read and accept the terms
													& conditions</label>
											</div>

										</div>

										<button class="place-order btn btn-lg btn-round">Place
											order</button>

									</div>

								</div>
							</div>
					</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!--Checkout section end-->

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