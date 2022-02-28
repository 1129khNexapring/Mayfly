<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
 <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Mayfly</title>
        <link rel="icon" type="image/x-icon" href="/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/css/styles.css?after" rel="stylesheet" />
        <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    </head>
<style>

  .login{
	width : 300px;
	text-align : center;
	margin:auto;
	margin-top : 150px;
}


.login-atag{
    color: black;
    text-decoration: none;
    display: inline-block;
    width : 150px;
    height :20px;
    float : left;
    margin-top : 5px;
  }

	.input-form{
	margin-top:10px;
	width: 100%;
	height : 30px;
	border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    border-color : #c8c8c8;
}


	.btn-wrap{
    height: 30px;
    width: 130px;
    margin-top: 10px;
    margin-left: 10px;
    margin-right: 5px;
    border: solid 1px rgba(0,0,0,.1);
    background-color: #c8c8c8;
    color: white;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    float: left;
}

 
	.login-page-btn{
	 width:120px;
    background-color: #c8c8c8;
    border: 1px;
    color: white;
    font-size: 15px;
    outline:none;
    cursor: pointer;
 	 border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
 
	
	}
	


#login-form-title{
font-weight : bolder;
font-size : 23px;
margin-top : 20px;
margin-bottom : 15px;
}

#login-title{
font-size : 17px;
margin-top : 20px;
margin-bottom : 15px;
}


 
</style>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>로그인 페이지</title>
</head>
<body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
                <a class="navbar-brand" href="#page-top" id="title" >Mayfly</a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="./login.html">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">로그인</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">마이페이지</a></li>
                    </ul>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-primary bg-gradient text-white">
               <!--  <h1 class="fw-bolder" id="title2"><img src = "./img/pngwing.jpg" id="logo"></h1>--> 
                <a class="btn btn-lg btn-light" href="#about" width="10px" height="10px" id="nav1">사이트 이용방법</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#culture" id="nav2">문화활동</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" id="nav3">자기계발</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" id="nav4">여행</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" width="10px" height="10px" id="nav5">커뮤니티</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" id="nav6">마이페이지</a>&nbsp;&nbsp;&nbsp;
        </header>
<c:if test="${empty userName }">
	<div class="login">
		<fieldset>
		<legend id="login-form-title">로그인 페이지</legend>
			<div id="login-header">
				<!-- <form action="/member/login.mayfly" method="post"> -->
					<div id="login-header-layer">
						<input type="text" class="input-form" id="userId" name="userId" placeholder="아이디를 입력해주세요" required><br>
						<input type="password" class="input-form" id="userPwd" name="userPwd" placeholder="비밀번호를 입력해주세요" required><br>
					</div>		
					<div class="btn-wrap">
						<button class="login-page-btn"id="login-btn">로그인</button>	
					</div>
					<div class="btn-wrap">
						<button type="button" class="login-page-btn" id="regiter-btn" onclick="location.href='/member/joinView.mayfly'" >회원가입</button>	
					</div>
				</form>
			</div>
			<div id="login-footer">
				<div id="findId-link">
					<a href="/member/findId.mayfly" class="login-atag">>아이디 찾기</a>
				</div>
				<div id="findPwd-link">
					<a href="/member/findPwd.mayfly" class="login-atag">>비밀번호 찾기</a>
				</div>
			</div>
			</fieldset>
		</div>		
</c:if>
		<c:if test="${not empty userName }">
		<div class="login">
			<fieldset>
			<div>
				<div id="login-title">${userName }님 환영합니다.</div>
			</div>
			<div class="btn-wrap">
				<button onclick="location.href='/member/myInfo.mayfly?userId=${userId }'" class="login-page-btn">마이페이지</button>
			</div>
			<div class="btn-wrap">	
				<button onclick="location.href='/member/logout.mayfly'" class="login-page-btn">로그아웃</button>
			</div>
			</fieldset>
		</div>
		</c:if>
		</div>
</div>
	
	
	
	<script>
 	$("#login-btn").on("click", function() { 
		var userId= $("#userId").val(); 
		var userPwd = $("#userPwd").val(); 
		if(userId == ""){
			alert("아이디를 입력해주세요.");
		}else if(userPwd == ""){
			alert("비밀번호를 입력해주세요.");
		}else{
			$.ajax({ 
	 			url : "/member/login.mayfly", 
				type : "POST",
	 			data : {"userId" : userId , "userPwd" : userPwd}, 
	 			success : function(result) {
	 				location.href="/member/loginView.mayfly";
	 					if(result != "success"){
							alert("아이디 또는 비밀번호를 잘못입력하셨습니다.")
					}
				},	 
			error : function(){
					alert("로그인 과정에서 오류가 발생하였습니다.");
				} 
			});
		 }
	 });
	</script>

	
 <!-- About section-->
        <!-- Services section-->
     
        <!-- Contact section-->
       
        <!-- Footer-->
        <!-- Core theme JS-->
    </body>
<!--         <footer class="py-5 bg-dark">
            <div class="container px-4"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        Bootstrap core JS
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> -->
</html>