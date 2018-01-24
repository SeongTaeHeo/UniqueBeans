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
	<!-- 	<jsp:include page="top_menu.jsp" /> -->

	<header class="masthead" style="height:250px;">
	<div class="container">
		<div class="intro-text"></div>
	</div>
	</header>

	<div class="board_header">
		<h1 class="display-4" style="font-weight: bold">문의 게시판</h1>
	</div>

	<div class="container" style="position: relative; top: -50px;">
		<form method="post" action="updateContact.do" id="write_form">
			<table class="table table-bordered">
				<tbody>

					<tr>
						<th>제목:</th>
						<td><input id="contact_title" type="text"
							value="${contact.contact_title }" placeholder="제목을 입력하세요. "
							name="contact_title" class="form-control" required /></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input id="id" type="text" value=${loginUser } name="id"
							readonly="readonly" style="border: none;" /></td>
					</tr>
					<tr>
						<th>말머리:</th>
						<td><select id="contact_option" name="contact_option">
								<option value="상품관련">상품관련</option>
								<option value="결제관련">결제관련</option>
								<option value="배송관련">배송관련</option>
						</select></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea id="contact_contents" cols="10"
								placeholder="내용을 입력하세요. " name="contact_contents"
								class="form-control" style="resize: none; height: 400px;"
								required>${contact.contact_contents}</textarea></td>
					</tr>
					<tr>
						<th>첨부파일:</th>
						<td><input type="file" placeholder="파일을 선택하세요. "
							name="filename" class="form-control" /></td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<button type="submit" class="btn btn-success btn-xl"
								id="write_btn">작성</button> <a class="btn btn-success btn-xl"
							href="Contact_board.do"
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
	<jsp:include page="footer.jsp"/>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<script src="js/agency.min.js"></script>
</body>
</html>