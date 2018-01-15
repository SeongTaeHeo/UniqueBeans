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
<body id="main">
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

	<!-- 주문테이블 -->
		<div id="mySidenav" class="sidenav hidden">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<div class="container">

				<h1>주문상황</h1>
				<hr>
				<table class="table table-striped table-hover table-bordered">
					<tbody>
						<tr>
							<th>상품</th>
							<th>개수</th>
							<th>개당 가격</th>
							<th>총합</th>
						</tr>
						<tr>
							<td>원두</td>
							<td>1 <a href="#"></a></td>
							<td>250.00</td>
							<td>250.00</td>
						</tr>
						<tr>
							<th colspan="3"><span class="pull-right">상품 가격</span></th>
							<th>250.00</th>
						</tr>
						<tr>
							<th colspan="3"><span class="pull-right">부가세 20%</span></th>
							<th>50.00</th>
						</tr>
						<tr>
							<th colspan="3"><span class="pull-right">총 가격</span></th>
							<th>300.00</th>
						</tr>

					</tbody>
				</table>

			</div>
		</div>

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
								style="width: 800px; height: 400px; margin-right: 50px;"></div>
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
				<button class="btn btn-default btn-lg active" onclick="openNav()">주문보기</button>
			</center>
		</div>
	</div>

	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "400px";
			document.getElementById("main").style.marginLeft = "400px";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
			document.getElementById("main").style.marginLeft = "0";
		}
	</script>
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