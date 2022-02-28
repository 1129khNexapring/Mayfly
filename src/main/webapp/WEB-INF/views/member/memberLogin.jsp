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
	/*width : 300px;*/
	text-align : center;
/*	margin:auto;*/
	margin-left : 100px;
	margin-top : 150px;
	margin-bottom : 230px;
	display: flex;
	justify-content: center;
}


#login-atag1{
    color: black;
    text-decoration: none;
    display: inline-block;
    width : 150px;
    height :20px;
    float : left;
    margin-top : 5px;
  }
  
 #login-atag2{
    color: black;
    text-decoration: none;
    display: inline-block;
    width : 150px;
    height :20px;
    float : right;
    margin-top : -22px;
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

 .dropbtn {
     background-color: white;
     color: #777777;
     padding: 16px;
     font-size: 20px;
     border: none;
   }
   
   .dropdown {
   position: relative;
   display: inline-block;
   padding: 0.5rem 1rem;
   font-size: 1.25rem;
   border-radius: 0.3rem;
   color: #grey;
   background-color: white;
   margin-left: 40px;
   margin-top: 45px;
   display: inline-block;
   font-weight: 400;
   line-height: 1.5;
   text-align: center;
   text-decoration: none;
   vertical-align: middle;
   cursor: pointer;
   user-select: none;

   border: 1px solid transparent;
   transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
   
   .dropdown-content {
     display: none;
     position: absolute;
     background-color: #f1f1f1;
     min-width: 160px;
     box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
     z-index: 1;
   }
   
   .dropdown-content a {
     color: black;
     padding: 12px 16px;
     text-decoration: none;
     display: block;
   }
   
   .dropdown-content a:hover {background-color: #ddd;}
   
   .dropdown:hover .dropdown-content {display: block;}
   
   .dropdown:hover .dropbtn {background-color: #f1f1f1;}

 
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
                       <c:if test="${empty userId }">
                        <li class="nav-item"><a class="nav-link" href="/member/joinView.mayfly">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">|</a></li>
                        <li class="nav-item"><a class="nav-link" href="/member/loginView.mayfly">로그인</a></li>
                        </c:if>
                        <c:if test="${not empty userId }">
                        <li class="nav-item"><a class="nav-link" href="/member/myInfo.mayfly?userId=${userId }">마이페이지</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">|</a></li>
                        <li class="nav-item"><a class="nav-link" href="/member/logout.mayfly">로그아웃</a></li>
                        </c:if>
                        
                        
                     <!--     <li class="nav-item"><a class="nav-link" href="/member/myInfo.mayfly">마이페이지</a></li>-->
                    </ul>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-primary bg-gradient text-white">
                <a class="btn btn-lg btn-light" href="/contents/list.mayfly" id="nav2">문화활동</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="/self/list.mayfly" id="nav3">자기계발</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="/travel/list.mayfly" id="nav4">여행</a>&nbsp;&nbsp;&nbsp;
	            <div class="dropdown">
	              <button class="dropbtn">커뮤니티</button>
	              <div class="dropdown-content">
	                <a href="/board/list.mayfly">자유게시판</a>
	                <a href="/qna/list.mayfly">Q&A</a>
	              </div>
	            </div>
                <a class="btn btn-lg btn-light" href="/member/myInfo.mayfly?userId=${userId }" id="nav6">마이페이지</a>&nbsp;&nbsp;&nbsp;
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
					<a href="/member/findId.mayfly" id="login-atag1">>아이디 찾기</a>
				</div>
				<div id="findPwd-link">
					<a href="/member/findPwd.mayfly" id="login-atag2">>비밀번호 찾기</a>
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
	 			/*	if ( document.referrer ) { 
	 					// 뒤로가기
	 					history.back();
	 				}

	 				// 히스토리가 없으면,
	 				else { 
	 					// 메인 페이지로
	 					location.href = "/member/loginView.mayfly";
	 				}*/
	 				 location.href="/member/loginView.mayfly";
	 					if(result != "success"){
							alert("아이디 또는 비밀번호를 잘못입력하셨습니다."); 
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
 <footer class="py-5 bg-dark">
            <div class="container px-4"><p class="m-0 text-center text-white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Copyright &copy; Your Website 2022</p></div>
        </footer>
       <!--  Bootstrap core JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</html>