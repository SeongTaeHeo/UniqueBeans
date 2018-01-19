<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>글 작성</title>

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
<body>
	<jsp:include page="top_menu.jsp"></jsp:include>
	<header class="masthead" style="height:250px;">
	<div class="container">
		<div class="intro-text"></div>
	</div>
	</header>

	<div class="board_header">
	<a href="Free_board.do">
		<h1 class="display-4" style="font-weight: bold">자유 게시판</h1>
	</a>
	</div>

	<div class="container" style="position: relative; top: -50px;">
		<form method="post" action="updateBoard.do">
			<table class="table table-bordered">
				<tbody>

					<tr>
						<th>제목:</th>
						<td><input id="post_title" type="text" value="${board.post_title}"
							placeholder="제목을 입력하세요. " name="post_title" class="form-control"
							required /></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input id="id" type="text" value=${loginUser }
							name="id" readonly="readonly" style="border: none;" /></td>
					</tr>
					<tr>
						<th>말머리:</th>
						<td><select id="post_option" name="post_option">
								<option value="잡담">잡담</option>
								<option value="리뷰">리뷰</option>
								<option value="상품">상품</option>
								<option value="주문">주문</option>
								<option value="배송">배송</option> 
								<option value="기타">기타</option>
						</select></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea id="post_contents" cols="10" 
								placeholder="내용을 입력하세요. " name="post_contents"
								class="form-control" style="resize: none; height: 400px;"
								required>${board.post_contents}</textarea></td>
					</tr>
					<tr>
						<th>첨부파일:</th>
						<td><input type="file" placeholder="파일을 선택하세요. "
							name="filename" class="form-control" /></td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<button type="submit" class="btn btn-success btn-xl">작성</button>
							<a class="btn btn-success btn-xl" href="Free_board.do"
							onclick="return confirm('글쓰기를 취소하시겠습니까?')"> 취소 </a>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
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
					<li class="list-inline-item"><a href="#">회사소개</a></li>
					<br>
					<li class="list-inline-item"><a href="#">이용약관</a></li>
					<br>
					<li class="list-inline-item"><a href="#">개인정보 취급방침</a></li>
					<br>
					<li class="list-inline-item"><a href="#">이용안내</a></li>
				</ul>
			</div>
			<div class="col-md-4">
				<ul class="list-inline-item">
					<b>INFORMATION</b>
					<br>
					<li class="list-inline-item">COMPANY:UNIQUEBEAN</li>
					<br>
					<li class="list-inline-item">ADDRESS: 서울특별시</li>
					<br>
					<li class="list-inline-item">TELEPHONE: 070-7727-1401</li>
					<br>
					<li class="list-inline-item">EMAIL:help@uniquebean.com</li>
					<br>
					<li class="list-inline-item">개인정보책임자:노루</li>
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


	<script src="js/free_write.js"></script>
</body>
</html>