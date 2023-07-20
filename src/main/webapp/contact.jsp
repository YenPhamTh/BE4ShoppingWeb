<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Contact || Ginza</title>
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
							<h2>Contact</h2>
							<ul class="page-breadcrumb">
								<li><a href="index.jsp">Home</a></li>
								<li>Contact</li>
							</ul>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- Page Banner Section End -->

		<!--Contact Map section start-->
		<div class="contact-map-section section">
			<div id="contact-map" class="contact-map"></div>
		</div>
		<!--Contact Map section End-->

		<!--Contact section start-->
		<div
			class="conact-section section pt-95 pt-lg-75 pt-md-65 pt-sm-55 pt-xs-45">
			<div
				class="container sb-border pb-100 pb-lg-80 pb-md-70 pb-sm-60 pb-xs-50">

				<div class="row">
					<div class="col-lg-3 col-12">
						<div class="contact-information">
							<h3>Contact Us</h3>
							<ul>
								<li><span class="icon"><i class="fa fa-home"></i></span>
									<h4 class="text">Address</h4>
									<p>123 Main Street, Anytown, CA 12345 – USA</p></li>
								<li><span class="icon"><i
										class="fa fa-envelope-open-o"></i></span>
									<h4 class="text">Email</h4>
									<p>
										yourmail@domain.com<br> support@roadthemes.com
									</p></li>
								<li><span class="icon"><i class="fa fa-phone"></i></span>
									<h4 class="text">Phone</h4>
									<p>
										Mobile: (08) 123 456 789<br> Hotline: 1009 678 456
									</p></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-9 col-12">
						<div class="contact-form-wrap">
							<h3 class="contact-title">Tell Us Your Message</h3>
							<form id="contact-form" action="./assets/php/mail.php"
								method="post">
								<div class="row">
									<div class="col-md-12">
										<div class="contact-form-style mb-20">
											<input name="con_name" placeholder="Name*" type="text">
										</div>
									</div>
									<div class="col-md-12">
										<div class="contact-form-style mb-20">
											<input name="con_email" placeholder="Email*" type="email">
										</div>
									</div>
									<div class="col-md-12">
										<div class="contact-form-style mb-20">
											<input name="subject" placeholder="Subject*" type="text">
										</div>
									</div>
									<div class="col-md-12">
										<div class="contact-form-style">
											<textarea name="con_message"
												placeholder="Type your message here.."></textarea>
											<button class="btn" type="submit">
												<span>Send message</span>
											</button>
										</div>
									</div>
								</div>
							</form>
							<p class="form-messege"></p>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!--Contact section end-->

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