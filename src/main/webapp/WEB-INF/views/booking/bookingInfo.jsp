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
                        <li class="nav-item"><a class="nav-link" href="/member/joinView.mayfly">????????????</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">|</a></li>
                        <li class="nav-item"><a class="nav-link" href="/member/loginView.mayfly">?????????</a></li>
                        </c:if>
                        <c:if test="${not empty userId }">
                        <li class="nav-item"><a class="nav-link" href="/member/myInfo.mayfly?userId=${userId }">???????????????</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">|</a></li>
                        <li class="nav-item"><a class="nav-link" href="/member/logout.mayfly">????????????</a></li>
                        </c:if>
                        
                        
                     <!--     <li class="nav-item"><a class="nav-link" href="/member/myInfo.mayfly">???????????????</a></li>-->
                    </ul>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-primary bg-gradient text-white">
                <a class="btn btn-lg btn-light" href="/contents/list.mayfly" id="nav2">????????????</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="/self/list.mayfly" id="nav3">????????????</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="/travel/list.mayfly" id="nav4">??????</a>&nbsp;&nbsp;&nbsp;
	            <div class="dropdown">
	              <button class="dropbtn">????????????</button>
	              <div class="dropdown-content">
	                <a href="/board/list.mayfly">???????????????</a>
	                <a href="/qna/list.mayfly">Q&A</a>
	              </div>
	            </div>
                <a class="btn btn-lg btn-light" href="/member/myInfo.mayfly?userId=${userId }" id="nav6">???????????????</a>&nbsp;&nbsp;&nbsp;
        </header>
	<!-- <div id="side"></div>-->
		<div class="aside">
			<p id="cateName">
				<c:if test="${booking.categoryName eq 'C' }">
					????????????
				</c:if>
				<c:if test="${booking.categoryName eq 'S' }">
					????????????
				</c:if>
				<c:if test="${booking.categoryName eq 'T' }">
					??????
				</c:if>
			</p>
			<p id="conName">??? ${booking.contentName }</p>
		</div>
		<div id="infoDiv1" class="info-div">
			<p id="font1">?????? ??????</p>
			<div id="info1">
				<p id="font2">
					<c:if test="${booking.categoryName eq 'C' }">
					????????????
				</c:if>
				<c:if test="${booking.categoryName eq 'S' }">
					????????????
				</c:if>
				<c:if test="${booking.categoryName eq 'T' }">
					??????
				</c:if>
				<hr color="#fcc72d" class="hrTag">
				<p class="font3">${booking.contentName }</p>
				<p class="font3">
					<c:if test="${booking.optionName eq '3hours' }">
						3????????? (???????????? : ?????????????????? 30???)
					</c:if>
					<c:if test="${booking.optionName eq '5hours' }">
						5????????? (???????????? : ?????????????????? 30???)
					</c:if>
				</p> <!-- ????????? ???????????? ??? -->
				<p class="font3">${booking.bookingDate }</p> <!-- ?????? ?????? ???????????? ??? -->
				<hr color="#fcc72d" class="hrTag">
				<hr color="rightgray">
				<p id="font4">1??? ??????</p> <p id="font5">X${booking.bookingPeo }</p>
				<p id="font6">??? ??????</p> <p id="font7">??? ${booking.bookingPrice }</p>
			</div>
		</div>
		<div id="infoDiv2" class="info-div">
			<p id="font8">??? ???????????????</p>
			<div id="info2">
				<pre id="comment">??? ????????? ????????? ????????? ?????? ?????????.<br><br>??? ???????????? ??? ??????????????????.<br><br>??? ?????????????????? ???????????? 1????????? ?????? ?????? ?????????.<br><br>??? ???????????? ?????? ?????? ????????? ?????? ??? ???????????? ?????? ???????????????.<br><br>??? ??? ????????? ???????????? ??? ??????????????? ???????????????.</pre>
			</div>
		</div>
		<div>
			<a href="/contents/list.mayfly" id="check">???&nbsp;&nbsp;&nbsp;??? </a>
		</div>
</body>
</html>

