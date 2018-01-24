<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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

	<jsp:include page="top_menu.jsp" />

	<header class="masthead" style="height:250px;">
	<div class="container">
		<div class="intro-text"></div>
	</div>
	</header>

	<div class="board_header">
		<h1 class="display-4" style="font-weight: bold">문의 게시판</h1>
	</div>

	<div class="board_main">
		<table
			class="bg-light table table-hover table-sm text-center form-radius">
			<thead>
				<tr>
					<th class="board_no">글 번호</th>
					<th class="board_opt">문의 유형</th>
					<th class="board_title">제 목</th>
					<th class="board_write">작성자</th>
					<th class="board_date">작성일</th>
					<th class="board_cnt">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${contactList }" var="contact">
					<tr>
						<td>${contact.contact_seq }</td>
						<td>${contact.contact_option }</td>
						<td><a
							href="Contact_board_content.do?contact_seq=${contact.contact_seq }">${contact.contact_title}</a></td>
						<td>${contact.id }</td>
						<td>${contact.contact_date }</td>
						<td>${contact.contact_views }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="write">
			<c:if test="${!empty loginUser}">
				<a href="contact_write.jsp">
					<button type="button" class="btn btn-success btn-lg">글 작성</button>
				</a>
			</c:if>
			<c:if test="${empty loginUser}">
				<button type="button" class="btn btn-success btn-lg"
					onclick="alert('로그인 후 작성할수 있습니다.')">글작성</button>
			</c:if>
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