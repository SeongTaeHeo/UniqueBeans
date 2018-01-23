<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<link href="css/register-form.css?ver=1" rel="stylesheet">

</head>
<body>
	<div>원두</div>
	<form action="insertOrder.do" method="post">
		<div>주문코드</div>
		<div><input id="input-order_code" class="form-control" type="text" name="order_code"></div>
		<div>아이디</div>
		<div><input id="input-order_code" class="form-control" type="text" name="id"></div>
		<div>판매가격</div>
		<div><input id="input-price" class="form-control" type="text" name="price"></div>
		<div>수량</div>
		<div><input id="input-quantity" class="form-control" type="text" name="quantity"></div>
		<div>주문일</div>
		<div><input id="input-order_date" class="form-control" type="text" name="order_date"></div>
		<div>주문처리상태</div>
		<div><input id="input-order_status" class="form-control" type="text" name="order_status"></div>
		<div>결제방법</div>
		<div><input id="input-pay_type" class="form-control" type="text" name="pay_type"></div>
		<div>요구사항</div>
		<div><input id="input-order_require" class="form-control" type="text" name="order_require"></div>
		<div>배송지주소</div>
		<div><input id="input-send_address" class="form-control" type="text" name="send_address"></div>
		<div>배송지전화번호</div>
		<div><input id="input-send_tel" class="form-control" type="text" name="send_tel"></div>
		<div>배송인이름</div>
		<div><input id="input-send_name" class="form-control" type="text" name="send_name"></div>
		<div>발송인주소</div>
		<div><input id="input-send_name" class="form-control" type="text" name="order_address"></div>
		<div>발송인전화번호</div>
		<div><input id="input-send_name" class="form-control" type="text" name="order_tel"></div>
		<div>발송인이름</div>
		<div><input id="input-send_name" class="form-control" type="text" name="order_name"></div>
		<input id="insert_order" class="btn btn-primary" type="submit" value="주문완료">
	</form>
	<div>도구</div>
</body>
</html>