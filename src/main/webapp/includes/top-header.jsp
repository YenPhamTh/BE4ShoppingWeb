<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--Header section start-->
<header class="header header-sticky d-none d-lg-block">
	<div class="header-top header-transparent">
		<div class="container">
			<div class="row align-items-center">
				<!-- Header Top Social Start -->
				<div class="col-lg-3">
					<div class="header-top-social">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-instagram"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-rss"></i></a>
					</div>
				</div>
				<!-- Header Top Social End -->

				<!-- Header Logo Start -->
				<div class="col-lg-6">
					<div class="header-logo text-center">
						<a href="index.jsp"><img
							src="https://htmldemo.net/ginza/ginza/assets/images/logo.png"
							alt=""></a>
					</div>
				</div>
				<!-- Header Logo Start -->

				<!-- Header Cart Start -->
				<div class="col-lg-3 d-flex justify-content-end">
					<div class="header-search">
						<button class="header-search-toggle">
							<i class="ion-ios-search-strong"></i>
						</button>
						<div class="header-search-form">
							<form action="PShop">
								<input type="text" placeholder="Type and hit enter" name="text"
									value="${search}">
								<button>
									<i class="ion-ios-search-strong"></i>
								</button>
							</form>
						</div>
					</div>

					<div class="header-cart">
						<a href="cart.jsp"><i class="ion-bag"></i> <span> <c:if
									test="${empty sessionScope.cart.products}">0</c:if> <c:if
									test="${not empty sessionScope.cart.products}">${sessionScope.cart.products.size()}</c:if>
						</span></a>
						<!--Mini Cart Dropdown Start-->
						<div class="header-cart-dropdown">
							<ul class="cart-items">
								<c:forEach var="product" items="${sessionScope.cart.products}">
									<li class="single-cart-item">
										<div class="cart-img">
											<a href="cart.jsp"><img src="${product.imageSrc}" alt=""></a>
										</div>
										<div class="cart-content">
											<h5 class="product-name">
												<a href="single-product.jsp">${product.title}</a>
											</h5>
											<span class="product-quantity">1—</span> <span
												class="product-price">$${product.discountedPrice}</span>
										</div>
										<div class="cart-item-remove">
											<button
												onclick="window.location.href='PCart?command=REMOVE&productId=${product.id}'">
												<i class="fa fa-trash-o"></i>
											</button>
										</div>
									</li>
								</c:forEach>
							</ul>
							<div class="cart-total">
								<h5>
									Subtotal :<span class="float-right">${sessionScope.cart.totalPrice}</span>
								</h5>
							</div>
							<div class="cart-btn">
								<a href="cart.jsp">View Cart</a> <a href="checkout.jsp">checkout</a>
							</div>
						</div>
						<!--Mini Cart Dropdown End-->
					</div>
					<!-- Header Account Start -->
					<div class="col-lg-3 d-flex justify-content-end"></div>
					<div class="sub-header-right">
						<c:if test="${sessionScope.user.name == null}">
							<b><a href="login.jsp" target="blank">Login</a> </b>
							<br>
						</c:if>
						<c:if test="${sessionScope.user.name != null}">
							<b>Hello, ${sessionScope.user.name}</b>
							<a href="PLogout">Logout</a>
						</c:if>

					</div>
				</div>
				<!-- Header Account End -->
			</div>
			<!-- Header Cart End -->

		</div>
		<div class="header-bottom menu-right">
			<div class="container">
				<div class="row align-items-center">

					<!--Menu start-->
					<div class="col-lg-12 d-flex justify-content-center">
						<nav class="main-menu">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="PShop">Shop</a></li>
								<li><a href="blog.jsp">Blog</a></li>
								<li><a href="about.jsp">About Us</a></li>
								<li><a href="contact.jsp">Contact Us</a></li>
							</ul>
						</nav>
					</div>
					<!--Menu end-->
				</div>

			</div>
		</div>
	</div>
</header>
<!--Header section end-->