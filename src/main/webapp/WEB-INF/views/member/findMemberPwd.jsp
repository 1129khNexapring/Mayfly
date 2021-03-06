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
        <!-- Core theme CSS (includes Bootsdivap)-->
        <link href="../resources/css/styles.css" rel="stylesheet" />
        <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>Find Pwd</title>
<style>
  #find-pwd{
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
    border-color : lightgray;
    
    
}


	.btn-wrap{
    height: 30px;
    width: 300px;
    margin-top: 20px;
    margin-right: 5px;
    border: solid 1px rgba(0,0,0,.1);
    background-color: lightgray;
    color: white;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    float: left;
}

 
	
	#find-pwd-btn{
	 width:300px;
	 height : 30px;
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
	


#find-pwd-title{
font-weight : bolder;
font-size : 23px;
margin-top : 20px;
margin-bottom : 15px;
}

#pooterP{
padding-top:250px;

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
<div id="find-pwd">

<h3 id="find-pwd-title">???????????? ??????</h3>
	<div>
		<div class="text-div">????????? :</div>
		<div>
			<input type="text" class="input-form" id="userId" name="userId">
		</div>
	</div>
	<div>
		<div class="text-div">???????????? ?????? ?????? : </div>
		<div>
			<select class="input-form" id="qPwd" name="qPwd">
				<option value="place">?????? ????????? ?????? ??????????</option>
				<option value="food">?????? ???????????? ??????????</option>
				<option value="divavel">?????? ?????? ????????? ???????????????????</option>
				<option value="singer">?????? ???????????? ??????????</option>
				<option value="movie">???????????? ??????????????? ?????? ??????????</option>
			</select>
		</div>
	<div>
	<div>
		<div class="text-div">???????????? ?????? ?????? :</div>
		<div>
			<input type="text" class="input-form" id="aPwd" name="aPwd">
		</div>
	</div>
	<div>
		<div class="btn-wrap">	
			<button id="find-pwd-btn">???????????? ??????</button>
		</div>
	</div>
</form>
</div>

<script>
$("#find-pwd-btn").on("click", function() {
		var userId = $("#userId").val();
		var qPwd = $("#qPwd").val();
		var aPwd = $("#aPwd").val();
		if(userId==""){
			alert("???????????? ??????????????????.");
		}else if(aPwd==""){
			alert("???????????? ?????? ????????? ??????????????????.")
		}else{
			$.ajax({
					url : "/member/findMemberPwd.mayfly",
					type : "post",
					data : { "userId" : userId, "qPwd" : qPwd, "aPwd" : aPwd},
					success : function(result){
							alert("???????????? ??????????????? "+ result +" ?????????.");
					},
					error : function(){
						alert("??????????????? ?????? ??? ????????????.");
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
 <footer class="py-5 bg-dark">
            <div class="container px-4"><p class="m-0 text-center text-white" id="pooterP">Copyright &copy; Your Website 2022</p></div>
        </footer>
       <!--  Bootstrap core JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</html>