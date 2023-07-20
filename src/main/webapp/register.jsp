<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Account Register || Ginza</title>
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
							<h2>Login Register</h2>
							<ul class="page-breadcrumb">
								<li><a href="index.jsp">Home</a></li>
								<li>Register</li>
							</ul>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- Page Banner Section End -->

		<!--Login Register section start-->
		<div
			class="login-register-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50">
			<div
				class="container sb-border pb-70 pb-lg-50 pb-md-40 pb-sm-30 pb-xs-20">
				<div class="row">
					
					<!--Register Form Start-->
					<div class="col-md-6 col-sm-6">
						<div class="customer-login-register register-pt-0">
							<div class="form-register-title">
								<h2>Register</h2>
							</div>
							<div class="register-form">
								<form action="PRegister" method="post">
									<div class="form-fild">
										<p>
											<label>Username<span
												class="required">*</span></label>
										</p>
										<input name="username" value="" type="text">
									</div>
									<div class="form-fild">
										<p>
											<label>Email address <span
												class="required">*</span></label>
										</p>
										<input name="email" value="" type="text">
									</div>
									<div class="form-fild">
										<p>
											<label>Password <span class="required">*</span></label>
										</p>
										<input name="password" value="" type="password">
									</div>
									<div class="register-submit">
										<button type="submit" class="btn">Register</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!--Register Form End-->
				</div>
			</div>
		</div>
		<!--Login Register section end-->

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

	<!-- All js query file included here -->
	<jsp:include page="/includes/js-source.jsp"></jsp:include>
</body>

</html>