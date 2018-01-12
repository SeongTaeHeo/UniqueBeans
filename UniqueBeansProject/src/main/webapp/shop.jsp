<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Unique Bean</title>
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<link href="vendor/bootstrap/css/bootstrap.min.css?ver=2"
	rel="stylesheet">

<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<link href="css/shop.css" rel="stylesheet">
<link href="css/jqvmap.css" rel="stylesheet">
<title>Insert title here</title>

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark" id="shopNav">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="index.jsp">Unique
			Beans</a>
		<button class="navbar-toggler navbar-toggler-right" type="button">
			Menu <i class="fa fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav text-uppercase ml-auto">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#About">About</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#Shop">Shop</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#portfolio">Library</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#Board">Board</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#contact">Contact</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					data-toggle="modal" data-target="#login-modal">Login</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="conatiner">
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			data-interval="0">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="shop-step">
						<a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img1"
							src="img/arabica.jpg" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img1"
							src="img/robusta.jpg" alt="">
						</a>


						<!-- caption -->
						<div>
							<h5 id="carousel-caption">원두의 품종을 선택하세요</h5>
						</div>
					</div>
				</div>

				<!-- 나라선택 -->
				<div class="carousel-item">
					<div class="shop-step">
						<a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img2"
							src="img/about/2.jpg" alt="">
						</a>
						<div id="vmap_wrap">
							<div id="vmap"
								style="width: 400px; height: 400px; margin-right: 50px;"></div>
							<div id="info_result">
								<div>Info</div>
								<div id="info_wrapper">
									<div class="info_wrap">
										Country : <span id="info_name"></span>
									</div>
									<div class="info_wrap">
										Price : <span id="info_price"></span>
									</div>
									<div class="info_wrap">
										kind : <span id="info_kind"></span>
									</div>
									<div class="info_wrap">
										Roasting : <span id="info_rt"></span>
									</div>
									<div class="info_wrap">
										Description : <span id="info_desc"></span>
									</div>
									<div style="width: 50%" id="rd_chart_wrapper">
										<canvas id="canvas"></canvas>
									</div>
								</div>
							</div>
						</div>

						<div>
							<h5 id="carousel-caption">원두의 지역을 선택하세요</h5>
						</div>
					</div>
				</div>


				<!-- 로스팅선택 -->
				<div class="carousel-item">
					<div class="shop-step">
						<a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img3"
							src="img/roasting/roasting_1.PNG" alt="알수없음">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img3"
							src="img/roasting/roasting_2.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img3"
							src="img/roasting/roasting_3.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img3"
							src="img/roasting/roasting_4.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img3"
							src="img/roasting/roasting_5.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img3"
							src="img/roasting/roasting_6.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img3"
							src="img/roasting/roasting_7.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img3"
							src="img/roasting/roasting_8.PNG" alt="">
						</a>
						<div>
							<h5 id="carousel-caption">원두의 로스팅 강도를 선택하세요</h5>
						</div>
					</div>
				</div>

				<div class="carousel-item">
					<div class="shop-step">
						<a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img4"
							src="img/grinding/grinding0.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img4"
							src="img/grinding/grinding1.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img4"
							src="img/grinding/grinding2.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img4"
							src="img/grinding/grinding3.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img4"
							src="img/grinding/grinding4.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="" id="shop-option-img4"
							src="img/grinding/grinding5.PNG" alt="">
						</a>

						<div>
							<h5 id="carousel-caption">원두의 분쇄도를 선택하세요</h5>
						</div>
					</div>
				</div>
			</div>


			<center>
				<a class="carousel-control-prev" href="#myCarousel"
					data-slide="prev">
					<button class="btn btn-default btn-lg active" id="prevbtn">돌아가기</button>
				</a>
			</center>
		</div>
	</div>



	<!-- <div class="container">
		<div class="card shopping-cart">
			<div class="card-header bg-dark text-light">
				<i class="fa fa-shopping-cart" aria-hidden="true"></i> Shipping cart
				<a href="" class="btn btn-outline-info btn-sm pull-right">Continiu
					shopping</a>
				<div class="clearfix"></div>
			</div>
			<div class="card-body">
				PRODUCT
				<div class="row">
					<div class="col-12 col-sm-12 col-md-2 text-center">
						<img class="img-responsive" src="http://placehold.it/120x80"
							alt="prewiew" width="120" height="80">
					</div>
					<div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
						<h4 class="product-name">
							<strong>Product Name</strong>
						</h4>
						<h4>
							<small>Product description</small>
						</h4>
					</div>
					<div
						class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
						<div class="col-3 col-sm-3 col-md-6 text-md-right"
							style="padding-top: 5px">
							<h6>
								<strong>25.00 <span class="text-muted">x</span></strong>
							</h6>
						</div>
						<div class="col-4 col-sm-4 col-md-4">
							<div class="quantity">
								<input type="button" value="+" class="plus"> <input
									type="number" step="1" max="99" min="1" value="1" title="Qty"
									class="qty" size="4"> <input type="button" value="-"
									class="minus">
							</div>
						</div>
						<div class="col-2 col-sm-2 col-md-2 text-right">
							<button type="button" class="btn btn-outline-danger btn-xs">
								<i class="fa fa-trash" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				</div>
				<hr>
				END PRODUCT
				PRODUCT
				<div class="row">
					<div class="col-12 col-sm-12 col-md-2 text-center">
						<img class="img-responsive" src="http://placehold.it/120x80"
							alt="prewiew" width="120" height="80">
					</div>
					<div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
						<h4 class="product-name">
							<strong>Product Name</strong>
						</h4>
						<h4>
							<small>Product description</small>
						</h4>
					</div>
					<div
						class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
						<div class="col-3 col-sm-3 col-md-6 text-md-right"
							style="padding-top: 5px">
							<h6>
								<strong>25.00 <span class="text-muted">x</span></strong>
							</h6>
						</div>
						<div class="col-4 col-sm-4 col-md-4">
							<div class="quantity">
								<input type="button" value="+" class="plus"> <input
									type="number" step="1" max="99" min="1" value="1" title="Qty"
									class="qty" size="4"> <input type="button" value="-"
									class="minus">
							</div>
						</div>
						<div class="col-2 col-sm-2 col-md-2 text-right">
							<button type="button" class="btn btn-outline-danger btn-xs">
								<i class="fa fa-trash" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				</div>
				<hr>
				END PRODUCT
				<div class="pull-right">
					<a href="" class="btn btn-outline-secondary pull-right"> Update
						shopping cart </a>
				</div>
			</div>
			<div class="card-footer">
				<div class="coupon col-md-5 col-sm-5 no-padding-left pull-left">
					<div class="row">
						<div class="col-6">
							<input type="text" class="form-control" placeholder="cupone code">
						</div>
						<div class="col-6">
							<input type="submit" class="btn btn-default" value="Use cupone">
						</div>
					</div>
				</div>
				<div class="pull-right" style="margin: 10px">
					<a href="" class="btn btn-success pull-right">Checkout</a>
					<div class="pull-right" style="margin: 5px">
						Total price: <b>50.00€</b>
					</div>
				</div>
			</div>
		</div>
	</div> -->

	<script src="https://code.jquery.com/jquery-3.1.1.win.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>
	<script src="js/agency.min.js"></script>
	<script type="text/javascript" src="js/jquery.vmap.js"></script>
	<script type="text/javascript" src="js/jquery.vmap.world.js"
		charset="utf-8"></script>
	<script src="js/Chart.bundle.js"></script>
	<script src="js/utils.js"></script>
	<script src="js/chartjqvmap.js" type="text/javascript"></script>
</body>
</html>