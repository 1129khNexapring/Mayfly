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
        <link href="../resources/css/styles.css" rel="stylesheet" />
        <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
	#mypage-left-side{
	width: 400px;
	height : 1000px;
	border: solid 2px lightgray;
	
	float: left;
	}
	
		#mypage-left-info{
		width : inherit;
		height : 300px;
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
					border: solid 2px lightgray;
					background: #c8c8c8;
					color : white;
					border-top-left-radius: 10px;
				    border-top-right-radius: 10px;
				    border-bottom-left-radius: 10px;
				    border-bottom-right-radius: 10px;
				}
		
	
	#frame{
	width : 600px;
	margin-left : 180px;
	float: left;
	}
	
	
	
	#mypage-title{
	text-align:center;
	font-weight : bolder;
	font-size : 23px;
	margin-top : 20px;
	margin-bottom : 15px;
	float: left;
	}
	
	.input-form-wrap{
	width : 250px;
	margin-left : 170px;
	}
	
		.input-form{
		margin-top:10px;
		margin-right:0px;
		width: 250px;
		height : 30px;
		border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
	    border-color :#9e9e9e;
		}
	
		input[class^=postcodify]{
		margin-top:10px;
		width: 250px;
		height : 30px;
		border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
	    border-color : #9e9e9e;	
		}
	
	
	
	#id-btn-wrap{
	float : right;
	margin-right : 80px;
	margin-top : 12px;
	margin-left : 5px;
	}
		.chk-btn{
		padding-right : 10px;
		margin-left : 5px;
		display: inline-block;
		height : 30px;
		float : right;
		cursor: pointer;
		}

	#addr-btn-wrap{
	float : right;
	margin-right : 105px;
	margin-top : 12px;
	margin-left : 5px;
	}



	.form-wrap-ex{
	width : 250px;
	margin-left : 170px;
	display: inline-block;
	margin-right : 10px;
	}


	.text-div{
	width : 250px;
	height : 30px;
	text-align : left;
	margin-left : 170px;
	display: inline-block;
	line-height: 60px;
	 
	}


	#modify-btn-wrap{
    height: 30px;
    width: 100px;
    margin-top: 20px;
    margin-left : 175px;
    margin-right: 5px;
    border: solid 1px rgba(0,0,0,.1);
    background-color: lightgray;
    color: white;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    float :left;
}

	#remove-btn-wrap{
	    height: 30px;
	    width: 100px;
	    margin-top: 20px;
	    margin-left : 30px;
	    margin-right: 5px;
	    border: solid 1px rgba(0,0,0,.1);
	    background-color: lightgray;
	    color: white;
	    border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
	    float :left;
	}

 
	.button{
	 width:100px;
   
    background-color: lightgray;
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
	.bTd {
		border: 2px solid lightgray;
		padding: 15px;
	}
	.bSubmit {
		border-radius: 5px;
		background-color: skyblue;
		border: skyblue;
		color: white;
	}
	#bTable {
		border: 2px solid lightgray;
	}
	}
</style>
<script type="text/javascript">
	function alert(check) {
		alert("?????? ?????? ?????????????????????????");
	}
</script>
</head>
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
    
    <!-- ?????? ????????? ??????-->
    <div id="mypage-left-side">
	     <div id="mypage-left-info">
		     <div id="mypage-left-photo">
		      	<img src="../resources/img/default_profile.png" alt="?????? ????????? ??????" width="130px" height="130px">
		     </div>
		     <div id="mypage-left-id">
		     	<p id="mapage-left-id-msg">${userName }?????? ???????????????</p>
		     </div>
		     <div id="mypage-left-button">
		     	<button onclick="location.href='/member/myInfo.mayfly?userId=${userId }'">?????? ?????? ??????</button>
		     	<button onclick="location.href='/member/logout.mayfly'">????????????</button>
		     </div>
	     </div>
	     <div>
	     </div>
    </div>
    <!-- ?????? ?????? ????????? ?????? -->
	<h1 align="center">${booking.bookingNo }??? ?????? ??????</h1>
	<br><br>
	<br>
	<table align="center" width="500" border="1" id="bTable">
		<tr>
			<td class="bTd">????????????</td>
			<td class="bTd">${booking.bookingNo }</td>
		</tr>
		<tr>
			<td class="bTd">????????????</td>
			<td class="bTd">${booking.bookingDate }</td>
		</tr>
		<tr>
			<td class="bTd">????????????</td>
			<td class="bTd">${booking.bookingPeo }</td>
		</tr>
		<tr>
			<td class="bTd">???????????????</td>
			<td class="bTd">
				<c:if test="${booking.categoryName eq 'C' }">
					????????????
				</c:if>
				<c:if test="${booking.categoryName eq 'S' }">
					????????????
				</c:if>
				<c:if test="${booking.categoryName eq 'T' }">
					??????
				</c:if>
			</td>
		</tr>
		<tr>
			<td class="bTd">????????????</td>
			<td class="bTd">${booking.contentName }</td>
		</tr>
		<tr>
			<td class="bTd">?????????</td>
			<td class="bTd">
				<c:if test="${booking.optionName eq '3hours' }">
					3????????? (???????????? : ?????????????????? 30???)
				</c:if>
				<c:if test="${booking.optionName eq '5hours' }">
					5????????? (???????????? : ?????????????????? 30???)
				</c:if>
			</td>
		</tr>
		<tr>
			<td class="bTd">????????????</td>
			<td class="bTd">${booking.bookingPrice }</td>
		</tr>
		<tr align="center" height="30">
		<td colspan="3">
			<button onclick="location.href='/booking/writeView.mayfly?contentNo=0&contentsType=${booking.categoryName}&contentsTitle=${booking.contentName }'" class="bSubmit">?????? ??????</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="bSubmit" onclick="location.href='/booking/delete.mayfly?bookingNo=${booking.bookingNo}'" onclick='alert(this.value);'>?????? ??????</button>			
		</td>
	</table>
</body>
</html> 