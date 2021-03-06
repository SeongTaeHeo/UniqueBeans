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
					<td width="200px;" align="left">아이디 :</td>
					<td align="left"><input type="text" id="userID" name="id" /></td>
					<td><button type="button" id="overrap"
							class="btn btn-primary btn-sm">중복검사</button></td>
				</tr>
				<tr>
					<td align="left">비밀번호 :</td>
					<td align="left"><input id="passCheck1" type="password"/></td>
				</tr>
				<tr>
					<td align="left">비밀번호 확인 :</td>
					<td align="left"><input id="passCheck2" type="password"
						name="pwd" />
						<p style="display: none"></p>	
					</td>
				</tr>
				<tr>
					<td align="left">이름 :</td>
					<td align="left"><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td align="left">생년월일 :</td>
					<td align="left"><input id="inputBirth" type="text" name="birth" size=7 maxlength="10"/></td>
				</tr>
				<tr>
					<td align="left">성별 :</td>
					<td align="left"><input type="radio" name="gender" value="남"
						checked />남자 <input type="radio" name="gender" value="여" />여자</td>
				</tr>
				<tr>
					<td align="left">email :</td>
					<td align="left"><input type="text" name="email" size=30 /></td>
				</tr>
				<tr>
					<td align="left">연락처 :</td>
					<td align="left"><input id="phone" type="text" name="tel" size=30 maxlength="13"/></td>
				</tr>
				<tr>
					<td align="left">우편번호 :</td>
					<td align="left">
						<input type="text" name="address_number" class="postcodify_postcode5" size="8" value="" />
						<button type="button" id="postcodify_search_button" class="btn btn-primary">검색</button><br />
					</td>
				</tr>
				<tr>
					<td align="left">도로명주소 :</td>
					<td align="left"><input type="text" name="address_road" class="postcodify_address" size="30" value="" /><br /></td>
				</tr>
				<tr>
					<td align="left">상세주소 :</td>
					<td align="left"><input type="text" name="address_detail" class="postcodify_details" size="20" value="" /><br /></td>
				</tr>
				<tr>
					<td align="left">참고사항 :</td>
					<td align="left"><input type="text" name="address_other" class="postcodify_extra_info" size="15" value="" /><br /></td>
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
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/register.js?ver=2"></script>
<!-- jQuery와 Postcodify를 로딩한다 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
</body>
</html>