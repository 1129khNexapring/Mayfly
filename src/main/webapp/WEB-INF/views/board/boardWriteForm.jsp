<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Mayfly</title>
        <link rel="icon" type="image/x-icon" href="/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/css/styles.css" rel="stylesheet" />
        <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    </head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
<style>


#mypage-left-side{
	width: 400px;
	height : 1000px;
	border-right: solid 2px #c8c8c8;

	float: left;
	}
	
		#mypage-left-info{
		width : inherit;
		height : 300px;
		margin-top : 200px;
		padding-top : 30px;
		}
		
			#mypage-left-photo{
				width : 130px;
				height : 130px;
				margin-left : 135px;
			}
			
			#mypage-left-id{
				width : 250px;
				height : 30px;
				margin-top : 20px;
				margin-left : 75px;
			
			}
			
				#mapage-left-id-msg{
				text-align : center;
				font-size : 17px;
				}
			
			
			#mypage-left-button{
				width : 250px;
				height : 30px;
				margin-top : 10px;
				margin-left : 75px;
			
			}
			
				#mypage-left-button>button{
					margin-left : 12px;
					border: solid 2px gold;
					background: #ffa099;
					color : white;
					border-top-left-radius: 10px;
				    border-top-right-radius: 10px;
				    border-bottom-left-radius: 10px;
				    border-bottom-right-radius: 10px;
				}
		

	#mypage-left-bottom{
	margin-top : 10px;

	}

		#mypage-left-bottom>button{
			width :250px;
			height :35px;
			margin-left : 70px;
			margin-top : 20px;
			border: solid 2px gold;
			background: #008CBA;
		    color : white;
		    border-top-left-radius: 10px;
		    border-top-right-radius: 10px;
		    border-bottom-left-radius: 10px;
		    border-bottom-right-radius: 10px;
		}
	
	
	#register-writeTitle {
		margin-left: 5%;
	}
	
	
		
	}
	#fileBox {
		float: left;
		display: flex;
		justify-content: center;
		
	}
	#filed {
		display: flex;
		justify-content: center;
	
	}
	#uploadFile {
		width:400px;
		border: solid 1.5px maroon;
		padding-top:5px;
		padding-bottom:5px;
		padding-left:5px;
		border-top-left-radius: 10px;
		border-top-right-radius: 10px;
		border-bottom-left-radius: 10px;
		border-bottom-right-radius: 10px;
		
	}
	#register-btn {
		text-align: center;
	}
	
	
	#boardTB {
		border-style :solid;
		border-width : 1.5px;
		border-color: maroon;
		border-top-left-radius: 10px;
         border-top-right-radius: 10px;
         border-bottom-left-radius: 10px;
         border-bottom-right-radius: 10px;
    	padding: 5px 5px 5px 5px;
    	
	}
	
	#boardTB td:nth-child(odd) {
		background: #fff5ee;
	}

	
	#register-writeTitle {
		margin-right: 300px;
	}
	#button1 {
			border: solid 1.5px gold;
			background: #00bfcd;
		    color : white;
		    border-top-left-radius: 10px;
		    border-top-right-radius: 10px;
		    border-bottom-left-radius: 10px;
		    border-bottom-right-radius: 10px;
		    width : 90px;
		    height: 40px;
	}
	#button2 {
			border: solid 1.5px gold;
			background: silver;
		    color : white;
		    border-top-left-radius: 10px;
		    border-top-right-radius: 10px;
		    border-bottom-left-radius: 10px;
		    border-bottom-right-radius: 10px;
		    width : 90px;
		    height: 40px;
	}
	#register-view {
		margin-right: 300px;
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
        
               <!-- 왼쪽 사이드 영역-->
    <div id="mypage-left-side">
	     <div id="mypage-left-info">
		     <div id="mypage-left-photo">
		      	<img src="../resources/img/default_profile.png" alt="기본 프로필 사진" width="130px" height="130px">
		     </div>
		     <div id="mypage-left-id">
		     	<p id="mapage-left-id-msg">${userName }님의 마이페이지</p>
		     </div>
		     <div id="mypage-left-button">
		     	<button onclick="location.href='/member/myInfo.mayfly?userId=${userId }'">나의 정보 확인</button>
		     	<button onclick="location.href='/member/logout.mayfly'">로그아웃</button>
		     </div>
	     </div>
	     <div id ="mypage-left-bottom">
	     	<button>COMMUNITY</button><br>
	     	<button>Q&A</button>
	     </div>
    </div>
	<div id="register-writeTitle"><h3 align="center" >COMMUNITY</h3></div>
	
	<br><br>
	
	
		<form action="/board/register.mayfly" method="post" enctype="multipart/form-data" >
			<div id="register-view">
			 <table id="boardTB" align="center" border="1" width="800">
				<tr>
					<td  align="center">작성자</td>
					<td><input type="text" id="register-writer" size="50" name="boardWriter"></td>
				</tr>
				<tr>
					<td  align="center">제목</td>
					<td><input type="text" id="register-title" size="70" name="boardTitle"></td>
				</tr>
				<tr>
					<td  align="center">글 내용</td>
					<td><textarea rows="15" cols="91" name="boardContents"></textarea></td>
				</tr>
			</table>
				<br>
				<div id="filed">
				<div id="fileBox">
					<input type="file" id="uploadFile" name="uploadFile">
				</div>
				</div>
				<br>
				<div>
					<div>
						<div id="register-btn">
							<input id = "button1" type="submit" value="등록하기">&nbsp;&nbsp;&nbsp;
							<a href="/board/list.mayfly"><input type="button" id = "button2"  value="목록으로"></a>
						</div>
					</div>
				</div>
				</div>
			</form>
		
	
	
<!-- About section-->
        <!-- Services section-->
     
        <!-- Contact section-->
       
        <!-- Footer-->
        <!-- Core theme JS-->
    </body>
         <footer class="py-5 bg-dark">
            <div class="container px-4"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
       <!--  Bootstrap core JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</html>
