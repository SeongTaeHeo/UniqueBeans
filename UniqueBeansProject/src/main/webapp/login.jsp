<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>free login form -bootstrap</title>

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
<link href="css/login-form.css" rel="stylesheet">


</head>
<body>

<div class="login-form">

<div>
	<h3>어서오세요</h3>
</div>

<form action="getUser.go" method="post">
	<div class="input-form">
		<h5>아이디</h5>
		<input id="input-id" class="form-control" type="text" name="Id">
	</div>
	<div class="input-form">
		<h5>비밀번호</h5>
		<input id="input-pwd" class="form-control" type="password" name="pwd">
	</div>
	<div>
		<input id="login-btn" class="btn btn-primary" type="submit" value="로그인">
	</div>
	<div>
		아직 아이디가 없으세요??? <a href="register.jsp">회원가입 하기</a>	
	</div>
	<div>
		비밀번호를 잊으셨나요? <a href="foundpw.jsp">비밀번호 찾기</a>
	</div>
</form>

</div>


<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script>

<script src="js/agency.min.js"></script>

</body>
</html>