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
<link href="css/shop.css" rel="stylesheet">
<link href="css/jqvmap.css" rel="stylesheet">
<link href="css/payment.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>주문/결제</title>
</head>
<body id="main">
	<jsp:include page="top_menu.jsp"></jsp:include>
	<div class="header"></div>
	<!-- <div class="left-empty"></div> -->
	<div class="main-info">
		<div class="send-info">
			<form name="write_form_member" method="post">
				<h1>주문 결제</h1>
				<h4>주문상품 정보</h4>
				<table>
					<tr>
						<th>No</th>
						<th colspan="2">상품 정보</th>
						<th>판매가</th>
						<th>수량</th>
						<th>적립금</th>
						<th>가격</th>
					</tr>
					<tr>
						<td>1</td>
						<td>이미지 들어갈 칸</td>
						<td>아라비카/콜롬비아/라이팅로스트/홀빈</td>
						<td>5000</td>
						<td><input type="number" name="" maxlength="2"></td>
						<td>50</td>
						<td>15000</td>
					</tr>
					<tr>
						<td>2</td>
						<td>이미지 들어갈 칸</td>
						<td>아라비카/콜롬비아/라이팅로스트/홀빈</td>
						<td>5000</td>
						<td><input type="number" name="" maxlength="2"></td>
						<td>50</td>
						<td>15000</td>
					</tr>
					<tr>
						<td colspan="6">상품구매금액 30000 + 배송비 2500 = 합계 <b> 32500원</b></td>
					</tr>
				</table>
				<br>
				<br>
				<h4>배송 정보</h4>
				<table class="table" width="600">
					<tr>
						<th>배송지 선택</th>
						<td><input type="radio" name="1" value="customer_address">회원
							정보와 동일 <input type="radio" name="1" value="new_address">새로운
							배송지</td>
					</tr>
					<tr>
						<th>받으시는 분</th>
						<td><input type="text"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text"> <input type="text" name=""
							class="postcodify_postcode5" value="" />
							<button type="button" id="postcodify_search_button">검색</button>
							<br /> <input type="text" name="" class="postcodify_address"
							value="" /><br /> <input type="text" name=""
							class="postcodify_details" value="" /><br /> <input type="text"
							name="" class="postcodify_extra_info" value="" /><br /></td>

					</tr>
					<tr>
						<th>휴대전화</th>
						<td><input id="phone" type="text" maxlength="13">
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="payer-info">
		<div class="user-info">
			주문자 정보
			<c:if test="${!empty loginUser.id}">
				<a class="nav-link js-scroll-trigger">${loginUser.id}</a>
			</c:if>
		</div>
		<div>가격</div>
	</div>

	<!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script>
		$(function() {
			$("#postcodify_search_button").postcodifyPopUp();
			
			// 전화번호 포맷으로 강제 입력
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