<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Unique Bean</title>

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

<link href="css/agency.min.css" rel="stylesheet">
<link href="css/hstboard.css" rel="stylesheet">

</head>
<body id="board_body">

	<!-- <jsp:include page="top_menu.jsp" /> -->

	<header class="masthead" style="height:250px;">
	<div class="container">
		<div class="intro-text"></div>
	</div>
	</header>

	<div class="board_header">
		<a href="Contact_board.do">
			<h1 class="display-4" style="font-weight: bold">문의 게시판</h1>
		</a>
	</div>

	<div class="board_main">
		<table
			class="bg-light table table-hover table-sm text-center form-radius">
			<thead>
				<tr>
					<td align="center" colspan="2"><h3>[${contact.contact_option }]</h3></td>
					<td align="left" colspan="10"><h3>${contact.contact_title}</h3></td>
				</tr>
				<tr>
					<td colspan="2">작성자</td>
					<td align="left" colspan="2">${contact.id }</td>
					<td colspan="2">등록일</td>
					<td align="left" colspan="2">${contact.contact_date }</td>
					<td colspan="2">조회수</td>
					<td align="left" colspan="2">${contact.contact_views }</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td align="left" colspan="12" height="500px">${contact.contact_contents }</td>
				</tr>
			</tbody>
			<tbody>
				<jsp:include page="Reply_List2.do" />
				<jsp:include page="Reply_write2.jsp" />
			</tbody>
		</table>
		<div class="write">
			<c:if test="${contact.id==loginUser }">
				<a href="deleteContact.do?contact_seq=${contact.contact_seq }">
					<button type="button" class="btn btn-success btn-lg">글 삭제</button>
				</a>
			</c:if>
			<c:if test="${contact.id!=loginUser }">

			</c:if>
			<c:if test="${contact.id==loginUser }">
				<a href="Contact_update.jsp?contact_seq=${contact.contact_seq }">
					<button type="button" class="btn btn-success btn-lg">글 수정</button>
				</a>
			</c:if>
			<c:if test="${contact.id!=loginUser }">

			</c:if>
			<a href="Contact_board.do">
				<button type="button" class="btn btn-success btn-lg">글 목록</button>
			</a> <a href="contact_write.jsp">
				<button type="button" class="btn btn-success btn-lg">글 작성</button>
			</a>

		</div>

		<div class='search' align="center">
			<span class='green_window'> <input type='text'
				class='input_text' />
			</span>
			<button type='submit' class='sch_smit'>검색</button>
		</div>

	</div>













	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"/>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<script src="js/agency.min.js"></script>


</body>
</html>