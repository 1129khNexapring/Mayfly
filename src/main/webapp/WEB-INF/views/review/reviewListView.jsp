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
<title>후기 목록 페이지</title>
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
	
	#reviewListTable{
		background-color: #ffffff;
		  line-height: 1.5;
			
		 
	}
	th {
	 		background: #fff5ee;
	 		height:30px;
		   width: 150px;
		  font-weight: bold; 
		  border-bottom: 1px solid #ffffff;
		  border-color: #e7bd42;
		  text-align: center;
		  border-top-left-radius: 4px;
	    border-top-right-radius: 4px;
	    border-bottom-left-radius: 4px;
	    border-bottom-right-radius: 4px;
		}
		td {
		  width: 350px;
		  padding: 10px;
		  vertical-align: top;
		  border-bottom: 1px solid #ccc;
		   border-color: #e7bd42;
		   text-align: center;
		   border-top-left-radius: 4px;
	   		border-top-right-radius: 4px;
	    	border-bottom-left-radius: 4px;
	   	 	border-bottom-right-radius: 4px;
		}
	#reviewListTableDiv{
		margin-right: 340px;
	}
	#page {
		display: flex;
 	 	justify-content: center;
 	 	margin-right: 340px;
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
	#reviewListBtn {
		display: flex;
 	 	justify-content: center;
 	 	margin-left: 1100px;
	}
	#reviewTitle{
		margin-left: 100px;
	}
	a{
		text-decoration: none;
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
    
    		
			
			
    <div id="reviewListTableDiv">
	<div id="reviewTitle"><h3 align="center">REVIEW</h3></div>
	<br><br>
	<div id="reviewListBtn">
				<a href="/review/writeView.mayfly" align="right"><input type="button" value="후기 작성" id="btn1"></a>
			</div>
			<br>
	<table align="center" border="0" id="reviewListTable" width= "1000" >
		<tr>
			<th>예약번호</th>
			<th>컨텐츠명</th>
			<th>작성일</th>
			<th>회원아이디</th>
		</tr>
		<c:forEach items="${rList }" var="review">
			<tr>
				<td>${review.bookingNo }</td>
				<c:url var="rDetail" value="/review/detail.mayfly">
					<c:param name="bookingNo" value="${review.bookingNo }"></c:param>
				</c:url>
				<td><a href="${rDetail }">${review.contentName }</a></td>
				<td>${review.reviewDate }</td>
				<td>${review.userId }</td>
			</tr>
		</c:forEach>
		</table>
	</div>
	<br>
			<div id="page">
			[<<]
				<c:forEach var="p" begin="${pi.startNavi }" end="${pi.endNavi }">
					<c:url var="pagination" value="/review/List.mayfly">
						<c:param name="page" value="${p }"></c:param>					
					</c:url>
					&nbsp;<a href="${pagination }">${p }</a>&nbsp;
				</c:forEach>
			[>>]
			</div>
		
		
	
</body>
</html>