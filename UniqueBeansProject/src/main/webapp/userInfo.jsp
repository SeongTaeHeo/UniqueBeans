<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<link href="css/hstboard.css" rel="stylesheet">
<link href="css/jqvmap.css" rel="stylesheet">
<link href="css/userInfo.css?ver=1" rel="stylesheet">

</head>
<body>
	<div id="page-wrapper">
		<!-- 사이드바 -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a id="userInfo" value="${loginUser}">${loginUser}님</a>
				</li>
				<li><a id="a1">회원정보 수정</a></li>
				<li><a id="a2">구매내역</a></li>
				<li><a id="a3">내 마일리지 확인</a></li>
				<li><a id="a4">내가 쓴 글 보기</a></li>
				<li><a id="a5">내가 쓴 댓글 보기</a></li>
				<li><a href="logout.do">로그아웃</a></li>
			</ul>
		</div>
		<!-- /사이드바 -->

		<!-- 본문 -->
		<div id="page-content-wrapper">
			<div class="container-fluid">

				<!-- 회원정보 수정 -->
				<div id="userSetUp">
					<h1>회원정보 수정</h1>
					<center>
						<div id="passInput">
							<h5>비밀번호 입력</h5>
							<input id="pass" type="password" class="form-control">
							<button id="enter_info" class="btn btn-dark"
								style="margin: 10px;">입력</button>
						</div>
					</center>

					<div id="userSetPanel">
						<table class="table table-reflow">
							<tbody>
								<tr>
									<th scope="row">아이디</th>
									<td><input type="text" value="${loginUser}"
										readonly="readonly" style="border: none;"></td>
								</tr>
								<tr>
									<th scope="row">비밀번호</th>
									<td><input id="passCheck1" type="password"
										class="form-control" style="width: 200px;"></td>
								</tr>
								<tr>
									<th scope="row">비밀번호 확인</th>
									<td><input id="passCheck2" type="password"
										class="form-control" style="width: 200px;">
										<p></p></td>
								</tr>
								<tr>
									<th scope="row">주소</th>
									<td><input id="address" type="text"
										value="${user.address}" class="form-control"
										style="width: 400px;"></td>
								</tr>
								<tr>
									<th scope="row">전화번호</th>
									<td><input id="phone" type="text" value="${user.tel}"
										class="form-control" style="width: 400px;"></td>
								</tr>
								<tr>
									<th scope="row">이메일</th>
									<td><input id="email" type="text" value="${user.email}"
										class="form-control" style="width: 400px;"></td>
								</tr>
							</tbody>
						</table>
						<button id="userSetCommit" class="btn btn-primary">수정완료</button>
					</div>
				</div>


				<!-- 구매내역 -->
				<div id="buyList">
					<h1>구매내역</h1>

				</div>

				<!-- 내 마일리지 -->
				<div id="userMilage">
					<h1>내 마일리지</h1>
					<div>
						<table class="table table-reflow">
							<thead>
								<tr>
									<th>#</th>
									<th>Table heading</th>
									<th>Table heading</th>
									<th>Table heading</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Table cell</td>
									<td>Table cell</td>
									<td>Table cell </td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Table cell</td>
									<td>Table cell</td>
									<td>Table cell</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>Table cell</td>
									<td>Table cell</td>
									<td>Table cell</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<!-- 내가 쓴 글 보기 -->
				<div id="userBoardView">
					<h1>내가 쓴 글 보기</h1>

				</div>

				<!-- 내가 쓴 댓글 보기 -->
				<div id="userCommenView">
					<h1>내가 쓴 댓글 보기</h1>

				</div>
			</div>
		</div>
		<!-- /본문 -->
	</div>

	<script src="vendor/jquery/jquery.min.js"></script>

	<!-- userInfo 자바 스크립트 -->
	<script src="js/userInfo.js"></script>
	<script src="ajax/userInfo.js"></script>

	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<script src="js/agency.min.js"></script>
</body>
</html>