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
<jsp:include page="top_menu.jsp" />

<header class="masthead" style="height:250px;">
<div class="container">
	<div class="intro-text"></div>
</div>
</header>

<div class="board_header">
	<h1 class="display-4" style="font-weight:bold">문의 게시판</h1>
</div>

<div class="container" style="position: relative; top: -50px;">
<table class="table table-bordered">
    <tbody>
        <form method="post" onsubmit="return contact_data(this);">
            <tr>
                <th>제목: </th>
                <td><input id="contact_title" type="text" placeholder="제목을 입력하세요. " 
                name="subject" class="form-control" required/></td>
            </tr>
            <tr>
            	<th>문의 유형: </th>
            	<td><select id="contact_option">
            		<option value="삼품">상품관련</option>
					<option value="결제">결제관련</option>
					<option value="배송">배송관련</option>
					<option value="기타">기타문의</option>
            	</select>
            	</td>
           	</tr>
            <tr>
                <th>내용: </th>
                <td><textarea id="contact_content" cols="10" placeholder="내용을 입력하세요. " 
                name="content" class="form-control" style="resize: none; height: 400px;" required></textarea></td>
            </tr>
            <tr>
                <th>첨부파일: </th>
                <td><input type="file" placeholder="파일을 선택하세요. " 
                name="filename" class="form-control"/></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <button type="submit" class="btn btn-success btn-xl"><a href="Contact_board.jsp"> 작성</a> </button>
                    <a class="btn btn-success btn-xl" href="Contact_board.jsp" onclick="return confirm('글쓰기를 취소하시겠습니까?')">  취소 </a>
                </td>
            </tr>
        </form>
    </tbody>
</table>
</div>

<br><br><br>
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

<script src="js/agency.min.js"></script>
</body>
</html>