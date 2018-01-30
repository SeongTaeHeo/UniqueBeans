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
						  			<th><div id="name">${list.name}</div></th>
						  			<th><div id="price${index.index}">${list.price}</div></th>
						  			<th>
										<select id="quantity${index.index}">
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
									<th><div id="point${index.index}">${list.point}</div></th>
									<th><div id="total${index.index}">${list.price}</div></th>
						  		</tr>
						  		
						  	
						  	
						  </c:forEach>
					  </tbody>
					</table>
	         		<br><br>
	         		
	         	<h4>배송 정보</h4>
	         	<form id="orderInfo" action="paymentComplete.do" name="write_form_member" method="post">
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
		       				<td><input type="text" name="receive_name"></td>
		         		</tr>
		         		<tr>
		         			<th>전화번호</th>
		       				<td><input type="text" name="receive_tel"></td>
		         		</tr>
		         		<tr>
		         			<th>주소</th>
		       				<td>
		       					<input id="test" type="hidden" name="list" value=""/>
		       					<input type="text" name="receive_address_num" class="postcodify_postcode5" value="" size="8"/>
								<button type="button" id="postcodify_search_button">검색</button><br/>
								<input type="text" name="receive_address_road" class="postcodify_address" value="" size="30"/><br/>
								<input type="text" name="receive_address_detail" class="postcodify_details" value="" size="20"/><br/>
								<input type="text" name="receive_address_other" class="postcodify_extra_info" value="" size="15"/><br/>
		       				</td>
		         		</tr>
		         		<tr>
		         			<th>휴대전화</th>
		                  	<td><input id="phone" name="receive_tel" type="text" maxlength="13"></td>
		         		</tr>
		         		<tr>
		         			<th>배송 메시지</th>
		       				<td>
		       					<textarea COLS="70" ROWS="4" name="order_require"></textarea>
		       				</td>
		         		</tr>      	
					  </tbody>
					</table>
					<input type="hidden" name ="id" value="${loginUser.id}">
				</form>
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
	         			<th><h3 id="totalPrice">32400원</h3></th>
	         			<th>
	         				<input type="text" size="6"> / ${loginUser.point}
	         				<div>적립금은 최소 100원 이상일 때 결제가 가능합니다.</div>
	         			</th>
	         			<th><h3 id="totalPriceResult">32400원<h3></th>
	         		</tr>
				    <tr>
				      <th scope="row"></th>
				      <th>위 사항대로 주문 하시겠습니까???</th>
				      <th><button id="complete" type="button" class="btn btn-primary btn-lg">결제완료</button></th>
				    </tr>
				  </tbody>
				</table>
	      	</div>
		</div>
	</div>

	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="js/jqBootstrapValidation.js"></script>
	
    <!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<script src="js/orderInfo.js"></script>
	<script> $(function() { 
		// 검색 단추를 누르면 주소 검색 팝업 레이어가 열리도록 설정한다.
		$("#postcodify_search_button").postcodifyPopUp(); 
		
		var result = new Array();
		var totalPrice = 0;
		var price = 0;
		var total = 0;
		var totalPriceResult = 0;
		
		// Json array 생성(주문이 완료되었을때 해당 json 객체를 활용한다.)
		<c:forEach var="i" items="${beanItem}" varStatus="index">
			var jsonObject = new Object();
			
			jsonObject.code = "${i.code}";
			jsonObject.name = "${i.name}";
			jsonObject.roasting = "${i.roasting}";
			jsonObject.grind = "${i.grind}";
			jsonObject.quantity = 1;
			jsonObject.price = Number("${i.price}");

			totalPrice += jsonObject.price;
			totalPriceResult = totalPrice;
			
			// html페이지를 로드 하면서 가격란에 콤마 부호를 붙여준다.(가격표시 가독성을 위해서)
			// 에러가 뜨는데 이는 컴파일러 오류인듯 하다. 수정할 필요 없음.
			$('#price'+${index.index}).text(numberWithCommas(${i.price}));
			$('#total'+${index.index}).text(numberWithCommas(${i.price}));
			
			// 해당 객체를 이용하여 DB통신을 진행한다.
			result.push(jsonObject);
			console.log(result.push(jsonObject));

		</c:forEach>
		
		// 적립 퍼센트0.5%
		var pointPercent = 0.005;
		
		// table 안의 id값 동적 선택 하는 방법
		$('table').on('change','select',function(){
			 var $select = $(this);
			 var id = $select.attr('id');
			 var idx = id.substring(8,id.length);
			 
			 // 가격에 붙은 콤마를 제거하여 연산에 활용한다.(가격이 콤마가 붙은 채로 생성되는데 그걸 제거하고 연산에 활용)
			 price = Number(uncomma($('#price'+idx).text()) * $(this).val());
			 total = price * pointPercent; 
			 
			 // 연산 활용후 다시 콤마를 붙인다.
			 $('#total'+idx).text(numberWithCommas(price));
			 $('#point'+idx).text(numberWithCommas(total));
			 
			 result[idx].price = price;
			 result[idx].quantity = $(this).val()
			 totalPrice = 0;
			 
			 for(i = 0; i < result.length; i++) {
				 totalPrice += result[i].price;
				 totalPriceResult = totalPrice;
			 }
			 
			 $('#totalPrice').text(numberWithCommas(totalPrice) + '원');
			 $('#totalPriceResult').text(numberWithCommas(totalPriceResult) + '원');
			 
			 console.log(JSON.stringify(result));
		});
		
		// 최종 가격 표시
		$('#totalPrice').text(numberWithCommas(totalPrice) + '원');
		$('#totalPriceResult').text(numberWithCommas(totalPriceResult) + '원');
		
		$('#complete').on('click',function(){
			$('#test').val(JSON.stringify(result));
			$('#orderInfo').submit();
		});
		
	});
	
	// 숫자 자리수 마다 콤마 찍기
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	// 숫자 자리수 마다 찍힌 콤마 제거
	function uncomma(str) {
	    str = String(str);
	    return str.replace(/[^\d]+/g, '');
	}
	</script>
	
</body>
</html>