<!-- Modal Area Start -->
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
										<img src="${sessionScope.product.imageSrc1}" alt="">
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
									>
									<div class="sm-image">
										<img src="${product.imageSrc5}" alt="product image thumb">
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
									<i class="fa fa-star active"></i> <i class="fa fa-star active"></i>
									<i class="fa fa-star active"></i> <i class="fa fa-star active"></i>
									<i class="fa fa-star-o"></i> <a class="review-link" href="#">(1
										customer review)</a>
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
											<button class="btn"
												onclick="window.location.href='PCart?command=ADD_TO_CART&productId=${product.id}'">
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
<!-- Modal Area Start -->