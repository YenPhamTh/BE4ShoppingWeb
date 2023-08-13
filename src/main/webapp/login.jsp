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
<title>Login Register || Ginza</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- All css files are included here. -->
<jsp:include page="/includes/css-source.jsp"></jsp:include>
<!--Encrypt password-->

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
							<h2>Login</h2>
							<ul class="page-breadcrumb">
								<li><a href="index.jsp">Home</a></li>
								<li>Login</li>
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
					<!--Login Form Start-->
					<div class="col-md-6 col-sm-6">
						<div class="customer-login-register">
							<div class="form-login-title">
								<h2>Login</h2>
							</div>
							<div class="login-form">
							<h4>${ErrorMessage}</h4>
								<form action="Login" method="post">
									<div class="form-fild">
										<p>
											<label>Email address <span
												class="required">*</span></label>
										</p>
										<input name="email" value="" type="text" placeholder="Input your email">
									</div>
									<div class="form-fild">
										<p>
											<label>Password <span class="required">*</span></label>
										</p>
										<input name="password" value="" type="password" placeholder="Input your password">
									</div>
									<div class="login-submit">
										<button type="submit" class="btn">Login</button>
										<label> <input class="checkbox" name="rememberme"
											value="" type="checkbox"> <span>Remember me</span>
										</label>
									</div>
									<div class="lost-password">
										<a href="#">Lost your password?</a> || <a href="register.jsp">Create new account</a>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!--Login Form End-->
					
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

	<!-- All jquery file included here -->
	<jsp:include page="/includes/js-source.jsp"></jsp:include>
</body>

</html>