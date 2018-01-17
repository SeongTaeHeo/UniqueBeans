<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	
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
		<h1 class="display-4" style="font-weight: bold">���� �Խ���</h1>
	</div>

	<div class="board_main">
		<table
			class="bg-light table table-hover table-sm text-center form-radius">
			<thead>
				<tr>
					<th class="board_no">�� ��ȣ</th>
					<th class="board_title">�� ��</th>
					<th class="board_write">�ۼ���</th>
					<th class="board_date">�ۼ���</th>
					<th class="board_cnt">��ȸ��</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boardList }" var="board">
					<tr>
						<td>${board.post_number }</td>
						<td align="left"><a href="Free_board_content.do?post_number=${board.post_number }">${board.post_title}</a></td>
						<td>${board.id }</td>
						<td>${board.post_date }</td>
						<td>${board.post_views }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="write">
			<c:if test="${!empty loginUser}">
				<a href="board_write.jsp">
					<button type="button" class="btn btn-success btn-lg">��
						�ۼ�</button>
				</a>
			</c:if>
			<c:if test="${empty loginUser}">
				<button type="button" class="btn btn-success btn-lg" 
					onclick="alert('�α��� �� �ۼ��Ҽ� �ֽ��ϴ�.')">���ۼ�</button>
			</c:if>
			
		</div>

		<div class='search' align="center">
		<span class='green_window'>
			<input type='text' class='input_text' />
		</span>
			<button type='submit' class='sch_smit'>�˻�</button>
		</div>

	</div>













	<br>
	<br>
	<br>
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<ul class="list-inline-quicklinks">
					<b>COMPANY</b>
					<br>
					<li class="list-inline-item"><a href="#">ȸ��Ұ�</a></li>
					<br>
					<li class="list-inline-item"><a href="#">�̿���</a></li>
					<br>
					<li class="list-inline-item"><a href="#">�������� ��޹�ħ</a></li>
					<br>
					<li class="list-inline-item"><a href="#">�̿�ȳ�</a></li>
				</ul>
			</div>
			<div class="col-md-4">
				<ul class="list-inline-item">
					<b>INFORMATION</b>
					<br>
					<li class="list-inline-item">COMPANY:UNIQUEBEAN</li>
					<br>
					<li class="list-inline-item">ADDRESS: ����Ư����</li>
					<br>
					<li class="list-inline-item">TELEPHONE: 070-7727-1401</li>
					<br>
					<li class="list-inline-item">EMAIL:help@uniquebean.com</li>
					<br>
					<li class="list-inline-item">��������å����:���</li>
					<br>
				</ul>
			</div>
			<div class="col-md-4">
				<ul class="list-inline-list">
					<b>CS CENTER</b>
					<br>
					<li class="list-inline-item">WEEKDAY:09:00-18:00</li>
					<br>
					<li class="list-inline-item">LUNCH:12:00-13:00</li>
					<br>
					<li class="list-inline-item">CLOSED:Weekend and Holidays</li>
				</ul>

			</div>
		</div>
		<div>
			<span class="copyright">Copyright &copy; UniqueBean 2017</span>
		</div>
	</div>
	</footer>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<script src="js/agency.min.js"></script>


</body>
</html>