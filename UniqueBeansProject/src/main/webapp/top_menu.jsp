<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top"
		id="mainNavs" style="background-color: black;">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="index.jsp">Unique
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
						href="index.jsp#About">About</a></li>

					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="shop.do">Shop</a></li>

					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="index.jsp#portfolio">Library</a></li>

					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="Free_board.do">Board</a></li>

					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="Contact_board.do">Contact</a></li>

					<li class="nav-item">
					
						<c:if test="${!empty loginUser.id}">
							<a class="nav-link js-scroll-trigger" href="userInfo.jsp">${loginUser.id}님</a>
						</c:if> 
						
						<c:if test="${empty loginUser.id}">
							<a class="nav-link js-scroll-trigger" href="login.jsp">Login</a>
						</c:if>
					</li>

				</ul>
			</div>
		</div>
	</nav>
</div>