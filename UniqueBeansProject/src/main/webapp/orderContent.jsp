<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link href="css/jqvmap.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
input{
margin-bottom: 10px;
}
</style>
</head>
<body>
	<jsp:include page="top_menu.jsp"></jsp:include>
	<div class="container" style="margin-top: 150px;">
		<h2>주문 상세 내역</h2>
		<table class="table">
			<thead class="thead-dark" style="text-align: center;">
				<tr>
					<th width="100px;">주문번호</th>
					<th width="100px;">id</th>
					<th>배송 메시지</th>
					<th width="150px;">주문일자</th>
					<th width="150px;">처리상태</th>
				</tr>
			</thead>
			<tbody style="text-align: center;">
				<tr>
					<th scope="row">${userOrder.order_code}</th>
					<td>${userOrder.id}</td>
					<td>${userOrder.order_require}</td>
					<td>${userOrder.order_date}</td>
					<td>${userOrder.order_status}</td>
				</tr>
			</tbody>
		</table>
		
		<c:if test="${'주문취소' != userOrder.order_status}">
			<form id="orderInfo" action="orderUpdate.do" name="write_form_member" method="post">
	            <table class="table">
				  <tbody>
				    <tr>
	         			<th>받으시는 분</th>
	       				<td><input type="text" name="receive_name" id="receive_name" value="${userOrder.receive_name}"></td>
	         		</tr>
	         		<tr>
	         			<th>전화번호</th>
	       				<td><input type="text" name="receive_tel" id="receive_tel" value="${userOrder.receive_tel}"></td>
	         		</tr>
	         		<tr>
	         			<th>주소</th>
	       				<td>
	       					<input id="test" type="hidden" name="list" value=""/>
	       					<input type="text" name="receive_address_num" class="postcodify_postcode5" value="${userOrder.receive_address_num}" size="8" id="ad_num"/>
							<button type="button" id="postcodify_search_button">검색</button><br/>
							<input type="text" name="receive_address_road" class="postcodify_address" value="${userOrder.receive_address_road}" size="30" id="ad_road"/><br/>
							<input type="text" name="receive_address_detail" class="postcodify_details" value="${userOrder.receive_address_detail}" size="20" id="ad_detail"/><br/>
							<input type="text" name="receive_address_other" class="postcodify_extra_info" value="${userOrder.receive_address_other}" size="15" id="ad_other"/><br/>
	       				</td>
	         		</tr>
	         		<tr>
	         			<th>배송 메시지</th>
	       				<td>
	       					<textarea COLS="70" ROWS="4" name="order_require">${userOrder.order_require}</textarea>
	       				</td>
	         		</tr>      	
				  </tbody>
				</table>
				<input type="hidden" name ="order_code" value="${userOrder.order_code}">
			</form>
		</c:if>
		
		<div style="text-align: right;">
			<c:if test="${'주문취소' != userOrder.order_status && '접수완료' != userOrder.order_status}">
				<Button id="update" type="submit" class="btn btn-success">주문수정</Button>
				<a href="orderCancle.do?order_code=${userOrder.order_code}&details_number=${userOrder.details_number}">
					<Button id="cancle" type="button" class="btn btn-danger">주문취소</Button>
				</a>
			</c:if>
			<c:if test="${loginUser.admin == 1 && '주문취소' != userOrder.order_status}">
				<a href="changeStatus.do?order_code=${userOrder.order_code}&details_number=${userOrder.details_number}">
					<Button id="status" type="button" class="btn btn-primary">접수완료</Button>
				</a>
			</c:if>
			
		</div>
	</div>

	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="js/jqBootstrapValidation.js"></script>
	
	<!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
			// 검색 단추를 누르면 주소 검색 팝업 레이어가 열리도록 설정한다.
			$("#postcodify_search_button").postcodifyPopUp(); 
		
			$('#update').on('click',function(){
				
				$('#orderInfo').submit();
			});
		})
	</script>
</body>
</html>