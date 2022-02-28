<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
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
    
<meta charset="UTF-8">
<title>예약 내용</title>
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
					border: solid 2px #ddc2ad;
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
		#reviewDetailTable {
			border-style :solid;
			border-width : 1.5px;
			border-color: maroon;
			border-top-left-radius: 10px;
         	border-top-right-radius: 10px;
         	border-bottom-left-radius: 10px;
        	 border-bottom-right-radius: 10px;
    		line-height: 20px;
    		padding-top:3px;
	    	padding-bottom: 3px;
	    	padding-left: 3px;
	    	padding-right: 3px;
		}
		#reviewDetailTable td:nth-child(odd) {
		background : #fff5ee;
	}
	#reviewDetailTableDiv {
		margin-right: 300px;
	}
	#reviewDetailTitle {
		margin-right: 280px;
	}
	#reviewDetailBtn {
		display: flex;
		justify-content: center;
		margin-right: 300px;
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
	     	<button >COMMUNITY</button><br>
	     	<button onclick="location.href='/qna/list.mayfly'">Q&A</button>
	     </div>
    </div>
	<div id="reviewDetailTitle"><h3 align="center">${review.bookingNo }번 예약자님 후기</h3></div>
	<br><br>
	<div id="reviewDetailTableDiv">
	<table align="center" width="800" border="1" id="reviewDetailTable">
		<tr>
			<td align="center" width="100">예약번호</td>
			<td height="30">&nbsp;${review.bookingNo }</td>
		</tr>
		<tr>
			<td align="center">컨텐츠명</td>
			<td height="30">&nbsp;${review.contentName }</td>
		</tr>
		<tr>
			<td align="center">후기내용</td>
			<td height="200">&nbsp;${review.reviewContent }</td>
		</tr>
		<tr>
			<td align="center">작성일</td>
			<td height="30">&nbsp;${review.reviewDate }</td>
		</tr>
		<tr>
			<td align="center">회원아이디</td>
			<td height="30">&nbsp;${review.userId }</td>
		</tr>
	</table>
	<br><br>
	</div>
		<div id="reviewDetailBtn">
			<button type="button"  id="btn1" onclick="location.href='/review/modifyView.mayfly?bookingNo=${review.bookingNo}'">후기 수정</button>&nbsp;&nbsp;&nbsp;<button type="button" id="btn2" onclick="location.href='/review/delete.mayfly?bookingNo=${review.bookingNo}'">후기삭제</button>	
		</div>
	
</body>
</html>