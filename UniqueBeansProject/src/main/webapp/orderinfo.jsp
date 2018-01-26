<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="vendor/bootstrap/css/bootstrap.min.css?ver=2"
	rel="stylesheet">

<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css ">
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

<link href="css/agency.min.css" rel="stylesheet">
<link href="css/order-form.css?ver=1" rel="stylesheet">
<style>
#bodymain{
width: 100%;
height: 100%;
}
</style>
</head>
<body id="main">
   <jsp:include page="top_menu.jsp"></jsp:include>
    <div id="bodymain">
	    <div class="register-form">
	       <div class="send-info">
	         <form name="write_form_member" method="post">
	         	<h1>주문 결제</h1>
	         	<h4>주문상품 정보</h4>
	         		<table class="table">
					  <thead class="thead-light">
					    <tr>
				      		<th>No</th>
		       				<th colspan="2">상품 정보</th>
		       				<th>판매가</th>
		       				<th>수량</th>
		       				<th>적립금</th>
		       				<th>가격</th>
					    </tr>
					  </thead>
					  <tbody>
						  <c:forEach var="list" items="${beanItem}" varStatus="index">
						  	
						  		<tr>
						  			<th>${index.index}</th>
						  			<th><img src="img/country_img/${list.code}.jpg" style="width: 200px; height: 120px;"></th>
						  			<th>${list.name}</th>
						  			<th>${list.price }</th>
						  			<th>
										<select id="select">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
										</select>
									</th>
									<th><div id=point>50</div></th>
									<th><div id="price">1231</div></th>
						  		</tr>
						  	
						  </c:forEach>
					  </tbody>
					</table>
	         		<br><br>
	         	<h4>배송 정보</h4>
	            <table class="table">
				  <tbody>
				    <tr>
	         			<th>배송지 선택</th>
	         			<td>
	         				<input type="radio" name="1" value="customer_address">회원 정보와 동일
							<input type="radio" name="1" value="new_address">새로운 배송지
	         			</td>
	         		</tr>
				    <tr>
	         			<th>받으시는 분</th>
	       				<td><input type="text"></td>
	         		</tr>
	         		<tr>
	         			<th>주소</th>
	       				<td>
	       					<input type="text" name="" class="postcodify_postcode5" value="" size="8"/>
							<button type="button" id="postcodify_search_button">검색</button><br/>
							<input type="text" name="" class="postcodify_address" value="" size="30"/><br/>
							<input type="text" name="" class="postcodify_details" value="" size="20"/><br/>
							<input type="text" name="" class="postcodify_extra_info" value="" size="15"/><br/>
	       				</td>
	         		</tr>
	         		<tr>
	         			<th>휴대전화</th>
	                  	<td><input id="phone" type="text" maxlength="13"></td>
	         		</tr>
	         		<tr>
	         			<th>이메일</th>
	       				<td>
	       					<input type="text">
	       				</td>
	         		</tr>
	         		<tr>
	         			<th>배송 메시지</th>
	       				<td>
	       					<textarea COLS="70" ROWS="4"></textarea>
	       				</td>
	         		</tr>      	
				  </tbody>
				</table>
	            <br><br>
	            <h4>결제 예정 금액</h4><br>
	            <table class="table">
				  <thead class="thead-dark">
				    <tr>
				      	<th>총 주문 금액</th>
	         			<th>마일리지 사용</th>
	         			<th>총 결제예정 금액</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
	         			<th><h3>32400원<h3></th>
	         			<th>
	         				<input type="text" size="6"> / ${loginUser.point}
	         				<div>적립금은 최소 100원 이상일 때 결제가 가능합니다.</div>
	         			</th>
	         			<th><h3>32400원<h3></th>
	         		</tr>
				    <tr>
				      <th scope="row"></th>
				      <th>위 사항대로 주문 하시겠습니까???</th>
				      <th><button type="button" class="btn btn-primary btn-lg">결제완료</button></th>
				    </tr>
				  </tbody>
				</table>
	        </form>
	      </div>
		</div>
	</div>

	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="js/jqBootstrapValidation.js"></script>
	
    <!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { 
		$("#postcodify_search_button").postcodifyPopUp(); 
		
		$('#phone').keyup(function() {
			var check = $('#phone').val();

			this.value = autoHypenPhone(check);
		});

		function autoHypenPhone(str) {
			str = str.replace(/[^0-9]/g, '');
			var tmp = '';

			if (str.length < 4) {
				return str;
			} else if (str.length < 8) {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3, 4);
				return tmp;
			} else {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3, 4);
				tmp += '-';
				tmp += str.substr(7);
				return tmp;
			}
		}
	}); 
	</script>
	
</body>
</html>