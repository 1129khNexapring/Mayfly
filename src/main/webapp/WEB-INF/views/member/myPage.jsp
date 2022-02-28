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
					border: solid 2px #c8c8c8;
					background: #c8c8c8;
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
			border: solid 2px #008CBA;
			background: #008CBA;
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
	 margin-left : 230px; 
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
	    border-color :#c8c8c8;
		}
	
		input[class^=postcodify]{
		margin-top:10px;
		width: 250px;
		height : 30px;
		border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
	    border-color : #c8c8c8;	
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
    background-color: #c8c8c8;
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
	    background-color: crimson;
	    color: white;
	    border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
	    float :left;
	}

 
	.button{
	 width:100px;
    background-color:  #c8c8c8;
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
	
	#remove-btn{
	background-color: crimson;
	border-color : crimson;
	}
	


#addr-btn-wrap>button{
 	width: 50px;
    background-color: white;
    border: solid 1px gray;
    color: black;
    font-size: 15px;
    outline:none;
    cursor: pointer;
 	 border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;

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
	     	<button onclick="location.href='/interest/List.mayfly'">관심 컨텐츠 목록</button><br>
	     	<button onclick="location.href='/booking/List.mayfly'">예약 목록</button>
	     </div>
    </div>
    <!-- 개인정보 확인 및 수정 영역-->
	<div id="frame">
		<form action="/member/modify.mayfly" method="post">	
			<div id="mypage-title">마이페이지</div>
					<div class="text-div">아이디 </div>
						<div class="input-form-wrap">
							<input type="text" class="input-form" name="userId" value="${member.userId }" readonly>
						</div >
					<div class="text-div">비밀번호 </div>
						<div class="input-form-wrap">
							<input type="password" class="input-form" name="userPwd" value="${member.userPwd }">
						</div>
					<div>
						<div class="text-div">이름 </div>
						<div class="input-form-wrap">
							<input type="text" class="input-form" name="userName" value="${member.userName }" readonly>
						</div>
					</div>
					<div>
						<div class="text-div">전화번호 </div>
						<div class="input-form-wrap">
							<input type="text" class="input-form" name="userPhone" value="${member.userPhone }">
						</div>
					</div>
					<div>
						<div class="text-div">이메일 </div>
						<div class="input-form-wrap">
							<input type="text" class="input-form" name="userEmail" value="${member.userEmail }">
						</div>
					</div>
		<c:forTokens items="${member.userAddr }" delims="," var="addr" varStatus="status">
			<c:if test="${status.index eq 0 }">
					<div>
						<div class="text-div">우편번호</div>
							<div class="form-wrap-ex">
								<input type="text" name="post" class="postcodify_postcode5" size="6" value="${addr }">
							</div>
						<div id="addr-btn-wrap">
							<button type="button" class="chk-btn" id="postcodify_search_button">검색</button>
						</div>
					</div>
			</c:if>
			<c:if test="${status.index eq 1 }">
					<div>
						<div class="text-div">도로명 주소</div>
							<div class="input-form-wrap">
								<input type="text" name="address1" class="postcodify_address" value="${addr }">
							</div>
					</div>
			</c:if>
			<c:if test="${status.index eq 2 }">
					<div>
						<div class="text-div">상세 주소</div>
							<div class="input-form-wrap">
								<input type="text" name="address2" class="postcodify_exdiva_info" value="${addr }">
							</div>
					</div>
			</c:if>
			</c:forTokens>
					<div>
						<div class="text-div">비밀번호 찾기 질문 : </div>
							<div class="input-form-wrap">
								<select class="input-form" name="qPwd">
									<option value="place"
										<c:if test="${member.qPwd eq 'place' }">selected="selected"</c:if>>가장 기억에 남는 장소는?</option>
									<option value="food"
										<c:if test="${member.qPwd eq 'food' }">selected="selected"</c:if>>가장 좋아하는 음식은?</option>
									<option value="divavel"
										<c:if test="${member.qPwd eq 'divavel' }">selected="selected"</c:if>>제일 처음 가봤던 해외여행지는?</option>
									<option value="singer"
										<c:if test="${member.qPwd eq 'singer' }">selected="selected"</c:if>>가장 좋아하는 가수는?</option>	
									<option value="movie"
									<c:if test="${member.qPwd eq 'movie' }">selected="selected"</c:if>>처음으로 영화관에서 봤던 영화는?</option>	
								</select>
							</div>
						<div>
						<div class="text-div">비밀번호 찾기 답변 :</div>
							<div class="input-form-wrap">
								<input type="text" class="input-form" name="aPwd" value="${member.aPwd }">
							</div>
						</div>
						<div id="modify-btn-wrap">
							<button  class="button" id="modify-btn" >수정하기</button>
						</div>
						<div id="remove-btn-wrap">	
							<button type="button" class="button" id="remove-btn">탈퇴하기</button>
						</div>
		</form>
	</div>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script> 
	$(function() { $("#postcodify_search_button").postcodifyPopUp(); });
	 
	$("#remove-btn").on("click", function() {
		var userId = "${userId}";
		var answer = confirm("정말 탈퇴하시겠습니까?"); 
		if (answer) { 
		// 탈퇴 작업 진행
		$.ajax({
				url : "/member/remove.mayfly",
				type : "post",
				data : { "userId" : userId},
				success : function(data){
					if(data == "success") {
						alert("탈퇴되었습니다.");
					}else {
						alert("탈퇴가 실패되었습니다.");
					}
				},
				error : function(){
					alert("탈퇴 과정에서 오류가 발생하였습니다.");
				}
			});
		}
		 });
	
	</script>


</body>
</html> <!-- About section-->
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