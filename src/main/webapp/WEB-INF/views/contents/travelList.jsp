<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Mayfly</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
	rel="stylesheet">
<link rel="icon" type="image/x-icon" href="../resources/image/logo.JPG" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../resources/css/styles.css" rel="stylesheet" />

<style>

#main{

	max-width: 100%;
    width: 1400px;
    margin-left: auto;
    margin-right: auto;
	
}

#contents-img {
	/*border-radius: 20px;*/
	border : 0px;
	cursor: pointer;
	transform: scale(1);
	width: 250px;
	height: 250px;
	/* transition : all 0.3s ease-in-out;
    	overflow : hidden; */
}



#contents-td{
text-align : center;
width : 250px;
height :400px;
padding : 0px;
margin : 30px;
margin-bottom : 30px;
/*border : 2px solid maroon;*/
border: 1px solid;
display: inline-block;
/*box-shadow: 3px 3px 3px #c8c8c8;*/
background:#faf6f3;
}



#title-td {
	width : 250px;
	text-decoration : none;
	position: relative;
	/*border: 2px dashed #fff;*/
	font-weight: bolder;
	margin : 10px 0px;
}

#detail-div{
margin : 0px 0px 40px 0px;

}


#contents-table {
	caption-side: bottom;
	border : none;
	border-collapse: collapse;
	 margin-left: auto;
    margin-right: auto;
	

}

#content-atag{
font-size : 17px;
}




#heartBtn{

cursor: pointer;

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

<<body id="page-top">
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
	<br>
	<br>
	
	
	<div id="leftMain"> 
		 <c:set var="i" value="0" />
 		 <c:set var="j" value="3" />

		<table  id="contents-table" >
			<!-- 번호, 제목, 작성자, 날짜, 조회수, 첨부파일 -->
	  		<c:choose>
   			<c:when test="${tList != null && fn:length(tList) > 0 }">
			<c:forEach items="${tList }" var="contents">
			<c:if test="{i%j == 0}">
			<tr>
				
			</c:if>
				<td id="contents-td">
				<div >
		      		<img src="../resources/img/black_heart.png" alt="기본 프로필 사진" width="20px" height="20px"  id="heartBtn" name="heartBtn" onclick="src = '../resources/img/red_heart.png'">
		     	</div>
				<div id="contents-img-div">
					<c:url var="tDetail" value="/contents/Detail.mayfly">
						<c:param name="contentsNo" value="${contents.contentsNo }"></c:param>
					</c:url>
					<div><img src="/resources/image/${contents.contentsImg }"
						onclick="javascript:location.href='${tDetail }';" id="contents-img"></div>
				</div>
				<div id="contents-title-div">
					<c:url var="tDetail" value="/contents/Detail.mayfly">
						<c:param name="contentsNo" value="${contents.contentsNo }"></c:param>
					</c:url>
					<div id="title-td"><a href="${tDetail }" id="content-atag">${contents.contentsTitle }</a></div>
				</div>
				<!--  <div>
					<div id="dayTd"><fmt:formatDate value="${contents.contentsDay}"
							pattern="yyyy-MM-dd" /></div>
				</div>-->
				</td>
				
				 <c:if test="${i%j == j-1}">
     			</tr>
    			</c:if> 
   				<c:set var="i" value="${i+1}" />

				</c:forEach>
				</c:when>
				 </c:choose>
		
		
			<tr align="center" height="20">
				<td colspan="4"><c:forEach var="p" begin="${pi.startNavi }"
						end="${pi.endNavi }">
						<c:url var="pagination" value="/contents/list.mayfly">
							<c:param name="page" value="${p }"></c:param>
						</c:url>
						<a href="${pagination }">${p }</a>&nbsp;
				</c:forEach></td>
			</tr>
		</table>
	 </div> 

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!--  
	<div id="leftMain">
		<table id="table">
			<!-- 번호, 제목, 작성자, 날짜, 조회수, 첨부파일 -->
		<!-- <c:forEach items="${tList }" var="contents">
				<tr>
					<c:url var="tDetail" value="/contents/Detail.mayfly">
						<c:param name="contentsNo" value="${contents.contentsNo }"></c:param>
					</c:url>
					<td id="titleTd">&nbsp;&nbsp;&nbsp;<a href="${tDetail }">${contents.contentsTitle }</a></td>
				</tr>
				<tr>
					<c:url var="tDetail" value="/contents/Detail.mayfly">
						<c:param name="contentsNo" value="${contents.contentsNo }"></c:param>
					</c:url>
					<td><img src="/resources/image/${contents.contentsImg }"
						onclick="javascript:location.href='${tDetail }';" id="img"></td>
				</tr>
				<tr>
					<td id="dayTd"><fmt:formatDate value="${contents.contentsDay}"
							pattern="yyyy-MM-dd" /></td>
				</tr>
			</c:forEach>


			<tr align="center" height="20">
				<td colspan="4"><c:forEach var="p" begin="${pi.startNavi }"
						end="${pi.endNavi }">
						<c:url var="pagination" value="/contents/list.mayfly">
							<c:param name="page" value="${p }"></c:param>
						</c:url>
						<a href="${pagination }">${p }</a>&nbsp;
				</c:forEach></td>
			</tr>
		</table>
	</div>
-->
</body>
</html>
