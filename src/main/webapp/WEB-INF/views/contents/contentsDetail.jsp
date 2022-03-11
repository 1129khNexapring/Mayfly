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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
	rel="stylesheet">
<link rel="icon" type="image/x-icon" href="../resources/image/logo.JPG" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../resources/css/styles.css?again" rel="stylesheet" />
<style>

#contents-detail-div{
display: flex;
justify-content: center;
padding-top : 0px;
}



#contents-detail{
display: flex;
justify-content: center;
background : #faf6f3;
border : 2px solid #f4e1a9;

}

	#img-td{
	width : 450px;
	}


		#detailImg{
		width : 450px;
		height : 450px;
		}


#detailTitle{
width : 440px;
height : 50px;
text-align : center;
font-size : 20px;
font-weight: bolder;

}
#detailTable{
width :440px;
height : 400px;
text-align : center;

}

#leftSrc{
	width: 297PX;
	float : left;
	height : 250px;
}

#midSrc{
	width : 297PX;
	float : left;
	height : 250px;
	}
	
#rightSrc{
	width : 297PX;
	float : left;
	height : 250px;
}

#viewsTable{

text-align:right;
padding-right : 10px;

}

#detail-btn-td{
height : 35px;
text-align :center;
margin : 5px 0px;
/*position:fixed;*/
}


	.detail-btn{
	width : 293px;
	height : 35px;
	margin-left : 0px;
	margin-right : 0px;
	padding : 0px;
	background : #f4e1a9;
	border : 1px solid #fcc72d;
	border-left : none;
	border-right : none;
	}

#moreDetail{

border-top : 2px solid #f4e1a9;
height : 990px;
text-align : center;
}

#moreImg{
background-color : blue;
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
	
.dImg{
	height : 250px;
	width : 298px;
}
</style>
</head>
<script>
	function bookingLoginCheck(click) {
		/* var bookingButton = document.querySelector("#bookingButton"); */
		/* var loginButton = document.querySelector("#loginButton"); */
		var userId = '${userId}';
		/* var e = window.event; */
		if(userId == "") {
			alert("로그인을 먼저 해주세요.")
			window.location.href = '/member/loginView.mayfly';
			return false;
		}else {
			return true;
		}
	}
	
	function interestLoginCheck(click) {
		var userId = '${userId}';
		if(userId == "") {
			alert("로그인을 먼저 해주세요.")
			window.location.href = '/member/loginView.mayfly';
			return false;
		}else {
			location.href='/interest/register.mayfly?contentName=${contents.contentsTitle }&contentNo=${contents.contentsNo }&userId=${userId}';
		}
	}
</script>
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
	<br>
	<br>
	<div id="contents-detail-div">
	<form action="/booking/writeView.mayfly" method="get">
		<input type="hidden" id="contentNo" name="contentNo" value="0">
		<input type="hidden" id="contentsType" name="contentsType" value="${contents.contentsType }">
		<input type="hidden" id="contentsTitle" name="contentsTitle" value="${contents.contentsTitle }">
		<input type="hidden" id="userId" name="userId" value="${member.userId }">
		<table id="contents-detail" width="900px" height="1500px">
		<!--  	<tr>
				<td id="viewsTable" colspan="2" >조회수 ${contents.contentsViews }</td>
			</tr>-->
			<tr id="detail-header">				
				<td height="200" id="img-td"><img
					src="/resources/image/${contents.contentsImg }" id="detailImg">
				</td>
				
				<td>
					<div id="detailTitle">${contents.contentsTitle }</div>
					<div id="detailTable"><br>장소 : ${contents.contentsWriter } <br><br> 기간 : <fmt:formatDate value="${contents.contentsDay}"
							pattern="yyyy-MM-dd" /> ~ <fmt:formatDate value="${contents.contentsEnd}"
							pattern="yyyy-MM-dd" /> </div>
				</td>
			</tr>
			<tr>
				<td colspan="2" id="detail-btn-td">
					<button type="button" class="detail-btn" onclick="return interestLoginCheck(click);">관심목록에 추가</button>
					<button class="detail-btn" type="button" onclick="location.href='/review/List.mayfly'">후기</button>
					<input type="submit" class="detail-btn" id="bookingButton" onclick="return bookingLoginCheck(this.value);" value="예약 하기">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div id="moreDetail">
						<div id="moreImg">
							<div id="leftSrc"><img src="/resources/image/${contents.contentsImg1 }" class="dImg"></div>
							<div id="midSrc"><img src="/resources/image/${contents.contentsImg2 }" class="dImg"></div>
							<div id="rightSrc"><img src="/resources/image/${contents.contentsImg3 }" class="dImg"></div>
						</div>
						<div id="moreText">
						</div>
					</div>
				</td>
			</tr>
		</table>
	</form>
</div>

<!--<script>
$(window).scroll(function(){ 
  var height = $(document).scrollTop(); //실시간으로 스크롤의 높이를 측정
  if(height > 0){ 
    $('#contents-detail-div').addClass('detail-btn-td'); 
  }else if(height == 0){ 
    $('#contents-detail-div').removeClass('detail-btn-td'); 
  } 
});
</script>
-->

</body>
</html>

<!-- 			<c:url var="cDetail" value="/contents/detail.mayfly">
					<c:param name="contentsNo" value="${contents.contentsNo }"></c:param>
				</c:url>
				<td>${contents.contentsViews }</td> 			-->
