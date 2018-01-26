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
	
	<!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script>
		$(function() {
			var code = "cd";
			var name = "아라비카 과테말라";
			var roasting = "라이팅로스트";
			var grind = "홀빈";
			var price = 5000;
			
			var data = new Object();
			var list = new Array();
			var param = new Array();
			
			data.code = "cd";
			data.name = "아라비카 과테말라";
			data.roasting = "라이팅로스트";
			data.grind = "홀빈";
			data.price = 5000;

			list.push(data);
			param.push(list);
			
			data.code = "ao";
			data.name = "아라비카 dd";
			data.roasting = "ff";
			data.grind = "cc";
			data.price = 5000;

			list.push(data);
			param.push(list);
			
			console.log(JSON.stringify(param));
			
			$.ajax({
				url: 'orderDetailInput.do',
				method: 'post',
				contentType: 'application/json',
				type: 'text',
				data: param,
				
				success: function(bodyData) {
					$('body').html(bodyData)
				}
			});
		});
	</script>
</body>
</html>