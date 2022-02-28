<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>회원가입</title>
<style>
	.frame{
	width : 600px;
	height : 1100px;
	margin:auto
	}
	
	h2{
	text-align:center;
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
	    border-color : #c8c8c8;	
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
	
	margin-bottom :20px;
	margin-left : 5px;
	
	}
		.chk-btn{
		background-color: white;
   		border: solid 1px gray;
    	color: black;
		margin-top : 10px;
		margin-left : 5px;
		margin-right : 80px;
		display: inline-block;
		height : 30px;
		float : right;
		cursor: pointer;
		border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
		}

	#addr-btn-wrap{
	float : right;
	margin-right : 30px;
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

	#regiter-btn-wrap{
    height: 30px;
    width: 250px;
    margin-top: 10px;
   	margin-left : 170px;
    margin-right: 5px;
    margin-botton:100px;
    border: solid 1px rgba(0,0,0,.1);
    background-color: #c8c8c8;
    color: white;
    text-align : center;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    float: left; 
} 

		#regiter-btn{
		width:100px;
		display: inline-block;
	    background-color: #c8c8c8;
	    border: 1px;
	    color: white;
	    font-size: 15px;
	    outline:none;
	    margin:auto;
	    cursor: pointer;
		
		}
	

	#register-page-title{
	margin-top : 20px;
	margin-left : 250px;
	
	}



	#span-wrap{
	margin-right : 10px;
	height : 10px;
	text-align : center;
	}
	
	span.guide {
		display : none;
		font-size : 16px;
		top : 12px;
		right : 10px;
	}
	span.ok { color : green }
	span.error { color : red }
</style>
</head>
<body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
                <a class="navbar-brand" href="#page-top" id="title" >Mayfly</a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="./login.html">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">로그인</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">마이페이지</a></li>
                    </ul>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-primary bg-gradient text-white">
                <h1 class="fw-bolder" id="title2"><img src = "./img/pngwing.jpg" id="logo"></h1>
                <a class="btn btn-lg btn-light" href="#about" width="10px" height="10px" id="nav1">사이트 이용방법</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#culture" id="nav2">문화활동</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" id="nav3">자기계발</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" id="nav4">여행</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" width="10px" height="10px" id="nav5">커뮤니티</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" id="nav6">마이페이지</a>&nbsp;&nbsp;&nbsp;
        </header>
	<div class="frame">
	<fieldset>
		<legend id="register-page-title">회원가입</legend>
			<form action="/member/register.mayfly" method="post">
				<div>
					<div class="text-div">아이디 </div>
						<div class="form-wrap-ex">
							<input type="text" class="input-form" name="userId" id="userId" required>
						</div>
						<div id="id-btn-wrap">	
							<button type="button" class="chk-btn" id="id_chk_btn">중복확인</button>
						</div>
						<div id="span-wrap">
							<span class="guide ok">이 아이디는 사용 가능합니다.</span>
							<span class="guide error">이 아이디는 사용할 수 없습니다.</span>
						</div>
				</div>
				<div>
					<div class="text-div">비밀번호 </div>
					<div class="input-form-wrap">
						<input type="password" class="input-form" name="userPwd" required>
					</div>
				</div>
				<div>
					<div class="text-div">이름 </div>
					<div class="input-form-wrap">
						<input type="text" class="input-form" name="userName" required>
					</div>
				</div>
				<div>
					<div class="text-div">전화번호 </div>
					<div class="input-form-wrap">
						<input type="text" class="input-form" name="userPhone" required>
					</div>
				</div>
				<div>
					<div class="text-div">이메일 </div>
					<div class="input-form-wrap">
						<input type="text" class="input-form" name="userEmail" required>
					</div>
				</div>
				<div>
					<div class="text-div">우편번호</div>
					<div class="form-wrap-ex">
						<input type="text"  name="post" class="postcodify_postcode5" size="6">
					</div>
					<div id="addr-btn-wrap">
						<button type="button" class="chk-btn" id="postcodify_search_button">검색</button>
					</div>
				</div>
				<div>
					<div class="text-div">도로명 주소</div>
					<div class="input-form-wrap">
						<input type="text" name="address1" class="postcodify_address" required>
					</div>
				</div>
				<div>
					<div class="text-div">상세 주소</div>
					<div class="input-form-wrap">
						<input type="text" name="address2" class="postcodify_exdiva_info">
					</div>
				</div>
				<div class="text-div">비밀번호 찾기 질문  </div>
				<div class="input-form-wrap">
					<select class="input-form" name="qPwd">
						<option value="place">가장 기억에 남는 장소는?</option>
						<option value="food">가장 좋아하는 음식은?</option>
						<option value="divavel">제일 처음 가봤던 해외여행지는?</option>
						<option value="singer">가장 좋아하는 가수는?</option>
						<option value="movie">처음으로 영화관에서 봤던 영화는?</option>
					</select>
				</div>
				<div>
					<div class="text-div">비밀번호 찾기 답변 </div>
					<div class="input-form-wrap">
						<input type="text" class="input-form" name="aPwd" required>
					</div>
				</div>
				<br>
				<div>
					<div id="regiter-btn-wrap">
						<input type="submit" id="regiter-btn" value="회원가입">
					</div>
				</div>
			</table>
		</form>
		</fieldset>
	</div>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script> 
	<script>$(function() { $("#postcodify_search_button").postcodifyPopUp(); }); 
	$("#id_chk_btn").on("click", function() {
		var userId = $("#userId").val();
			if(userId==""){
				alert("아이디를 입력해주세요");
			}else{
				$.ajax({
					url : "/member/checkDupId.mayfly",
					type : "get",
					data : { "userId" : userId },
					success : function(data) {
						console.log(data);
						 if(data != 0) {
							$(".guide.ok").hide();
							$(".guide.error").show();
						}else {
							$(".guide.ok").show();
							$(".guide.error").hide();
						}
					},
					error : function() {
						alert("오류 발생");
					}
				});
			}
		});
	
	
	
	
	</script>
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