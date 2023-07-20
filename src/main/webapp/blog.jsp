<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Blog || Ginza</title>
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
							<h2>Blog</h2>
							<ul class="page-breadcrumb">
								<li><a href="index.jsp">Home</a></li>
								<li>Blog</li>
							</ul>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- Page Banner Section End -->

		<!-- Blog Section Start -->
		<div
			class="blog-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50">
			<div
				class="container sb-border pb-100 pb-lg-80 pb-md-70 pb-sm-60 pb-xs-50">
				<div class="row">
					<div class="col-lg-3 order-lg-1 order-2">
						<!-- Single Sidebar Start  -->
						<div class="common-sidebar-widget">
							<h3 class="sidebar-title">Search</h3>
							<div class="sidebar-search">
								<form action="#">
									<input type="text" placeholder="Search">
									<button>
										<i class="fa fa-search"></i>
									</button>
								</form>
							</div>
						</div>
						<!-- Single Sidebar End  -->
						<!-- Single Sidebar Start  -->
						<div class="common-sidebar-widget">
							<h3 class="sidebar-title">Recent posts</h3>
							<div class="sidebar-blog">
								<a href="blog-details.jsp" class="image"><img
									src="assets/images/rc-post/blog1.jpg" alt=""></a>
								<div class="content">
									<h5>
										<a href="blog-details.jsp">Blog image post (sticky)</a>
									</h5>
									<span>April 24, 2018</span>
								</div>
							</div>
							<div class="sidebar-blog">
								<a href="blog-details.jsp" class="image"><img
									src="assets/images/rc-post/blog2.jpg" alt=""></a>
								<div class="content">
									<h5>
										<a href="blog-details.jsp">Post with Gallery</a>
									</h5>
									<span>April 24, 2018</span>
								</div>
							</div>
							<div class="sidebar-blog">
								<a href="blog-details.jsp" class="image"><img
									src="assets/images/rc-post/blog3.jpg" alt=""></a>
								<div class="content">
									<h5>
										<a href="blog-details.jsp">Post with Audio</a>
									</h5>
									<span>April 24, 2018</span>
								</div>
							</div>
							<div class="sidebar-blog">
								<a href="blog-details.jsp" class="image"><img
									src="assets/images/rc-post/blog4.jpg" alt=""></a>
								<div class="content">
									<h5>
										<a href="blog-details.jsp">Post with Video</a>
									</h5>
									<span>April 24, 2018</span>
								</div>
							</div>
						</div>
						<!-- Single Sidebar End  -->
						<!-- Single Sidebar Start  -->
						<div class="common-sidebar-widget">
							<h3 class="sidebar-title">Recent comments</h3>
							<div class="sidebar-blog">
								<div class="image">
									<img src="assets/images/icons/author.png" alt="">
								</div>
								<div class="content">
									<p>admin says:</p>
									<a href="#">Nulla auctor mi vel nisl...</a>
								</div>
							</div>
							<div class="sidebar-blog">
								<div class="image">
									<img src="assets/images/icons/author.png" alt="">
								</div>
								<div class="content">
									<p>admin says:</p>
									<a href="#">Nulla auctor mi vel nisl...</a>
								</div>
							</div>
							<div class="sidebar-blog">
								<div class="image">
									<img src="assets/images/icons/author.png" alt="">
								</div>
								<div class="content">
									<p>admin says:</p>
									<a href="#">Nulla auctor mi vel nisl...</a>
								</div>
							</div>
							<div class="sidebar-blog">
								<div class="image">
									<img src="assets/images/icons/author.png" alt="">
								</div>
								<div class="content">
									<p>admin says:</p>
									<a href="#">Nulla auctor mi vel nisl...</a>
								</div>
							</div>
						</div>
						<!-- Single Sidebar End  -->
						<!-- Single Sidebar Start  -->
						<div class="common-sidebar-widget">
							<h3 class="sidebar-title">Categories</h3>
							<ul class="sidebar-list">
								<li><a href="#"><i class="ion-plus"></i>Accessories <span
										class="count">(14)</span></a></li>
								<li><a href="#"><i class="ion-plus"></i>Decor <span
										class="count">(14)</span></a></li>
								<li><a href="#"><i class="ion-plus"></i>Furniture <span
										class="count">(28)</span></a></li>
								<li><a href="#"><i class="ion-plus"></i>Lighting <span
										class="count">(14)</span></a></li>
								<li><a href="#"><i class="ion-plus"></i>Outdoor <span
										class="count">(14)</span></a></li>
								<li><a href="#"><i class="ion-plus"></i>Sports <span
										class="count">(13)</span></a></li>
								<li><a href="#"><i class="ion-plus"></i>Storage <span
										class="count">(9)</span></a></li>
								<li><a href="#"><i class="ion-plus"></i>Toys <span
										class="count">(9)</span></a></li>
								<li><a href="#"><i class="ion-plus"></i>Uncategorized <span
										class="count">(0)</span></a></li>
							</ul>
						</div>
						<!-- Single Sidebar End  -->
						<!-- Single Sidebar Start  -->
						<div class="common-sidebar-widget">
							<h3 class="sidebar-title bb-0">Tags</h3>
							<ul class="sidebar-tag">
								<li><a href="#">Painting</a></li>
								<li><a href="#">Plumbing</a></li>
								<li><a href="#">Flooring</a></li>
								<li><a href="#">Roofing</a></li>
								<li><a href="#">Tools</a></li>
								<li><a href="#">Electrical</a></li>
							</ul>
						</div>
						<!-- Single Sidebar End  -->
					</div>
					<div class="col-lg-9 order-lg-2 order-1">
						<div class="row">
							<div class="col-12">
								<!-- Single Blog List Start -->
								<div class="blog-list mb-40">
									<div class="row">
										<div class="col-md-5">
											<div class="blog-image">
												<a href="blog-details.jsp"><img
													src="https://htmldemo.net/ginza/ginza/assets/images/blog/blog-details-1.jpg"
													alt=""></a>
												<div class="post-category">
													<a href="#">Company</a> <a href="#">Image</a> <a href="#">Travel</a>
												</div>
											</div>
										</div>
										<div class="col-md-7">
											<div class="blog-content">
												<h3 class="title">
													<a href="blog-details.jsp">Blog image post (sticky)</a>
												</h3>
												<ul class="meta">
													<li>By <a href="#" tabindex="0">admin</a></li>
													<li>12 October 2018</li>
												</ul>
												<p>Donec vitae hendrerit arcu, sit amet faucibus nisl.
													Cras pretium arcu ex. Aenean posuere libero eu augue
													condimentum rhoncus. Praesent ornare tortor ac ante egestas
													hendrerit. Aliquam et metus pharetra, bibendum massa nec,
													fermentum odio.</p>
												<a href="blog-details.jsp" class="btn">Read more</a>
											</div>
										</div>
									</div>
								</div>
								<!-- Single Blog List End -->
							</div>
							<div class="col-12">
								<!-- Single Blog List Start -->
								<div class="blog-list mb-40">
									<div class="row">
										<div class="col-md-5">
											<div class="blog-image">
												<div class="blog-gallery tf-element-carousel"
													data-slick-options='{
                                                    "slidesToShow": 1,
                                                    "slidesToScroll": 1,
                                                    "infinite": true,
                                                    "arrows": false,
                                                    "autoplay": true
                                                    }'
													data-slick-responsive='[
                                                    {"breakpoint":768, "settings": {
                                                    "slidesToShow": 1
                                                    }},
                                                    {"breakpoint":575, "settings": {
                                                    "slidesToShow": 1
                                                    }}
                                                    ]'>
													<a href="blog-details.jsp"><img
														src="https://htmldemo.net/ginza/ginza/assets/images/blog/blog-details-1.jpg"
														alt=""></a> <a href="blog-details.jsp"><img
														src="https://htmldemo.net/ginza/ginza/assets/images/blog/blog-details-2.jpg"
														alt=""></a> <a href="blog-details.jsp"><img
														src="https://htmldemo.net/ginza/ginza/assets/images/blog/blog-details-3.jpg"
														alt=""></a>
												</div>
												<div class="post-category">
													<a href="#">Company</a> <a href="#">Image</a> <a href="#">Travel</a>
												</div>
											</div>
										</div>
										<div class="col-md-7">
											<div class="blog-content">
												<h3 class="title">
													<a href="blog-details.jsp">Post with Gallery</a>
												</h3>
												<ul class="meta">
													<li>By <a href="#" tabindex="0">admin</a></li>
													<li>30 October 2018</li>
												</ul>
												<p>Donec vitae hendrerit arcu, sit amet faucibus nisl.
													Cras pretium arcu ex. Aenean posuere libero eu augue
													condimentum rhoncus. Praesent ornare tortor ac ante egestas
													hendrerit. Aliquam et metus pharetra, bibendum massa nec,
													fermentum odio.</p>
												<a href="blog-details.jsp" class="btn">Read more</a>
											</div>
										</div>
									</div>
								</div>
								<!-- Single Blog List End -->
							</div>
							<div class="col-12">
								<!-- Single Blog List Start -->
								<div class="blog-list mb-40">
									<div class="row">
										<div class="col-md-5">
											<div class="blog-image">
												<div class="blog-audio">
													<iframe
														src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/423752469&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>
												</div>
												<div class="post-category">
													<a href="#">Company</a> <a href="#">Image</a> <a href="#">Travel</a>
												</div>
											</div>
										</div>
										<div class="col-md-7">
											<div class="blog-content">
												<h3 class="title">
													<a href="blog-details.jsp">Post with Audio</a>
												</h3>
												<ul class="meta">
													<li>By <a href="#" tabindex="0">admin</a></li>
													<li>30 October 2018</li>
												</ul>
												<p>Donec vitae hendrerit arcu, sit amet faucibus nisl.
													Cras pretium arcu ex. Aenean posuere libero eu augue
													condimentum rhoncus. Praesent ornare tortor ac ante egestas
													hendrerit. Aliquam et metus pharetra, bibendum massa nec,
													fermentum odio.</p>
												<a href="blog-details.jsp" class="btn">Read more</a>
											</div>
										</div>
									</div>
								</div>
								<!-- Single Blog List End -->
							</div>
							<div class="col-12">
								<!-- Single Blog List Start -->
								<div class="blog-list mb-40">
									<div class="row">
										<div class="col-md-5">
											<div class="blog-image">
												<div class="blog-video">
													<iframe src="https://www.youtube.com/embed/5T-_dYz8Uvw"></iframe>
												</div>
												<div class="post-category">
													<a href="#">Company</a> <a href="#">Image</a> <a href="#">Travel</a>
												</div>
											</div>
										</div>
										<div class="col-md-7">
											<div class="blog-content">
												<h3 class="title">
													<a href="blog-details.jsp">Post with Video</a>
												</h3>
												<ul class="meta">
													<li>By <a href="#" tabindex="0">admin</a></li>
													<li>30 October 2018</li>
												</ul>
												<p>Donec vitae hendrerit arcu, sit amet faucibus nisl.
													Cras pretium arcu ex. Aenean posuere libero eu augue
													condimentum rhoncus. Praesent ornare tortor ac ante egestas
													hendrerit. Aliquam et metus pharetra, bibendum massa nec,
													fermentum odio.</p>
												<a href="blog-details.jsp" class="btn">Read more</a>
											</div>
										</div>
									</div>
								</div>
								<!-- Single Blog List End -->
							</div>
							<div class="col-12">
								<!-- Single Blog List Start -->
								<div class="blog-list mb-40">
									<div class="row">
										<div class="col-md-5">
											<div class="blog-image">
												<a href="blog-details.jsp"><img
													src="https://htmldemo.net/ginza/ginza/assets/images/blog/blog-details-3.jpg"
													alt=""></a>
												<div class="post-category">
													<a href="#">Company</a> <a href="#">Image</a> <a href="#">Travel</a>
												</div>
											</div>
										</div>
										<div class="col-md-7">
											<div class="blog-content">
												<h3 class="title">
													<a href="blog-details.jsp">Maecenas ultricies</a>
												</h3>
												<ul class="meta">
													<li>By <a href="#" tabindex="0">admin</a></li>
													<li>30 October 2018</li>
												</ul>
												<p>Donec vitae hendrerit arcu, sit amet faucibus nisl.
													Cras pretium arcu ex. Aenean posuere libero eu augue
													condimentum rhoncus. Praesent ornare tortor ac ante egestas
													hendrerit. Aliquam et metus pharetra, bibendum massa nec,
													fermentum odio.</p>
												<a href="blog-details.jsp" class="btn">Read more</a>
											</div>
										</div>
									</div>
								</div>
								<!-- Single Blog List End -->
							</div>
							<div class="col-12">
								<!-- Single Blog List Start -->
								<div class="blog-list mb-40">
									<div class="row">
										<div class="col-md-5">
											<div class="blog-image">
												<a href="blog-details.jsp"><img
													src="https://htmldemo.net/ginza/ginza/assets/images/blog/blog-details-2.jpg"
													alt=""></a>
												<div class="post-category">
													<a href="#">Company</a> <a href="#">Image</a> <a href="#">Travel</a>
												</div>
											</div>
										</div>
										<div class="col-md-7">
											<div class="blog-content">
												<h3 class="title">
													<a href="blog-details.jsp">Praesent imperdiet</a>
												</h3>
												<ul class="meta">
													<li>By <a href="#" tabindex="0">admin</a></li>
													<li>30 October 2018</li>
												</ul>
												<p>Donec vitae hendrerit arcu, sit amet faucibus nisl.
													Cras pretium arcu ex. Aenean posuere libero eu augue
													condimentum rhoncus. Praesent ornare tortor ac ante egestas
													hendrerit. Aliquam et metus pharetra, bibendum massa nec,
													fermentum odio.</p>
												<a href="blog-details.jsp" class="btn">Read more</a>
											</div>
										</div>
									</div>
								</div>
								<!-- Single Blog List End -->
							</div>
						</div>
						<div class="row mb-0 mb-xs-35 mb-sm-35">
							<div class="col">
								<ul class="page-pagination">
									<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
									<li class="active"><a href="#">01</a></li>
									<li><a href="#">02</a></li>
									<li><a href="#">03</a></li>
									<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Blog Section End -->

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