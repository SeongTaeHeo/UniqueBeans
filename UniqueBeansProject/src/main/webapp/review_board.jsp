<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
		<h1 class="display-4" style="font-weight:bold">���� �Խ���</h1>
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
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>�Խ��� �����</td>
					<td>���</td>
					<td>2018/01/03</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>�ι�° �Խù�</td>
					<td>���</td>
					<td>2018/01/03</td>
				</tr>
			</tbody>
		</table>
		<div>
			<a href="board_write.jsp">
				<button type="button" class="btn btn-success"
					style="float:right;">�� �ۼ�</button>
			</a>
		</div>

	</div>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<script src="js/agency.min.js"></script>


</body>
</html>