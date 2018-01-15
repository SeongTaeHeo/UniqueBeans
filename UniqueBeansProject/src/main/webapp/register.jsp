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

<style>
border {azimuth: 
</style>

</head>
<body>
	<div class="register-form">
		<div class="register-header">
			<h3>UniqueBeans 회원가입</h3>
		</div>

		<form action="insertUser.do" method="post">
			<table class="form-table">
				<tr>
					<td colspan="3"></td>
				</tr>
				<tr>
					<td width="200px;">아이디 :</td>
					<td align="left"><input type="text" name="id" /></td>
					<td><button id="overrap" class="btn btn-primary btn-sm">중복검사</button></td>
				</tr>
				<tr>
					<td>비밀번호 :</td>
					<td align="left"><input type="password" name="pwd" /></td>
				</tr>
				<tr>
					<td>이름 :</td>
					<td align="left"><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td>생년월일 :</td>
					<td align="left"><input type="text" name="birth" maxlength=8 size=7 /></td>
				</tr>
				<tr>
					<td>성별 :</td>
					<td align="left"><input type="radio" name="gender" value="남" checked />남자 <input
						type="radio" name="gender" value="여" />여자</td>
				</tr>
				<tr>
					<td>email :</td>
					<td align="left"><input type="text" name="email" size=30 /></td>
				</tr>
				<tr>
					<td>연락처 :</td>
					<td align="left"><input type="text" name="tel" size=30 /></td>
				</tr>
				<tr>
					<td>주소 :</td>
					<td align="left"><input type="text" name="address" size=30 /></td>
				</tr>
				<tr>
					<td colspan="2" align=center>
						<button type="submit" class="btn btn-success btn-sm">가입완료</button>
						<button type="reset" class="btn btn-danger btn-sm">취소</button>
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>