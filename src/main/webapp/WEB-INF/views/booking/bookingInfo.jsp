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
<link href="../resources/css/styles.css?go" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<style type="text/css">
	#cateName {
		border: 1px solid lightgray;
		color: lightgray;
		width:  115px;
		height: 41px;
		margin-left: 36px;
		margin-top: 55px;
		border-radius: 10px;
		padding-left: 26px;
		padding-top: 6px;
	}
	
	#conName {
	    margin-left: 54px;
	    margin-top: 40px;
	}
	.aside {
	    border-right: 1px solid lightgray;
	    width : 250px;
	    height: 700px;
	    float : left;
	    
	}
	#totalP {
	/*	margin-left: 46px;*/
	}
	
	.div-info{
	margin :10px;
	background-color :#fcc72d;
	}
	
	
	
	#infoDiv1 {
		border: 1px solid #fcc72d;
		border-right : none;
	    width: 500px;
	    height: 600px;
	  margin-left : 50px;
	    float : left;
	    background : #faf6f3;
	}
	#infoDiv2 {
		border: 1px solid #fcc72d;
	    width: 500px;
	    height: 600px;
	    float : left;
	    background : #faf6f3;
	}
	#info1 {
	/*  border: 1px solid lightgray;
	    width: 100.1%;
	    position: relative;
	    height: 292px;
	    margin-top: -15px;*/
	    margin-left: 10px;
	}
	#info2 {
	   border-top: 1px solid #fcc72d;
	   padding-left : 10px;
	    /*width: 100.1%;
	    height: 292px;
	    margin-top: -17px;
	    margin-left: 0px;*/
	}
	
	
	
	
	#font1 {
		font-size: 27px;
		text-align : center;
	}
	#font2 {
		padding-left: 13px;
	    font-size: 20px;
	    margin-top: -2px;
	    padding-top: 1px;
	    margin-bottom: -15px;
	}
	.font3 {
		margin-left: 20px;
	    font-size: 18px;
	    margin-top: 19px;
	    margin-bottom: 31px;
	}
	#font4 {
		margin-left: 20px;
		color: lightgray;
	}
	#font5 {
		margin-left: 370px;
    	margin-top: -40px;
	}
	#font6 {
		margin-top: 46px;
    	margin-left: 22px;
	}

	#font7 {
		margin-left: 370px;
   		margin-top: -37px;
	    color: goldenrod;
	}
	#font8 {
		font-size: 20px;
		text-align : center;
	}
	#comment {
		width : 480px;
		height: 500px;
	    font-size: 17px;
	    padding-top: 30px;
	}
	#check {
	    border: 1px solid lightgray;
	    background: lightgray;
	    color: #6c757d;
	    border-radius: 13px;
	    margin-top : 1000px;
	    margin-left : 1100px;
	    width: 94px;
	    height: 44px;
	    font-size: 27px;
	    text-decoration: none;
	    padding-left: 3px;
	}
	
</style>
<script type="text/javascript">
	
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
	<!-- <div id="side"></div>-->
		<div class="aside">
			<p id="cateName">
				<c:if test="${booking.categoryName eq 'C' }">
					문화활동
				</c:if>
				<c:if test="${booking.categoryName eq 'S' }">
					자기계발
				</c:if>
				<c:if test="${booking.categoryName eq 'T' }">
					여행
				</c:if>
			</p>
			<p id="conName">• ${booking.contentName }</p>
		</div>
		<div id="infoDiv1" class="info-div">
			<p id="font1">예약 정보</p>
			<div id="info1">
				<p id="font2">
					<c:if test="${booking.categoryName eq 'C' }">
					문화활동
				</c:if>
				<c:if test="${booking.categoryName eq 'S' }">
					자기계발
				</c:if>
				<c:if test="${booking.categoryName eq 'T' }">
					여행
				</c:if>
				<hr color="#fcc72d" class="hrTag">
				<p class="font3">${booking.contentName }</p>
				<p class="font3">
					<c:if test="${booking.optionName eq '3hours' }">
						3시간권 (유효기간 : 결제일로부터 30일)
					</c:if>
					<c:if test="${booking.optionName eq '5hours' }">
						5시간권 (유효기간 : 결제일로부터 30일)
					</c:if>
				</p> <!-- 옵션명 들어가야 함 -->
				<p class="font3">${booking.bookingDate }</p> <!-- 오늘 날짜 들어아갸 함 -->
				<hr color="#fcc72d" class="hrTag">
				<hr color="rightgray">
				<p id="font4">1인 기준</p> <p id="font5">X${booking.bookingPeo }</p>
				<p id="font6">총 금액</p> <p id="font7">₩ ${booking.bookingPrice }</p>
			</div>
		</div>
		<div id="infoDiv2" class="info-div">
			<p id="font8">꼭 알아두세요</p>
			<div id="info2">
				<pre id="comment">• 구매와 동시에 예약이 확정 됩니다.<br><br>• 유효기간 내 이용해주세요.<br><br>• 이용안내문자 이용시간 1시간전 일괄 발송 됩니다.<br><br>• 업무시간 이후 전일 예약시 예약 후 고객센터 확인 필수입니다.<br><br>• 본 상품은 부분사용 및 부분취소가 불가합니다.</pre>
			</div>
		</div>
		<div>
			<a href="/contents/list.mayfly" id="check">확&nbsp;&nbsp;&nbsp;인 </a>
		</div>
</body>
</html>

