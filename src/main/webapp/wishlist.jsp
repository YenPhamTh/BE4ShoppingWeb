<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Wishlist || Ginza</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	 <!-- All css files are included here. -->
	<jsp:include page="/includes/css-source.jsp"></jsp:include>
    
</head>

<body>

    <div id="main-wrapper">

        <!--Header section start-->
       <!--Header section start-->
		<jsp:include page="/includes/top-header.jsp"></jsp:include>
        <!--Header section end-->
        <!-- Page Banner Section Start -->
        <div class="page-banner-section section bg-image" data-bg="https://htmldemo.net/ginza/ginza/assets/images/bg/breadcrumb.jpg">
            <div class="container">
                <div class="row">
                    <div class="col">

                        <div class="page-banner text-center">
                            <h2>Wishlist</h2>
                            <ul class="page-breadcrumb">
                                <li><a href="index.jsp">Home</a></li>
                                <li>Wishlist</li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Page Banner Section End -->

        <!--Wishlist section start-->
        <div class="wishlist-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50 ">
            <div class="container sb-border pb-70 pb-lg-50 pb-md-40 pb-sm-30 pb-xs-20">
                <div class="row">

                    <div class="col-12">
                        <!-- Cart Table -->
                        <div class="cart-table table-responsive mb-30">
                            <table class="table">
                             <!--FOR-EACH TO LOOP WISHLIST-->
                                <thead>
                                    <tr>
                                        <th class="pro-thumbnail">Image</th>
                                        <th class="pro-title">Product</th>
                                        <th class="pro-price">Price</th>
                                        <th class="pro-stock">Stock Status</th>
                                        <th class="pro-addtocart">Add to cart</th>
                                        <th class="pro-remove">Remove</th>
                                    </tr>
                                </thead>                     
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--Wishlist section end-->

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