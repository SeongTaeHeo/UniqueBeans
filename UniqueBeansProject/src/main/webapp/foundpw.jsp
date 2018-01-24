<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디/비밀번호 찾기</title>

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
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="./resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>

<link href="css/agency.min.css" rel="stylesheet">
<link href="css/hstboard.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="top_menu.jsp"></jsp:include>
	<header class="masthead" style="height:250px;">
	<div class="container">
		<div class="intro-text"></div>
	</div>
	</header>
	<div class="board_header">

		<h1 class="display-4" style="font-weight: bold">회원정보 찾기</h1>

	</div>
	<div class="container" style="position: relative; top: -50px;">


		<form method="get" action="findId.do">
			<table class="table table-bordered">
				<tbody>
					<div class="input-form">
						<tr>
							<h3 align="center">아이디 찾기</h3>
						</tr>
						<tr>
							<th>이름:</th>
							<td><input type="text" class="form-control" name="name"></td>
						</tr>
						<tr>
							<th>이메일:</th>
							<td><input type="text" class="form-control" name="email"></td>
						</tr>
					</div>
					<div class="input-form">
						<td colspan="2"><input type="submit" class="btn btn-primary"
							value="전송"></td>
					</div>
				</tbody>
			</table>
		</form>
		<br> <br>
		<form method="get" action="findPw.do">
			<table class="table table-bordered">
				<tbody>
					<div class="input-form">
						<tr>
							<h3 align="center">비밀번호 찾기</h3>
						</tr>
						<tr>
							<th>아이디:</th>
							<td><input type="text" class="form-control" name="id"></td>
						</tr>
					</div>
					<div class="input-form">
						<tr>
							<th>이메일:</th>
							<td><input type="text" class="form-control" name="email"></td>
						</tr>
					</div>
					<div class="input-form">

						<td colspan="2"><input type="submit" class="btn btn-primary"
							value="전송"></td>
					</div>
				</tbody>
			</table>
		</form>
	</div>
		<jsp:include page="footer.jsp"/>
</body>
</html>