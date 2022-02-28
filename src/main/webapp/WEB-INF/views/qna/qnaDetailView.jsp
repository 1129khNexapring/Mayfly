<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Mayfly</title>
<link rel="icon" type="image/x-icon" href="/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../resources/css/styles.css?after" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<style type="text/css">
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
					background: #edacb1;
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
	

	a {
		text-decoration: none;
		color: black;
	}
	#qnaDetailTable {
		border-style :solid;
		border-width : 1.5px;
		border-color: maroon;
		border-top-left-radius: 10px;
         border-top-right-radius: 10px;
         border-bottom-left-radius: 10px;
         border-bottom-right-radius: 10px;
    	padding: 5px 5px 5px 5px;
    	
	}
	#qnaDetaiTableDiv {
		margin-right: 300px;
	
	}
	#qnaDetailTable td:nth-child(odd) {
		background: #fff5ee;
	}
	#qnaDetailBtn {
		display: flex;
		justify-content: center;
	}
	#btn1 {
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
	#btn2 {
			border: solid 1.5px gold;
			background: #ffa099;
		    color : white;
		    border-top-left-radius: 10px;
		    border-top-right-radius: 10px;
		    border-bottom-left-radius: 10px;
		    border-bottom-right-radius: 10px;
		   width : 90px;
		    height: 40px;
	}
	#qnaCommentsTable {
		border-style :solid;
		border-width : 1.5px;
		border-color: maroon;
		border-top-left-radius: 10px;
         border-top-right-radius: 10px;
         border-bottom-left-radius: 10px;
         border-bottom-right-radius: 10px;
    	padding: 5px 5px 5px 5px;
    	
	}
	#qnaCommentsTableDiv {
		margin-right: 300px;
	}
	
	#qnaCommentsAfter {
		border-style :solid;
		border-width : 1.5px;
		border-color: maroon;
		border-top-left-radius: 10px;
         border-top-right-radius: 10px;
         border-bottom-left-radius: 10px;
         border-bottom-right-radius: 10px;
    	padding: 5px 5px 5px 5px;
	}
	#qnaCommentsDivAfter {
		margin-right: 300px;
	}
	
	#commentsBtn {
		display: flex;
		justify-content: center;
		margin-left: 600px;
	}
	#c-btn1 {
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
	#c-btn2 {
			border: solid 1.5px gold;
			background: #ffa099;
		    color : white;
		    border-top-left-radius: 10px;
		    border-top-right-radius: 10px;
		    border-bottom-left-radius: 10px;
		    border-bottom-right-radius: 10px;
		    width : 90px;
		    height: 40px;
	}
	#c-btn3 {
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
	#qnaDetailTitle {
			margin-right: 300px;
	}
	#c-btnBefore {
			border: solid 1.5px gold;
			background: #00bfcd;
		    color : white;
		    border-top-left-radius: 10px;
		    border-top-right-radius: 10px;
		    border-bottom-left-radius: 10px;
		    border-bottom-right-radius: 10px;
		    width : 90px;
		    height: 40px;
		   margin-left: 200px;
		}
	#c-btnBeforeDiv{
		display: flex;
		justify-content: center;
		
		
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
	     	<button onclick="location.href='/board/list.mayfly'">COMMUNITY</button><br>
	     	<button onclick="location.href='/qna/list.mayfly'">Q&A</button>
	     </div>
    </div>
<body>
	<div id="qnaDetailTitle"><h3 align="center">Q&A</h3></div>
	<br>
	<br>
	<div id="qnaDetaiTableDiv">
	<table align="center" width="800" border="1" id="qnaDetailTable">
		<tr>
			<td align="center" width="100">제목</td>
			<td>&nbsp;&nbsp;${qna.qnaTitle }</td>
		</tr>
		<tr>
			<td align="center">작성자</td>
			<td>&nbsp;&nbsp;${qna.qnaWriter }</td>
		</tr>
		<tr>
			<td align="center">작성날짜</td>
			<td>&nbsp;&nbsp;${qna.qnaDate }</td>
		</tr>

		<tr height="300" >
			<td align="center">내용</td>
			<td>&nbsp;&nbsp;${qna.qnaContent }</td>
		</tr>
	</table>
	
	<br>
	<c:if test="${sessionScope.userId eq qna.qnaWriter }">
		<div id="qnaDetailBtn">
			<input type="button" value="수정하기" id="btn1"
				onclick="location.href='/qna/updateView.mayfly?qnaNo=${qna.qnaNo }'">
				&nbsp;&nbsp;
			<input type="button" align="right" value="삭제하기" id="btn2"
				onclick="location.href='/qna/delete.mayfly?qnaNo=${qna.qnaNo}'">
				&nbsp;&nbsp;
			<input type="button" value="돌아가기" id="c-btn3"
				onclick="location.href='/qna/list.mayfly';"></div>
			<!-- <a href="/qna/updateView.mayfly?qnaNo=${qna.qnaNo }">수정 </a> --> <!-- <a href="/qna/list.mayfly">삭제</a> -->
		</div>
	</c:if>
</div>
	
	<br><br>
	<!-- 답변 -->
	<!-- 관리자 계정 권한 -->
	<c:if test = "${sessionScope.userId eq 'manager'}">
		<c:if test="${qna.answerContent eq null }">
			<div id="qnaCommentsTableDiv">
			<form action="/qna/answer.mayfly" method="get">
				<input type="hidden" name="qnaNo" value="${qna.qnaNo }">
				<table align="center" width="500" border="1" id="qnaCommentsTable">
					<tr>
						<td><textarea rows="4" cols="93" name="answerContent"></textarea>
						</td>
					</tr>
				</table>
			</div>
			<br>
				<div id="c-btnBeforeDiv"><input type="submit" value="답변 등록" id="c-btnBefore"></div>
						
			</form>
		</c:if>

		<!-- 답변 수정 -->
		<c:if test="${qna.answerContent ne null }">
	
			<form action="/qna/answerUpdate.mayfly" method="post">
				<input type="hidden" name="qnaNo" value="${qna.qnaNo }">
				
				<div id="qnaCommentsDivAfter">
					<table align="center" width="500" border="1" id="qnaCommentsAfter">
						<tr>
							<td><textarea rows="5" cols="110" name="answerContent" >${qna.answerContent }</textarea>
							</td>
						</tr>
						<tr>
							<td style="background-color: white;">답변 날짜: ${qna.qnaDate }</td>
						</tr>
					</table>
				</div>
					<br>
						<div id="commentsBtn">
							<input type="submit" value="수정하기" id="c-btn1">&nbsp;&nbsp;
							<input type="button" value="삭제하기" id="c-btn2"
							onclick="location.href='/qna/answerDelete.mayfly?qnaNo=${qna.qnaNo}'">&nbsp;&nbsp;
						</div>	
		
				
			</form>
		</c:if>
	</c:if>

	<c:if test = "${sessionScope.userId ne 'manager'}">
	<div id="qnaCommentsTableDiv">
		<table align="center" width="500" border="1" id="qnaCommentsAfter">
			<tr>
				<td><textarea rows="5" cols="110" name="answerContent" >${qna.answerContent }</textarea>
				</td>
			</tr>
			<tr>
				<td style="background-color: white;">답변 날짜: ${qna.qnaDate }</td>
			</tr>
		</table>
	</div>
	</c:if>
</body>


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
