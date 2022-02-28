<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Mayfly</title>
<link rel="icon" type="image/x-icon" href="../resources/image/logo.JPG" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../resources/css/styles.css" rel="stylesheet" />

<style>
#title {
	font-weight: bolder;
	font-size: 25px;
	text-align : left;
	margin-left : 250px;
}

.homeImg {
	width: 300px;
	height: 300px;
	border-radius: 70%;
	overflow: hidden;
	margin-left: 300px;
}

#about {
}


</style>

</head>

<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<a class="navbar-brand" href="home.mayfly" id="title">Mayfly</a>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-auto">
				<c:if test="${empty userId }">
					<li class="nav-item"><a class="nav-link"
						href="/member/joinView.mayfly">회원가입</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/member/loginView.mayfly">로그인</a></li>
				</c:if>
				<c:if test="${not empty userId }">
					<li class="nav-item"><a class="nav-link"
						href="/member/myInfo.mayfly?userId=${userId }">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/member/logout.mayfly">로그아웃</a></li>
				</c:if>


				<!--     <li class="nav-item"><a class="nav-link" href="/member/myInfo.mayfly">마이페이지</a></li>-->
			</ul>
		</div>
	</nav>
	<!-- Header-->
	<header class="bg-primary bg-gradient text-white">
		 <a
			class="btn btn-lg btn-light" href="/contents/list.mayfly" id="nav2">문화활동</a>&nbsp;&nbsp;&nbsp;
		<a class="btn btn-lg btn-light" href="/self/list.mayfly" id="nav3">자기계발</a>&nbsp;&nbsp;&nbsp;
		<a class="btn btn-lg btn-light" href="/travel/list.mayfly" id="nav4">여행</a>&nbsp;&nbsp;&nbsp;
		<a class="btn btn-lg btn-light" href="/board/list.mayfly" width="10px"
			height="10px" id="nav5">커뮤니티</a>&nbsp;&nbsp;&nbsp; <a
			class="btn btn-lg btn-light"
			href="/member/myInfo.mayfly?userId=${userId }" id="nav6">마이페이지</a>&nbsp;&nbsp;&nbsp;
	</header>
	<!-- About section-->
	<div>
		<div id="about">
			<b id="title">사이트 이용 방법</b> <br> <br> <img
				src="/resources/image/C1.JPG" class="homeImg"><br> <br>
			<br> <br> <img src="/resources/image/S1.JPG"
				class="homeImg"><br> <br> <br> <br> <img
				src="/resources/image/T1.JPG" class="homeImg"><br> <br>
			<br> <br>
		</div>
		
	</div>


	<footer class="py-5 bg-dark">
		<div class="container px-4">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2021</p>
		</div>

	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/script.js"></script>
</body>
</html>
