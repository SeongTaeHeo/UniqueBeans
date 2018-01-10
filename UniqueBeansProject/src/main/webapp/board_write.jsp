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
	<h1 class="display-4" style="font-weight:bold">리뷰 게시판</h1>
</div>

<div class="container" style="position: relative; top: -50px;">
<table class="table table-bordered">
    <tbody>
        <form action="#" method="post">
            <tr>
                <th>제목: </th>
                <td><input type="text" placeholder="제목을 입력하세요. " 
                name="subject" class="form-control"/></td>
            </tr>
            <tr>
                <th>내용: </th>
                <td><textarea cols="10" placeholder="내용을 입력하세요. " 
                name="content" class="form-control" style="resize: none; height: 400px;"></textarea></td>
            </tr>
            <tr>
                <th>첨부파일: </th>
                <td><input type="file" placeholder="파일을 선택하세요. " 
                name="filename" class="form-control"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <a class="btn btn-success"> 등록 </a>
                    <a class="btn btn-success" type="reset"> 취소 </a>
                    <a class="btn btn-success">글 목록</a>
                </td>
            </tr>
        </form>
    </tbody>
</table>
</div>

<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script>

<script src="js/agency.min.js"></script>
</body>
</html>