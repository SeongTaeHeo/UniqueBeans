<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<style>
	header{
		height: 15vw;
		background-color: plum;
	}
	.test{
		background-color: royalblue;
		height: 30vh;
		border: 5px;
		border-color: red;
	}
	#ms_logo_wrapper{
		text-align: center;
	}
	#ms_logo{
		height: 15vw;
		margin-top:3vw;
	}
	#ms_nav_l{
		float: left;
		background-color: red;
		height: 3vh;
	}
	#ms_nav_l li{
		float:right;
		margin-left: 5vw;
		list-style: none;
	}
		#ms_nav_r{
		float: right;
		background-color: red;
		height: 3vh;
	}
	#ms_nav_r li{
		float:left;
		margin-right: 5vw;
		list-style: none;
	}
	section{
		text-align: center;
	}
	#hotpro_article{
		text-align: center;
		background-color: lime;
		width: 80vw;
		height: 25vw;
		margin-left: 10vw;
		margin-right: 10vw;
	}
	#pro_img{
		width: 10vw;
	}
	#pro_info{
		width: 200px;
		background-color: red;
	}
	#pro_item{
		float: left;
		width: 15vw;
		height: 30vh;
		background-color: yellow;
		margin: 8px;
	}
	#pro_list{
		width: 80vw;
		margin-left: 11vw;
		margin-right: 10vw;
		text-align: center;
	}
	#ms_title{
		text-align: center;
		width: 80vw;
	}
	
</style>

<title>Insert title here</title>
</head>

<body id="page-top">
	<!-- 네비 -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Unique
				Beans</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#About">About</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#Shop">Shop</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#portfolio">Library</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#Board">Board</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">Contact</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" data-toggle="modal"
						data-target="#login-modal">Login</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<header id="ms_header">
		<div class="test">
			<div id="ms_logo_wrapper" ><img src="img/logos/UniqueBeans.png" id="ms_logo"></div>		
		</div>
		<div id="ms_nav">
			<ul id="ms_nav_l">
				<li>맞춤 주문</li>
				<li>원두</li>
				<li>도구</li>
			</ul>
			
			<ul id="ms_nav_r">
				<li>장바구니</li>
			</ul>
		</div>
	</header>
	<section>
		<article>
			<div id="hotpro_article"></div>
		</article>
	</section>
	<section>
		<div id="pro_list">	
			<!-- 내용 부분! -->
			<div id="ms_title">LIST</div>
			<div class="row">
				
				<div id="pro_item">
					물건 들어갈 곳!
				</div>
				<div id="pro_item">
					물건 들어갈 곳!
				</div>
				<div id="pro_item">
					물건 들어갈 곳!
				</div>
				<div id="pro_item">
					물건 들어갈 곳!
				</div>
				<div id="pro_item">
					물건 들어갈 곳!
				</div>
				<div id="pro_item">
					물건 들어갈 곳!
				</div>
				<div id="pro_item">
					물건 들어갈 곳!
				</div>
				<div id="pro_item">
					물건 들어갈 곳!
				</div>
				
			</div>
		</div>
	</section>
	<!-- 라이브러리 페이지 끝.... -->
	
	<!-- 스크립트 -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>
</body>
</html>