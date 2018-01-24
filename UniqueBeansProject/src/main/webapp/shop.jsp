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
					</tbody>
				</table>
				<table id="complpro_table">
					<tr>
						<th>상품내용</th>
						<th>수량</th>
						<th>가격</th>
						<th>삭제</th>
					</tr>
				</table>
				<a href="####"><button class="btn btn-default">주문하기</button></a>
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
							data-slide="next"> <img class="kd1" id="shop-option-img1"
							src="img/arabica.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="kd2" id="shop-option-img1"
							src="img/robusta.PNG" alt="">
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
							data-slide="next"> <img class="rt0" id="shop-option-img3"
							src="img/roasting/roasting_1.PNG" alt="알수없음">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="rt1" id="shop-option-img3"
							src="img/roasting/roasting_2.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="rt2" id="shop-option-img3"
							src="img/roasting/roasting_3.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="rt3" id="shop-option-img3"
							src="img/roasting/roasting_4.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="rt4" id="shop-option-img3"
							src="img/roasting/roasting_5.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="rt5" id="shop-option-img3"
							src="img/roasting/roasting_6.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="rt6" id="shop-option-img3"
							src="img/roasting/roasting_7.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="rt7" id="shop-option-img3"
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
							data-slide="next"><span class="bpro_finish"> <img
								class="gd0" id="shop-option-img4"
								src="img/grinding/grinding0.PNG" alt="grind_grade"></span> </a><a
							class="carousel-control-next" href="#myCarousel"
							data-slide="next"><span class="bpro_finish"> <img
								class="gd1" id="shop-option-img4"
								src="img/grinding/grinding1.PNG" alt="grind_grade"></span> </a><a
							class="carousel-control-next" href="#myCarousel"
							data-slide="next"><span class="bpro_finish"> <img
								class="gd2" id="shop-option-img4"
								src="img/grinding/grinding2.PNG" alt="grind_grade"></span> </a> <a
							class="carousel-control-next" href="#myCarousel"
							data-slide="next"><span class="bpro_finish"><img
								class="gd3" id="shop-option-img4"
								src="img/grinding/grinding3.PNG" alt="grind_grade"></span> </a> <a
							class="carousel-control-next" href="#myCarousel"
							data-slide="next"><span class="bpro_finish"> <img
								class="gd4" id="shop-option-img4"
								src="img/grinding/grinding4.PNG" alt="grind_grade"></span> </a> <a
							class="carousel-control-next" href="#myCarousel"
							data-slide="next"><span class="bpro_finish"><img
								class="gd5" id="shop-option-img4"
								src="img/grinding/grinding5.PNG" alt="grind_grade"></span> </a>

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
							<div class="tpro_price">가격</div>
						</div>
						<div class="tpro_wrap" id="shop-option-img5">
							<div class="tpro_img_wrap">
								<img src="img/tools/사이폰.jpg" class="tpro_img" alt=""
									data-toggle="modal" data-target="#myModal_2">
							</div>
							<div class="tpro_name">사이폰</div>
							<div class="tpro_price">가격</div>
						</div>
						<div class="tpro_wrap" id="shop-option-img5">
							<div class="tpro_img_wrap">
								<img src="img/tools/에스프레소.jpeg" class="tpro_img" alt=""
									data-toggle="modal" data-target="#myModal_3">
							</div>
							<div class="tpro_name">에스프레소 머신</div>
							<div class="tpro_price">가격</div>
						</div>
						<div class="tpro_wrap" id="shop-option-img5">
							<div class="tpro_img_wrap">
								<img src="img/tools/융드립.jpg" class="tpro_img" alt=""
									data-toggle="modal" data-target="#myModal_4">
							</div>
							<div class="tpro_name">융드립</div>
							<div class="tpro_price">가격</div>
						</div>
						<div class="tpro_wrap" id="shop-option-img5">
							<div class="tpro_img_wrap">
								<img src="img/tools/프렌치프레스.jpg" class="tpro_img" alt=""
									data-toggle="modal" data-target="#myModal_5">
							</div>
							<div class="tpro_name">프렌치프레스</div>
							<div class="tpro_price">가격</div>
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
								<div>
									<img src="img/tools/드립.jpg">
								</div>
								<table>
									<tr>
										<th>상품코드</th>
										<td id="tsel_code">drip</td>
									</tr>
									<tr>
										<th>상품명</th>
										<td id="tsel_name">드립</td>
									</tr>
									<tr>
										<th>가격</th>
										<td id="tsel_price">50,000</td>
									</tr>
									<tr>
										<th>상세정보</th>
										<td>깔때기 모양의 드리퍼에 종이 필터를 넣고 드립 서버에 얹은 다음, 필터 안에 적절한 크기로
											분쇄한 커피를 담고 뜨거운 물을 부어 잠시 불린 다음 드립포트로 마저 물을 부어서 중력에 의한 낙차에 의해
											커피를 추출하는 방식이다.</td>
									</tr>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" id="add_complpro">추가하기</button>
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
								<div>
									<img src="img/tools/사이폰.jpg">
								</div>
								<table>
									<tr>
										<th>상품코드</th>
										<td id="tsel_code">syphone</td>
									</tr>
									<tr>
										<th>상품명</th>
										<td id="tsel_name">사이폰</td>
									</tr>
									<tr>
										<th>가격</th>
										<td id="tsel_price">200,000</td>
									</tr>
									<tr>
										<th>상세정보</th>
										<td>커피 맛보다는 화려한 추출 기구로 유명한 도구이다. 상·하단 두 개의 유리용기로 구성되어 있고,
											하단 용기의 물이 끓어 커피 가루가 있는 상단으로 올라오면 스틱을 사용해 잘 섞어주고 그 후 커피가 다시
											하단으로 내려오는 방식이다. 추출시간은 1분을 넘지 않도록 한다.</td>
									</tr>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" id="add_complpro">추가하기</button>
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
								<div>
									<img src="img/tools/에스프레소.jpeg">
								</div>
								<table>
									<tr>
										<th>상품코드</th>
										<td id="tsel_code">espressomachine</td>
									</tr>
									<tr>
										<th>상품명</th>
										<td id="tsel_name">에스프레소 머신</td>
									</tr>
									<tr>
										<th>가격</th>
										<td id="tsel_price">800,000</td>
									</tr>
									<tr>
										<th>상세정보</th>
										<td>에스프레소 머신과 함께라면 버튼 하나로 커피 원두를 분쇄한 후 바로 커피를 내릴 수 있습니다.
											에스프레소와 카페 룽고는 물론, 일체형 우유 거품기로 낸 신선한 우유 거품을 올려 카푸치노 또는 라떼
											마끼아또까지 마음껏 즐겨 보세요.</td>
									</tr>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" id="add_complpro">추가하기</button>
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
								<div>
									<img src="img/tools/융드립.jpg">
								</div>
								<table>
									<tr>
										<th>상품코드</th>
										<td id="tsel_code">neldrip</td>
									</tr>
									<tr>
										<th>상품명</th>
										<td id="tsel_name">융드립</td>
									</tr>
									<tr>
										<th>가격</th>
										<td id="tsel_price">30,000</td>
									</tr>
									<tr>
										<th>상세정보</th>
										<td>융드립(nel)넬 드립이라고도하며 핸드드립중 가장뛰어난 맛과 완벽한 추출물을 표현해 내는 수제
											감각만점 (여과법)의 제왕이다. 융드립은 내리는 사람의 개성이 가장 잘 표현되기 쉽고 커피마니아 들에게
											인기있는 추출법</td>
									</tr>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" id="add_complpro">추가하기</button>
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
								<div>
									<img src="img/tools/프렌치프레스.jpg">
								</div>
								<table>
									<tr>
										<th>상품코드</th>
										<td id="tsel_code">frenchpress</td>
									</tr>
									<tr>
										<th>상품명</th>
										<td id="tsel_name">프렌치프레스</td>
									</tr>
									<tr>
										<th>가격</th>
										<td id="tsel_price">35,000</td>
									</tr>
									<tr>
										<th>상세정보</th>
										<td>여과지 대신 금속으로 만들어진 망을 눌러 커피를 추출하므로 커피오일 성분이 그대로 남아
											바디(Body)가 강한 커피를 마실 수 있다. 비교적 굵게 분쇄한 커피가루를 넣고 뜨거운 물을 부은 후 천천히
											망을 내려준다. 우려내기와 가압추출방식이 혼합된 추출법이다.</td>
									</tr>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" id="add_complpro">추가하기</button>
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
			function openNav() {

			}
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
		<script type="text/javascript">
			$(function() {

				var param = '[';

				$('#showOrder').click(function() {
					document.getElementById("mySidenav").style.width = "400px";
					document.getElementById("main").style.marginLeft = "400px";

					param = param.substr(0, param.length - 1);

					param += ']';
					console.log(param);

					$.ajax({
						url : 'orderDetailInput.do',
						method : 'post',
						contentType : 'application/json',
						data : param,
						type : 'text',

						success : function() {
							alert('test');
						}
					});
				});

				$(".kd1")
						.click(
								function() {
									console.log("아라비카 클릭");
									$("#sel_kd").empty();
									$("#sel_kd").append("아라비카");
									$
											.ajax({
												url : 'ajax/country.json',
												dataType : 'json',
												success : function(data) {
													console.log("ajax 연결 성공");
													$('#btn_wrap').empty();
													for (var i = 0; i < data.length; i++) {
														if (data[i].kd == "Arabica") {
															$('#btn_wrap')
																	.append(
																			"<a class='carousel-control-next'"+
								"href='#myCarousel' data-slide='next'>"
																					+ "<img id='shop-option-img2' class='pro_country'"
								+"src='img/country_img/" + data[i].id + ".jpg' alt ='"
								+ data[i].id + "'></a>");
														} else {
															continue;
														}
													}
													var moveLeft = 10;
													var moveDown = 20;

													$(".pro_country")
															.mouseenter(
																	function(e) {
																		var mover_country = $(
																				this)
																				.attr(
																						"alt");
																		for (var j = 0; j < data.length; j++) {
																			if (mover_country == data[j].id) {
																				var color = Chart.helpers.color;
																				var config = {
																					type : 'radar',
																					data : {
																						labels : [
																								"Aroma",
																								"Bitters",
																								"Acidity",
																								"Balance",
																								"Body",
																								"Sweet" ],
																						datasets : [ {
																							label : data[j].name,
																							borderColor : window.chartColors.yellow,
																							backgroundColor : color(
																									window.chartColors.yellow)
																									.alpha(
																											0.7)
																									.rgbString(),
																							pointBackgroundColor : window.chartColors.yellow,
																							data : [
																									data[j].ar,
																									data[j].bi,
																									data[j].ac,
																									data[j].ba,
																									data[j].bo,
																									data[j].sw ]
																						} ]
																					}
																				};

																				$(
																						'#canvas')
																						.remove();
																				$(
																						"#canvas_wrap")
																						.append(
																								"<canvas id='canvas'></canvas>");
																				myRadar = new Chart(
																						document
																								.getElementById("canvas"),
																						config);
																				$(
																						"#info_name")
																						.empty();
																				$(
																						"#info_name")
																						.append(
																								data[j].name);
																				$(
																						"#info_kind")
																						.empty();
																				$(
																						"#info_kind")
																						.append(
																								data[j].kind);
																				$(
																						"#info_price")
																						.empty();
																				$(
																						"#info_price")
																						.append(
																								data[j].price);
																				$(
																						"#info_rt")
																						.empty();
																				$(
																						"#info_rt")
																						.append(
																								data[j].price);

																				$(
																						"#sel_kt")
																						.empty();
																				$(
																						"#sel_kt")
																						.append(
																								data[j].kind
																										+ data[j].name);

																				/* 팝업 생성 시작 */
																				$(
																						'.pro_country')
																						.hover(
																								function(
																										e) {
																									$(
																											'div#pop-up')
																											.show();
																									$(
																											'div#pop-up')
																											.css(
																													'top',
																													e.pageY
																															+ moveDown);
																									$(
																											'div#pop-up')
																											.css(
																													'left',
																													e.pageX
																															+ moveLeft);
																									$(
																											'div#pop-up')
																											.appendTo(
																													'body');
																								},
																								function() {
																									$(
																											'div#pop-up')
																											.hide();
																								});
																				$(
																						'.pro_country')
																						.mousemove(
																								function(
																										e) {
																									$(
																											"div#pop-up")
																											.css(
																													'top',
																													e.pageY
																															+ moveDown)
																											.css(
																													'left',
																													e.pageX
																															+ moveLeft);
																								});

																				/* 팝업생성 끝 */
																			} else {
																				continue;
																			}
																		}

																		$(
																				".pro_country")
																				.click(
																						function() {
																							var selected_ct = $(
																									this)
																									.attr(
																											"alt");
																							$(
																									"#sel_ct")
																									.empty();
																							$(
																									"#sel_ct")
																									.append(
																											selected_ct);
																						});
																	});
												}
											});
								});

				$(".kd2")
						.click(
								function() {
									console.log("로부스타 클릭");
									$("#sel_kd").empty();
									$("#sel_kd").append("로부스타");
									$
											.ajax({
												url : 'ajax/country.json',
												dataType : 'json',
												success : function(data) {
													console.log("ajax 연결 성공");
													$('#btn_wrap').empty();
													for (var i = 0; i < data.length; i++) {
														if (data[i].kd == "Robusta") {
															$('#btn_wrap')
																	.append(
																			"<a class='carousel-control-next'"+
								"href='#myCarousel' data-slide='next'>"
																					+ "<img id='shop-option-img2' class='pro_country'"
								+"src='img/country_img/" + data[i].id + ".jpg' alt ='"
								+ data[i].id + "'></a>");
														} else {
															continue;
														}
													}
													var moveLeft = 10;
													var moveDown = 20;

													$(".pro_country")
															.mouseenter(
																	function(e) {
																		var mover_country = $(
																				this)
																				.attr(
																						"alt");
																		for (var j = 0; j < data.length; j++) {
																			if (mover_country == data[j].id) {
																				var color = Chart.helpers.color;
																				var config = {
																					type : 'radar',
																					data : {
																						labels : [
																								"Aroma",
																								"Bitters",
																								"Acidity",
																								"Balance",
																								"Body",
																								"Sweet" ],
																						datasets : [ {
																							label : data[j].name,
																							borderColor : window.chartColors.yellow,
																							backgroundColor : color(
																									window.chartColors.yellow)
																									.alpha(
																											0.7)
																									.rgbString(),
																							pointBackgroundColor : window.chartColors.yellow,
																							data : [
																									data[j].ar,
																									data[j].bi,
																									data[j].ac,
																									data[j].ba,
																									data[j].bo,
																									data[j].sw ]
																						} ]
																					}
																				};

																				$(
																						'#canvas')
																						.remove();
																				$(
																						"#canvas_wrap")
																						.append(
																								"<canvas id='canvas'></canvas>");
																				myRadar = new Chart(
																						document
																								.getElementById("canvas"),
																						config);
																				$(
																						"#info_name")
																						.empty();
																				$(
																						"#info_name")
																						.append(
																								data[j].name);
																				$(
																						"#info_kind")
																						.empty();
																				$(
																						"#info_kind")
																						.append(
																								data[j].kind);
																				$(
																						"#info_price")
																						.empty();
																				$(
																						"#info_price")
																						.append(
																								data[j].price);
																				$(
																						"#info_rt")
																						.empty();
																				$(
																						"#info_rt")
																						.append(
																								data[j].price);

																				$(
																						"#sel_kt")
																						.empty();
																				$(
																						"#sel_kt")
																						.append(
																								data[j].kind
																										+ data[j].name);

																				/* 팝업 생성 시작 */
																				$(
																						'.pro_country')
																						.hover(
																								function(
																										e) {
																									$(
																											'div#pop-up')
																											.show();
																									$(
																											'div#pop-up')
																											.css(
																													'top',
																													e.pageY
																															+ moveDown);
																									$(
																											'div#pop-up')
																											.css(
																													'left',
																													e.pageX
																															+ moveLeft);
																									$(
																											'div#pop-up')
																											.appendTo(
																													'body');
																								},
																								function() {
																									$(
																											'div#pop-up')
																											.hide();
																								});
																				$(
																						'.pro_country')
																						.mousemove(
																								function(
																										e) {
																									$(
																											"div#pop-up")
																											.css(
																													'top',
																													e.pageY
																															+ moveDown)
																											.css(
																													'left',
																													e.pageX
																															+ moveLeft);
																								});

																				/* 팝업생성 끝 */
																			} else {
																				continue;
																			}
																		}

																		$(
																				".pro_country")
																				.click(
																						function() {
																							var selected_ct = $(
																									this)
																									.attr(
																											"alt");
																							$(
																									"#sel_ct")
																									.empty();
																							$(
																									"#sel_ct")
																									.append(
																											selected_ct);
																						});
																	});
												}
											});
								});

				$(".rt0").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("그린 빈");
				});
				$(".rt1").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("라이트 로스팅");
				});
				$(".rt2").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("시나몬 로스팅");
				});
				$(".rt3").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("미디엄 로스팅");
				});
				$(".rt4").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("하이 로스팅");
				});
				$(".rt5").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("시티 로스팅");
				});
				$(".rt6").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("풀시티 로스팅");
				});
				$(".rt7").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("프렌치 로스팅");
				});

				$(".gd0").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("홀빈");
				});
				$(".gd1").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("프렌치 프레스");
				});
				$(".gd2").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("융 드립");
				});
				$(".gd3").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("사이폰");
				});
				$(".gd4").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("드립");
				});
				$(".gd5").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("에스프레소");
				});
				$(".bpro_finish").click(
						function() {
							console.log("주문 완료");
							$("#complpro_table").append(
									"<tr>" + "<td>" + $("#sel_kd").text() + "/"
											+ $("#sel_ct").text() + "/"
											+ $("#sel_rt").text() + "/"
											+ $("#sel_gd").text() + "</td>"
											+ "<td>3</td>" + "<td>5000</td>"
											+ "</tr>");

							// JSON list 타입 생성
							param += '{"item1":' + '"' + $("#sel_kd").text()
									+ '",';
							param += '"item2":' + '"' + $("#sel_ct").text()
									+ '",';
							param += '"item3":' + '"' + $("#sel_rt").text()
									+ '",';
							param += '"item4":' + '"' + $("#sel_gd").text()
									+ '",';
							param += '"item5":' + '"' + $("#sel_kd").text()
									+ '"';
							param += '},';

						});
				/* $("#add_complpro").click(
						function() {
							console.log("주문 완료");
							$("#complpro_table").append(
									"<tr>" + "<td>" + $("#tsel_name").text()
											+ "</td>" + "<td>"
											+ $("#tsel_price").text() + "</td>"
											+ "</tr>");
						});
 */
				$("#add_complpro").click(
						function() {
							console.log("주문 완료");
							$.ajax({
								url : 'ajax/product.json',
								dataType : 'json',
								success : function(data) {
									console.log("ajax연결 성공");
									for(var i=0 ; i <= data[i] ; i++){
										
										if(data[i].code){
											
										}
									}
									$("#complpro_table").append(
											"<tr>" + "<td>"
													+ $("#tsel_name").text()
													+ "</td>" + "<td>"
													+ $("#tsel_price").text()
													+ "</td>" + "</tr>");
								}
							});

						});

			});
		</script>
</body>
</html>