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
        <!-- Core theme CSS (includes Bootsdivap)-->
        <link href="../resources/css/styles.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>Find ID</title>
<style>
  #find-id{
	width : 300px;
	text-align : center;
	margin:auto;
	margin-top : 150px;
}

	.text-div{
	width : 300px;
	height : 20px;

	text-align : left;
	display: inline-block;
	}




	.input-form{
	width: 100%;
	height : 30px;
	margin-top: 5px;
	border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    border-color : #c8c8c8;
    
    
}


	.btn-wrap{
    height: 30px;
    width: 300px;
    margin-top: 20px;
    margin-right: 5px;
    border: solid 1px rgba(0,0,0,.1);
    background-color: #c8c8c8;
    color: white;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    float: left;
}

 
	.find-id-btn{
	 width:300px;
	 height : 30px;
    background-color: #c8c8c8;
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
	


#find-id-title{
font-weight : bolder;
font-size : 23px;
margin-top : 20px;
margin-bottom : 15px;
}


</style>
</head>
<body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
                <a class="navbar-brand" href="#page-top" id="title" >Mayfly</a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="./login.html">????????????</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">?????????</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">???????????????</a></li>
                    </ul>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-primary bg-gradient text-white">
                <h1 class="fw-bolder" id="title2"><img src = "./img/pngwing.jpg" id="logo"></h1>
                <a class="btn btn-lg btn-light" href="#about" width="10px" height="10px" id="nav1">????????? ????????????</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#culture" id="nav2">????????????</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" id="nav3">????????????</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" id="nav4">??????</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" width="10px" height="10px" id="nav5">????????????</a>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-lg btn-light" href="#about" id="nav6">???????????????</a>&nbsp;&nbsp;&nbsp;
        </header>
<div id="find-id">

<div id="find-id-title">????????? ??????</div>
	<div>
		<div class="text-div">?????? :</div>
		<div input-form-wrap>
			<input type="text" class="input-form" id="userName" name="userName">
		</div>
	</div>
		<div class="text-div">???????????? :</div>
		<div input-form-wrap>
			<input type="text" class="input-form" id="userPhone" name="userPhone">
		</div>
	<div>
		<div class="btn-wrap">	
			<button class="find-id-btn" id="findId-btn">????????? ??????</button>
		</div>
	</div>
</div>
<script>
$("#findId-btn").on("click", function() {
		var userName = $("#userName").val();
		var userPhone = $("#userPhone").val();
		if(userName==""){
			alert("????????? ??????????????????.");
		}else if(userPhone==""){
			alert("??????????????? ??????????????????.");
		}else{
			$.ajax({
					url : "/member/findMemberId.mayfly",
					type : "post",
					data : { "userName" : userName, "userPhone" : userPhone},
					success : function(result){
							alert("???????????? ???????????? "+ result +" ?????????.");
					},
					error : function(){
						alert("???????????? ?????? ??? ????????????.");
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