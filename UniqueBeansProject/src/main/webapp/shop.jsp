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
				<li class="nav-item"><c:if test="${!empty loginUser}">
						<a class="nav-link js-scroll-trigger" href="#">${loginUser}님</a>
					</c:if> <c:if test="${empty loginUser}">
						<a class="nav-link js-scroll-trigger" href="login.jsp">Login33</a>
					</c:if></li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- 주문테이블 -->
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<div class="container">

			
				<h1>주문상황</h1>
				<hr>
				<table class="table table-striped table-hover table-bordered">
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
							<th>개수</th>
							<td>1<a href="#"></a></td>
						</tr>
						<tr>
							<th><span class="pull-left">상품 가격</span></th>
							<td id="sel_pr">250.00</td>
						</tr>
						<tr>
							<th><span class="pull-left">부가세 20%</span></th>
							<td>50.00</td>
						</tr>
						<tr>
							<th><span class="pull-left">총 가격</span></th>
							<th>300.00</th>
						</tr>

				</tbody>
			</table>
		</div>
	</div>

	<div class="conatiner">
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			data-interval="0" data-wrap="false">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="shop-step">
						<div class="hover-content"></div>
						<a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <div class="kd1" id="shop-option-img0" alt="">원두 주문</div>
						</a>
						<a class="carousel-control-next" href="#myCarousel"
							data-slide-to="6"> <div class="kd1" id="shop-option-img0" alt="">도구 주문</div>
						</a>
					</div>
				</div>
				<div class="carousel-item">
					<div class="shop-step">
							<div class="hover-content">
							</div>
							<a class="carousel-control-next" href="#myCarousel"
								data-slide="next"> <img class="kd1" id="shop-option-img1"
								src="img/arabica.jpg" alt="">
							</a>
						<a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="kd2" id="shop-option-img1"
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
					
						<div id="pro_status">
							
							<div id="btn_wrap"></div>
							<div id="info_result">
								<div id="testtest">Info</div>

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
										<div id="canvas_wrap">
											<canvas id="canvas"></canvas>
										</div>

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
							data-slide="next"> <img class="gd0" id="shop-option-img4"
							src="img/grinding/grinding0.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="gd1" id="shop-option-img4"
							src="img/grinding/grinding1.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="gd2" id="shop-option-img4"
							src="img/grinding/grinding2.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="gd3" id="shop-option-img4"
							src="img/grinding/grinding3.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="gd4" id="shop-option-img4"
							src="img/grinding/grinding4.PNG" alt="">
						</a> <a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <img class="gd5" id="shop-option-img4"
							src="img/grinding/grinding5.PNG" alt="">
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
							data-slide-to="1"> <div class="kd1" id="shop-option-img0" alt="">원두 추가 주문하기</div>
						</a>
						<a class="carousel-control-next" href="#myCarousel"
							data-slide="next"> <div class="kd1" id="shop-option-img0" alt="">도구 주문하기</div>
						</a>
					</div>
				</div>
				
				<div class="carousel-item">
					<div class="shop-step">
						<div class="hover-content"></div>
						<a class="carousel-control-next" href="#myCarousel" data-slide="next"> 
							<div class="tpro_wrap" id="shop-option-img5">
								<div class="tpro_img_wrap"><img src="img/arabica.jpg" class="tpro_img" alt="" data-toggle="modal" data-target="#myModal"></div>
								<div class="tpro_name">상품명</div>
								<div class="tpro_price">가격</div>
							</div>
						</a>
				</div>
			</div>
			 <!-- Modal -->
			  <div class="modal fade" id="myModal" role="dialog">
			    <div class="modal-dialog">
			    
			      <!-- Modal content-->
			      <div class="modal-content" id="tpro_modal">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">X</button>
			          
			        </div>
			        <div class="modal-body">
			        	<h4 class="modal-title">Info</h4>
			      		<div><img src="img/arabica.jpg"></div>
			        	<table>
			        		<tr>
			        			<th>상품명</th>
			        			<td>커피도구 어쩌구 저쩌구<td>
			        		</tr>
			        		<tr>
			        			<th>가격</th>
			        			<td>10000<td>
			        		</tr>
			        		<tr>
			        			<th>상세정보</th>
			        			<td>에베베븝브베베벱버부버부베<td>
			        		</tr>
			        	</table>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">추가하기</button>
			          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
	
	
	<!-- 팝업 정보 -->
	<div id="pop-up">
	안녕
	</div>
	
	
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
    <script type="text/javascript">
      $(function() {
        var moveLeft = 10;
        var moveDown = 20;
        
        $('img.kd1').hover(function(e) {
          $('div#pop-up').show();
          $('div#pop-up').css('top', e.pageY + moveDown);
          $('div#pop-up').css('left', e.pageX + moveLeft);
          $('div#pop-up').appendTo('body');
        }, function() {
          $('div#pop-up').hide();
        });
        
        $('img.kd1').mousemove(function(e) {
          $("div#pop-up").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
        });
        
      });
    </script>
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
		$(".kd1").click(function() {
			console.log("아라비카 클릭");
			$.ajax({
				url : 'ajax/country.json',
				dataType : 'json',
				success : function(data) {
					console.log("ajax 연결 성공");
					$('#btn_wrap').empty();
					for (var i = 0; i < data.length; i++) {
						if (data[i].kd == "Arabica") {
							$('#btn_wrap').append("<a class='carousel-control-next'" + "href='#myCarousel'" +
								"data-slide='next'><div class='pro_data[i].co' id='shop-option-img2'>"
								+ data[i].name
								+ "</div></a>");
							} else {
								continue;
							}
						}
					}
				});
			});
		
		$(".kd2").click(
			function() {
			console.log("로부스타 클릭");
			$.ajax({
				url : 'ajax/country.json',
				dataType : 'json',
				success : function(data) {
					console.log("ajax 연결 성공");
					$('#btn_wrap').empty();
					for (var i = 0; i < data.length; i++) {
						if (data[i].kd == "Robusta") {
							$('#btn_wrap').append(
									"<a class='carousel-control-next'"+
									"href='#myCarousel' data-slide='next'>"+
									"<img id='shop-option-img2' class='pro_country'"
									+"src='img/country_img/" + data[i].id + ".jpg' alt ='"
									+ data[i].id + "'></a>"			
							);
						} else {
							continue;
						}
					}
				}

			});
		});

		$('#shop-option-img2').mouseover(function() {
			console.log("마우스 들어옴");
		});
		$(".kd1").click(function(){
			console.log("아라비카 클릭");
			$("#sel_kd").empty();
			$("#sel_kd").append("아라비카");
			$.ajax({
				url:'ajax/country.json',
				dataType: 'json',
				success: function(data){
					console.log("ajax 연결 성공");
					$('#btn_wrap').empty();
					for(var i =0; i< data.length; i++){
						if(data[i].kd =="Arabica"){
							
							$('#btn_wrap').append(
									"<a class='carousel-control-next'"+
									"href='#myCarousel' data-slide='next'>"+
									"<img id='shop-option-img2' class='pro_country'"
									+"src='img/country_img/" + data[i].id + ".jpg' alt ='"
									+ data[i].id + "'></a>"		
							);
						} else{
							continue;
						}
					}
					$(".pro_country").mouseenter(function(){
						var mover_country = $(this).attr("alt");
						for(var j =0; j< data.length; j++){
							if(mover_country == data[j].id){
								var color = Chart.helpers.color;
								var config = {
								        type: 'radar',
								        data: {
								            labels: ["Aroma", "Bitters", "Acidity", "Balance", "Body", "Sweet"],
								            datasets: [{
								                label: data[j].name,
								                borderColor: window.chartColors.yellow,
								                backgroundColor: color(window.chartColors.yellow).alpha(0.7).rgbString(),
								                pointBackgroundColor: window.chartColors.yellow,
								                data: [
								                	data[j].ar,data[j].bi,data[j].ac,data[j].ba,data[j].bo,data[j].sw
								                ]
								            }]
								        }	
								 };
								$('#canvas').remove();
								$("#canvas_wrap").append("<canvas id='canvas'></canvas>");
								myRadar = new Chart(document.getElementById("canvas"), config);
								$("#info_name").empty();
								$("#info_name").append(data[j].name);
								$("#info_kind").empty();
								$("#info_kind").append(data[j].kind);
								$("#info_price").empty();
								$("#info_price").append(data[j].price);
								$("#info_rt").empty();
								$("#info_rt").append(data[j].price);
								
								$("#sel_kt").empty();
								$("#sel_kt").append(data[j].kind + data[j].name);
							}else{
								continue;
							}
						}
						$(".pro_country").click(function(){
							var selected_ct = $(this).text();
							$("#sel_ct").empty();
							$("#sel_ct").append(selected_ct);
						});
					});	
				}		
			});
		});
		$(".kd2").click(function(){
			console.log("로부스타 클릭");
			$("#sel_kd").empty();
			$("#sel_kd").append("로부스타");
			$.ajax({
				url:'ajax/country.json',
				dataType: 'json',
				success: function(data){
					console.log("ajax 연결 성공");
					$('#btn_wrap').empty();
					for(var i =0; i< data.length; i++){
						if(data[i].kd =="Robusta"){
							
							$('#btn_wrap').append(
									"<a class='carousel-control-next'"+
									"href='#myCarousel' data-slide='next'>"+
									"<img id='shop-option-img2' class='pro_country'"
									+"src='img/country_img/" + data[i].id + ".jpg'></a>"			
							);	
		
						} else{
							continue;
						}
					}
					$(".pro_country").mouseenter(function(){
						var mover_country = $(this).attr("alt");
						for(var j =0; j< data.length; j++){
							if(mover_country == data[j].id){
								var color = Chart.helpers.color;
								var config = {
								        type: 'radar',
								        data: {
								            labels: ["Aroma", "Bitters", "Acidity", "Balance", "Body", "Sweet"],
								            datasets: [{
								                label: data[j].name,
								                borderColor: window.chartColors.yellow,
								                backgroundColor: color(window.chartColors.yellow).alpha(0.7).rgbString(),
								                pointBackgroundColor: window.chartColors.yellow,
								                data: [
								                	data[j].ar,data[j].bi,data[j].ac,data[j].ba,data[j].bo,data[j].sw
								                ]
								            }]
								        }	
								 };
								$('#canvas').remove();
								$("#canvas_wrap").append("<canvas id='canvas'></canvas>");
								myRadar = new Chart(document.getElementById("canvas"), config);
								$("#info_name").empty();
								$("#info_name").append(data[j].name);
								$("#info_kind").empty();
								$("#info_kind").append(data[j].kind);
								$("#info_price").empty();
								$("#info_price").append(data[j].price);
								$("#info_rt").empty();
								$("#info_rt").append(data[j].price);
								
								$("#sel_kt").empty();
								$("#sel_kt").append(data[j].kind + data[j].name);
							}else{
								continue;
							}
						}
						$(".pro_country").click(function(){
							var selected_ct = $(this).text();
							$("#sel_ct").empty();
							$("#sel_ct").append(selected_ct);
						});
						
					});
				}
				
			});
		});
				
		$(".rt0").click(function(){
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
	</script>
</body>
</html>