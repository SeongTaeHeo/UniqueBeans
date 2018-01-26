<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


<link href="css/jqvmap.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/agency.min.css">
<link href="css/shop.css" rel="stylesheet">

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
				<li class="nav-item"><c:if test="${!empty loginUser.id}">
						<a class="nav-link js-scroll-trigger" href="#">${loginUser.id}님</a>
					</c:if> <c:if test="${empty loginUser.id}">
						<a class="nav-link js-scroll-trigger" href="login.jsp">Login</a>
					</c:if></li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- 주문테이블 -->
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<div class="container">
			<div id="ordering_wrap">
				<div>${loginUser.id}님</div>
				<h1>현재 주문 상품</h1>
				<hr>
				<table class="table table-striped table-hover table-bordered"
					id="ordering">
					<tbody>
						<tr>
							<th></th>
							<th>내용</th>
						</tr>
						<tr>
							<th>품종</th>
							<td id="sel_kd"></td>
						</tr>
						<tr>
							<th>국가명</th>
							<td id="sel_ct"></td>
						</tr>
						<tr>
							<th>로스팅</th>
							<td id="sel_rt"></td>
						</tr>
						<tr>
							<th>그라인딩</th>
							<td id="sel_gd"></td>
						</tr>
						<tr>
							<th>가격</th>
							<td id="sel_pr"></td>
						</tr>
					</tbody>
				</table>
				<table id="complpro_table">
					<tr>
						<th>상품내용</th>
						<th>수량</th>
						<th>삭제</th>
					</tr>
				</table>
				<button id="orderCommand" class="btn btn-default">주문하기</button>
			</div>
		</div>
	</div>

	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			data-interval="0" data-wrap="false">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="shop-step">
						<div class="hover-content"></div>
						<a class="carousel-control-next" href="#myCarousel"
							data-slide="next">
							<div class="kd1">
								<img class="" id="shop-option-main" src="img/bean.jpg" alt="">원두
								주문
								<div class="text-block">
									<h4>유니크빈 주문하기</h4>
									<p>Order my Unique Beans</p>
								</div>
							</div>
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide-to="6">
							<div class="kd1">
								<img class="" id="shop-option-main" src="img/tools.jpg" alt="">도구
								주문
								<div class="text-block">
									<h4>도구 주문하기</h4>
									<p>Order my Unique Beans Tools</p>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="carousel-item">
					<div class="shop-step">
						<a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> 
							
							<div class="hovereffect" id="kd1">
							<img class="kd1" id="shop-option-img1"
							src="img/arabica.PNG" alt="">
							<div class="overlay">
								<h2>아라비카</h2>
								<p class="info">
									아라비카는 현재 전세계 커피의 70%를 차지하는 품종이며, 우리가 접하는 원두커피는 대부분 아라비카 품종을 사용합니다.아라비카의 원산지가 에티오피아의 고산지대이며 섭씨 15도~25도 사이를 일년 내내 유지해야 재배가 가능할 정도로 재배가 어렵습니다. 또한 고산지대에서 재배되기 때문에 일교차에 의해서 향과 맛이 더 좋다고합니다. 아라비카 품종이 재배하기는 어려워도 일단 맛이 좋기 때문에 전세계 커피시장을 장악할 수 있었습니다.
								</p>
							</div>
							</div>
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> 
							<div class="hovereffect" id="kd2">
							<img class="kd2" id="shop-option-img1"
							src="img/robusta.PNG" alt="">
							<div class="overlay">
								<h2>로부스타</h2>
								<p class="info">
									아라비카 커피보다 병충해에 강하고 높은 기온이라 하더라도 재배가 가능하기 때문에 저지대에서 많이 생산이 됩니다.상대적으로 일교차가 적은 지역에서 생산이 되기 때문에 아라비카 종보다는 향이 약하고 맛도 신맛보다는 쓴맛이 강한 특성을 가지고 있습니다.
								</p>
							</div>
							</div>
						</a>

					</div>
				</div>

				<!-- 나라선택 -->
				<div class="carousel-item">
					<div class="shop-step">
						<div id="pro_status">
							<div id="btn_wrap"></div>
						</div>
					</div>
				</div>


				<!-- 로스팅선택 -->
				<div class="carousel-item">
					<div class="shop-step">
						<a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> 
							<div class="roast_hovereffect" id="rt0">
							<img class="rt0" id="shop-option-img3"
							src="img/roasting/roasting_1.PNG" alt="알수없음">
							<div class="overlay">
								<h2>라이트로스트</h2>
								<p class="info">
									커피의 향과 맛을 느낄 수 없는 초기단계이다.
								</p>
							</div>
							</div>
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> 
							<div class="roast_hovereffect" id="rt1">
							<img class="rt1" id="shop-option-img3"
							src="img/roasting/roasting_2.PNG" alt="">
							<div class="overlay">
								<h2>시나몬 로스트</h2>
								<p class="info">
									생두의 주름이 완전히 펴지지 않고, 색이 계피색 정도라 하여 시나몬 로스트라고 한다.신맛이 풍부하고 비릿한 향이 있다.
								</p>
							</div>
							</div>
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> 
							<div class="roast_hovereffect" id="rt2">
							<img class="rt2" id="shop-option-img3"
							src="img/roasting/roasting_3.PNG" alt="">
							<div class="overlay">
								<h2>미디엄로스트</h2>
								<p class="info">
									신맛과 쓴맛, 독특한 향이 나면서 깔끔한 맛으로 아메리칸 커피를 즐기는 최적의 방법이다.
								</p>
							</div>
							</div>
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> 
							<div class="roast_hovereffect" id="rt3">
							<img class="rt3" id="shop-option-img3"
							src="img/roasting/roasting_4.PNG" alt="">
							<div class="overlay">
								<h2>하이로스트</h2>
								<p class="info">
									신맛이 약해지고  쓴맛이 강해지면서 완연한 감칠맛이 나타난다.
								</p>
							</div>
							</div>
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> 
							<div class="roast_hovereffect" id="rt4">
							<img class="rt4" id="shop-option-img3"
							src="img/roasting/roasting_5.PNG" alt="">
							<div class="overlay">
								<h2>시티로스트</h2>
								<p class="info">
									신맛이 거의 없어지고 쓴맛과 달콤한 향이 나는게 특징이다.
								</p>
							</div>
							</div>
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> 
							<div class="roast_hovereffect" id="rt5">
							<img class="rt5" id="shop-option-img3"
							src="img/roasting/roasting_6.PNG" alt="">
							<div class="overlay">
								<h2>풀시티로스트</h2>
								<p class="info">
									신맛이 완전히 사라지고 부드럽고 풍부한 감칠맛이 난다.
								</p>
							</div>
							</div>
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> 
							<div class="roast_hovereffect" id="rt6">
							<img class="rt6" id="shop-option-img3"
							src="img/roasting/roasting_7.PNG" alt="">
							<div class="overlay">
								<h2>프렌치로스트</h2>
								<p class="info">
									쓴 맛이 지배적이라 에스프레소용이나 아이스커피에 사용된다.풀시티로스트에서 몇 초만 지나면 프렌치로스트 상태가 된다.
								</p>
							</div>
							</div>
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> 
							<div class="roast_hovereffect" id="rt7">
							<img class="rt7" id="shop-option-img3"
							src="img/roasting/roasting_8.PNG" alt="">
							<div class="overlay">
								<h2>이탈리안로스트</h2>
								<p class="info">
									탄화되어 표면이 검게 되고, 쓴맛과 진한 맛의 절정이다.
								</p>
							</div>
							</div>
						</a>
						<div>
							<h5 id="carousel-caption">원두의 로스팅 강도를 선택하세요</h5>
						</div>
					</div>
				</div>

				<div class="carousel-item">
					<div class="shop-step">
						<a class="carousel-control-next" href="#myCarousel"
							data-slide="next">
							<div class="grind_hovereffect" id="gd0">
							<span class="bpro_finish">
							
							 <img
								class="gd0" id="shop-option-img4"
								src="img/grinding/grinding0.PNG" alt="grind_grade">
								<div class="overlay">
								<h2>Whole Bean</h2>
								<p class="info">
									분쇄를 하지 않은 원두입니다.
								</p>
							</div>
							</span>
							</div>
								
								</a><a
							class="carousel-control-next" href="#myCarousel"
							data-slide="next">
							<div class="grind_hovereffect" id="gd1">
							<span class="bpro_finish"> <img
								class="gd1" id="shop-option-img4"
								src="img/grinding/grinding1.PNG" alt="grind_grade">
								<div class="overlay">
								<h2>Coarse Grind</h2>
								<p class="info">
									프렌치 프레스라는 추출도구로 내릴 때 사용하는 굵기 입니다.침출식의 경우에는 물과 직접 접촉하기 때문에 물이 머무는 시간이 필터에 내리는 것보다 더 길기 때문에 더 굵은 굵기를 사용합니다.
								</p>
							</div>
							</span>
							</div>
								 </a><a
							class="carousel-control-next" href="#myCarousel"
							data-slide="next">
							<div class="grind_hovereffect" id="gd2">
							<span class="bpro_finish"> <img
								class="gd2" id="shop-option-img4"
								src="img/grinding/grinding2.PNG" alt="grind_grade">
								<div class="overlay">
								<h2>Medium Coarse Grind</h2>
								<p class="info">
									카페솔로, 케멕스에 사용되는 굵기입니다. 드립보다는 약간 더 굵게 그라인딩해야 합니다.
								</p>
							</div>
							</span> 
							</div>
								</a> <a
							class="carousel-control-next" href="#myCarousel"
							data-slide="next">
							<div class="grind_hovereffect" id="gd3">
							<span class="bpro_finish"><img
								class="gd3" id="shop-option-img4"
								src="img/grinding/grinding3.PNG" alt="grind_grade">
								<div class="overlay">
								<h2>Medium Grind</h2>
								<p class="info">
									가정에서 가장 많이 즐기는 드립용 굵기입니다. 케멕스를 내려도 무방합니다.
								</p>
							</div>
							</span>
							</div>
								 </a> <a
							class="carousel-control-next" href="#myCarousel"
							data-slide="next">
							<div class="grind_hovereffect" id="gd4">
							<span class="bpro_finish"> <img
								class="gd4" id="shop-option-img4"
								src="img/grinding/grinding4.PNG" alt="grind_grade">
								<div class="overlay">
								<h2>Medium Fine Grind</h2>
								<p class="info">
									필터 드립으로 커피를 내리실 때, 종이 필터대신 메탈 필터를 사용하실 경우 사용하는 굵기입니다. 또는 사이폰과 같은 경우도 다고 가늘게 그라인딩 하실 수 있습니다.
								</p>
							</div>
							</span>
							</div>
								 </a> <a
							class="carousel-control-next" href="#myCarousel"
							data-slide="next">
							<div class="grind_hovereffect" id="gd5">
							<span class="bpro_finish"><img
								class="gd5" id="shop-option-img4"
								src="img/grinding/grinding5.PNG" alt="grind_grade">
								<div class="overlay">
								<h2>Fine Grind</h2>
								<p class="info">
									가늘게의 경우에는 에어로프레스의 경우에 이정도의 굵기를 사용하실 수 있습니다. 혹은 에스프레소의 경우에도 이정도의 굵기를 사용하 실 수 있습니다.
								</p>
							</div>
							</span>
							</div>
								 </a>

						<div>
							<h5 id="carousel-caption">원두의 분쇄도를 선택하세요</h5>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="shop-step">
						<div class="hover-content"></div>
						<a class="carousel-control-next" href="#myCarousel"
							data-slide-to="1">
							<div class="kd1">
								<img class="" id="shop-option-main" src="img/bean.jpg" alt="">원두
								추가 주문하기
								<div class="text-block">
									<h4>유니크빈 추가 주문하기</h4>
									<p>Order more my Unique Beans</p>
								</div>
							</div>
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next">
							<div class="kd1">
								<img class="" id="shop-option-main" src="img/tools.jpg" alt="">도구
								주문하기
								<div class="text-block">
									<h4>도구 추가 주문하기</h4>
									<p>Order more my Unique Beans Tools</p>
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="carousel-item">
					<div class="shop-step">
						<div class="hover-content"></div>

						<div class="tpro_wrap" id="shop-option-img5">
							<div class="tpro_img_wrap">
								<img src="img/tools/드립.jpg" class="tpro_img" alt=""
									data-toggle="modal" data-target="#myModal_1">
							</div>
							<div class="tpro_name">드립</div>
						</div>
						<div class="tpro_wrap" id="shop-option-img5">
							<div class="tpro_img_wrap">
								<img src="img/tools/사이폰.jpg" class="tpro_img" alt=""
									data-toggle="modal" data-target="#myModal_2">
							</div>
							<div class="tpro_name">사이폰</div>
						</div>
						<div class="tpro_wrap" id="shop-option-img5">
							<div class="tpro_img_wrap">
								<img src="img/tools/에스프레소.jpeg" class="tpro_img" alt=""
									data-toggle="modal" data-target="#myModal_3">
							</div>
							<div class="tpro_name">에스프레소 머신</div>
						</div>
						<div class="tpro_wrap" id="shop-option-img5">
							<div class="tpro_img_wrap">
								<img src="img/tools/융드립.jpg" class="tpro_img" alt=""
									data-toggle="modal" data-target="#myModal_4">
							</div>
							<div class="tpro_name">융드립</div>
						</div>
						<div class="tpro_wrap" id="shop-option-img5">
							<div class="tpro_img_wrap">
								<img src="img/tools/프렌치프레스.jpg" class="tpro_img" alt=""
									data-toggle="modal" data-target="#myModal_5">
							</div>
							<div class="tpro_name">프렌치프레스</div>
						</div>
					</div>
				</div>
				<!-- Modal -->
				<div class="modal fade" id="myModal_1" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content" id="tpro_modal">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">X</button>
							</div>
							<div class="modal-body">
								<h4 class="modal-title">드립</h4>
								<center>
								<div>
									<img src="img/tools/드립.jpg">
								</div>
								</center>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>상품 코드</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_code">drip</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>상품명</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_name">드립</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>가격</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_price">50,000원</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-dark">
										<tr>
											<th>상세정보</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>깔때기 모양의 드리퍼에 종이 필터를 넣고 드립 서버에 얹은 다음, 필터 안에 적절한 크기로
												분쇄한 커피를 담고 뜨거운 물을 부어 잠시 불린 다음 드립포트로 마저 물을 부어서 중력에 의한 낙차에 의해
												커피를 추출하는 방식이다.</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default add-tpro"
									data-dismiss="modal" id="AA0" style="margin-right: 10px;">추가하기</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>

				<div class="modal fade" id="myModal_2" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content" id="tpro_modal">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">X</button>

							</div>
							<div class="modal-body">
								<h4 class="modal-title">사이폰</h4>
								<center>
								<div>
									<img src="img/tools/사이폰.jpg" style="width: 300px; height: 300px;">
								</div>
								</center>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>상품 코드</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_code">syphone</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>상품명</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_name">사이폰</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>가격</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_price">200,000원</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-dark">
										<tr>
											<th>상세정보</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>커피 맛보다는 화려한 추출 기구로 유명한 도구이다. 상·하단 두 개의 유리용기로 구성되어 있고,
											하단 용기의 물이 끓어 커피 가루가 있는 상단으로 올라오면 스틱을 사용해 잘 섞어주고 그 후 커피가 다시
											하단으로 내려오는 방식이다. 추출시간은 1분을 넘지 않도록 한다.</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default add-tpro"
									data-dismiss="modal" id="AA1" style="margin-right: 10px;">추가하기</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>

				<div class="modal fade" id="myModal_3" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content" id="tpro_modal">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">X</button>

							</div>
							<div class="modal-body">
							
							<h4 class="modal-title">에스프레소 머신</h4>
								<center>
								<div>
									<img src="img/tools/에스프레소.jpeg" style="width: 300px; height: 300px;">
								</div>
								</center>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>상품 코드</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_code">espressomachine</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>상품명</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_name">에스프레소 머신</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>가격</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_price">800,000</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-dark">
										<tr>
											<th>상세정보</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>에스프레소 머신과 함께라면 버튼 하나로 커피 원두를 분쇄한 후 바로 커피를 내릴 수 있습니다.
											에스프레소와 카페 룽고는 물론, 일체형 우유 거품기로 낸 신선한 우유 거품을 올려 카푸치노 또는 라떼
											마끼아또까지 마음껏 즐겨 보세요.</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default add-tpro"
									data-dismiss="modal" id="AA2">추가하기</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>
				<div class="modal fade" id="myModal_4" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content" id="tpro_modal">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">X</button>

							</div>
							<div class="modal-body">
							
							<h4 class="modal-title">융드립</h4>
								<center>
								<div>
									<img src="img/tools/융드립.jpg" style="width: 300px; height: 300px;">
								</div>
								</center>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>상품 코드</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_code">neldrip</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>상품명</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_name">융드립</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>가격</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_price">30,000</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-dark">
										<tr>
											<th>상세정보</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>융드립(nel)넬 드립이라고도하며 핸드드립중 가장뛰어난 맛과 완벽한 추출물을 표현해 내는 수제
											감각만점 (여과법)의 제왕이다. 융드립은 내리는 사람의 개성이 가장 잘 표현되기 쉽고 커피마니아 들에게
											인기있는 추출법</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default add-tpro"
									data-dismiss="modal" id="AA3">추가하기</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>
				<div class="modal fade" id="myModal_5" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content" id="tpro_modal">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">X</button>

							</div>
							<div class="modal-body">
							
							<h4 class="modal-title">프렌치프레스</h4>
								<center>
								<div>
									<img src="img/tools/프렌치프레스.jpg"style="width: 300px; height: 300px;">
								</div>
								</center>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>상품 코드</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_code">frenchpress</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>상품명</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_name">프렌치프레스</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th>가격</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td id="tsel_price">35,000</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead class="thead-dark">
										<tr>
											<th>상세정보</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>여과지 대신 금속으로 만들어진 망을 눌러 커피를 추출하므로 커피오일 성분이 그대로 남아
											바디(Body)가 강한 커피를 마실 수 있다. 비교적 굵게 분쇄한 커피가루를 넣고 뜨거운 물을 부은 후 천천히
											망을 내려준다. 우려내기와 가압추출방식이 혼합된 추출법이다.</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default add-tpro"
									data-dismiss="modal" id="AA4">추가하기</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>

				<center>
					<a class="carousel-control-prev" href="#myCarousel"
						data-slide="prev">
						<button class="btn btn-default btn-lg active" id="prevbtn">돌아가기</button>
					</a>
					<button id="showOrder" class="btn btn-default btn-lg active">주문보기</button>
				</center>
			</div>
		</div>


		<!-- 팝업 정보 -->
		<div id="pop-up">
			<div id="canvas_wrap">
				<canvas id="canvas"></canvas>
			</div>
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
			</div>
		</div>
		<script
			src="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/js/mc_validate.js"></script>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script>
			function closeNav() {
				document.getElementById("mySidenav").style.width = "0";
				document.getElementById("main").style.marginLeft = "0";
			}
		</script>

		<script type="text/javascript"
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
		<script src="js/jqBootstrapValidation.js"></script>
		<script src="js/contact_me.js"></script>
		<script src="js/agency.min.js"></script>
		<script src="js/Chart.bundle.js"></script>
		<script src="js/utils.js"></script>
		<script src="js/shop.js"></script>
</body>
</html>