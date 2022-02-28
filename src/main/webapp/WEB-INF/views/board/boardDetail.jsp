<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
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
    
<meta charset="utf-8">
<title>게시글 상세</title>
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
					border: solid 2px gold;
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
	
	
	#frame{
	width : 600px;
	margin-left : 180px;
	float: left;
	}
	
	#cSubmit {
		border: solid 1.5px gold;
			background: #00bfcd;
		    color : white;
		    border-top-left-radius: 10px;
		    border-top-right-radius: 10px;
		    border-bottom-left-radius: 10px;
		    border-bottom-right-radius: 10px;
		    width : 90px;
		    height: 40px;
		    margin-left: 300px;
        
	}
	#cSubmitDiv {
		 display: flex;
		justify-content: center;    
	}
	#cCount-box{
		margin: 0 auto;
		margin-right: 900px;;
		display: flex;
	 	 justify-content: center;
	}
	#btn1 {
		text-decoration: none;
	}
	
	#boardDetail td:nth-child(odd) {
		background : #fff5ee;
	}
	
	a{
		margin-left:3px;
		text-decoration: none;
	}
	#ctb tr:nth-child(odd) {
		background-color : white;
	}
	
	#fileBox {
		width:600px;
		border-style: solid;
		border-width: 1.5px;
		margin: 0 auto;
		color:maroon;
		border-top-left-radius: 10px;
         border-top-right-radius: 10px;
         border-bottom-left-radius: 10px;
         border-bottom-right-radius: 10px;
		padding-top: 5px;
		padding-bottom: 5px;
	}
	
	
	#ctb {
		border-style :solid;
		border-width : 0.2px;
		border-color: maroon;
		height: 5px;
		background-color: #faf6f3;
		
	}
	
	table {
		
		border-style :solid;
		border-width : 1.5px;
		border-color: maroon;
		border-top-left-radius: 10px;
         border-top-right-radius: 10px;
         border-bottom-left-radius: 10px;
         border-bottom-right-radius: 10px;
    	
    	line-height: 20px;
    	
    		
		}
	
	#boardDetailDiv {
	margin-right: 300px;
	}
	
	#boardDetail-button {
		display: flex;
		justify-content: center;
		margin-left: 600px;
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
	
	#btn2 {
		border: solid 1.5px gold;
			background: #ffa099;
		    color : white;
		    border-top-left-radius: 10px;
		    border-top-right-radius: 10px;
		    border-bottom-left-radius: 10px;
		    border-bottom-right-radius: 10px;
		   width : 90px;
		    height: 40px;
	}
	
	#btn3 {
		border: solid 1.5px gold;
			background: silver;
		    color : white;
		    border-top-left-radius: 10px;
		    border-top-right-radius: 10px;
		    border-bottom-left-radius: 10px;
		    border-bottom-right-radius: 10px;
		    width : 90px;
		    height: 40px;
	}
	#btn-c1 {
		border: solid 1.5px gold;
			background: #00bfcd;
		    color : white;
		    border-top-left-radius: 10px;
		    border-top-right-radius: 10px;
		    border-bottom-left-radius: 10px;
		    border-bottom-right-radius: 10px;
		    
        
	}
	#btn-c2 {
		border: solid 1.5px gold;
			background: #ffa099;
		    color : white;
		    border-top-left-radius: 10px;
		    border-top-right-radius: 10px;
		    border-bottom-left-radius: 10px;
		    border-bottom-right-radius: 10px;
		   width : 90px;
		    height: 40px;
	}
	#btn-c3 {
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
	textarea {
		border: solid 2px maroon;
		background: #ffffff;
		border-top-left-radius: 8px;
	    border-top-right-radius: 8px;
	    border-bottom-right-radius: 8px;
	    border-bottom-left-radius: 8px;
	    
	    
	}
	#title-boardNo {
		color: #964b00;
		margin-right: 250px;
		}
		
	#inputComments {
		display: flex;
	 	 justify-content: center;
	}
	#cContents {
		margin-right: 290px;
		border: solid 1.5px #maroon;
		background: #faf6f3;
		border-top-left-radius: 8px;
	    border-top-right-radius: 8px;
	    border-bottom-right-radius: 8px;
	    border-bottom-left-radius: 8px;
	}
	#commentsList {
		margin-right: 300px;
		display: flex;
		justify-content: center;
		
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
                <a class="navbar-brand" href="home.mayfly" id="title" >Mayfly</a>
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
	     	<button>COMMUNITY</button><br>
	     	<button>Q&A</button>
	     </div>
    </div>
        
        <div id="boardDetail-table">
	<h4 align="center" id="title-boardNo">< ${board.boardNo } ></h4>
	
	<br>
	 
	<div id="boardDetail-button">
		<a href="/board/updateView.mayfly?boardNo=${board.boardNo }"><input type="button" id="btn1" value="수정하기"></a>&nbsp;
		<a href="/board/remove.mayfly?boardNo=${board.boardNo }"><input type="button" id="btn2"  value="삭제하기"></a>&nbsp;
		<a href="/board/list.mayfly"><input type="button"  id="btn3" value="돌아가기"></a>
	</div>
	
	<br>
	
	<div id="boardDetailDiv"">
	<table align="center" width="800" border="1" id="boardDetail">
		<tr>
			<td>&nbsp;NO </td>
			<td>&nbsp;${board.boardNo }</td>
			<td width="100">&nbsp;조회수 </td>
			<td>&nbsp;${board.boardCount }</td>
		</tr>
		<tr>
			<td>&nbsp;작성자 </td>
			<td>&nbsp;${board.boardWriter }</td>
			<td>&nbsp;작성일 </td>
			<td>&nbsp;${board.bCreateDate }</td>
		</tr>
		<tr>
			<td width="70">&nbsp;제목 </td>
			<td colspan="3">&nbsp;${board.boardTitle }</td>
		</tr>
		<tr height="300">
			<td >&nbsp;내용</td>
			<td colspan="3">&nbsp;${board.boardContents }</td>
		</tr>	
	</table>
	</div>
	
	<br>
	
		<div>
			<div id="fileBox">&nbsp;&nbsp;&nbsp;첨부파일 | <a href="/resources/buploadFiles/${board.boardFileRename }" download>&nbsp;${board.boardFilename }</a></div>
		</div>
	</div>

		 <br><br>
	<!-- 댓글 등록 -->
	
		
			<div  id= "inputComments">
				<textarea rows="5" cols="100" id="cContents" ></textarea>
			</div>
		
		
		<br>
		
		<div>
			<div id="cSubmitDiv">
			
					<button id="cSubmit">댓글등록</button>
			</div>
		</div>
	
		<br><br><br>
		<div id="cCount-box">
			<b id="cCount">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		
		<br>
			<!-- 댓글 목록 -->
	<div id="commentsList">
	<table align="center" width="1000" border="0" id="ctb">
		<thead>
			<tr>
			<!-- 댓글 갯수 -->
			
			</tr>
		</thead>
		<tbody>
	
		</tbody>
	</table>
	</div>
	<br>
	<script>
	getCommentsList();
		
		$("#btn2").on("click", function(){
			alert("정말 삭제하시겠습니까?");
			
		});
	
		$("#cSubmit").on("click", function(){
			
			var boardNo = '${board.boardNo }';
			var cContents = $("#cContents").val();
			var cWriter = 'admin';
				$.ajax({
					url :"/board/commentsAdd.mayfly",
					type : "post",
					data : {"boardNo" : boardNo, "commentsContents" : cContents, "commentsWriter" : cWriter },
					success : function(data) {
						if(data == "success") {
						
							getCommentsList();
							$("#cContents").val("");

						} else {
							alert("등록을 실패하였습니다.");
						}
					},
					error : function() {
							alert("등록을 실패하였습니다.");
					}
				});
		});
	
		function getCommentsList() {
			var boardNo = "${board.boardNo }"
			$.ajax({
				url : "/board/commentsList.mayfly",
				type : "get",
				data : { "boardNo" : boardNo },
				success : function(data) {
					var $tableBody = $("#ctb tbody");
					$tableBody.html(""); 
					var $cWriter;
					var $cContents;
					var $cCommentsDate;
					var $tr;
					$("#cCount").text("댓글(" + data.length + ")");
					if(data.length > 0) {
						for(var i in data ) {
							$tr = $("<tr>");
							$cWriter = $("<td width='100'>").text(data[i].commentsWriter);
							$cContent = $("<td>").text(data[i].commentsContents);
							$cCommentsDate = $("<td width='100' height = '35' align='center'>").text(data[i].commentsDate);
							$btnArea = $("<td width='100'>")
												.append("<a href='javascript:void(0);' id='btn-c1' onclick='modifyViewComments(this,\"" + data[i].commentsContents +"\", "+data[i].commentsNo+");'>수정 </a>")
												.append("<a href='javascript:void(0);' id='btn-c2' onclick='removeComments("+data[i].commentsNo+");'>삭제</a>");
							$tr.append($cWriter);
							$tr.append($cContent);
							$tr.append($cCommentsDate);
							$tr.append($btnArea);
							$tableBody.append($tr);
						}
					}
				},
				error : function() {
					alert("ajax 통신 실패!");
				}
			})
		}
		
		function removeComments(commentsNo) {
			$.ajax({
				url : "/board/commentsDelete.mayfly",
				type : "get",
				data : {"commentsNo" : commentsNo},
				success : function(data) {
					if(data== "success") {
						getCommentsList();
					} else {
						alert(" 로그인 후 다시 이용해 주세요.")
					}
				},
				error : function() {
					alert("서비스 오류 : 관리자에게 문의해 주세요.")
				}
			});
		}
		
		function modifyViewComments(obj, commentsContents, commentsNo) {
			var $trModify =$("<tr>");
			$trModify.append("<td colspan='3'><input type='text' size='50' value='"+ commentsContents+ "' id='modifyCommentsVal'></td>");
			$trModify.append("<td><button onclick='modifyComments("+commentsNo+", \""+commentsContents+"\")' id='btn-c3'>수정완료</button></td>");
			console.log(obj);
			$(obj).parent().parent().after($trModify);
		}
		
		function modifyComments(commentsNo) {
			var commentsContents = $("#modifyCommentsVal").val();
			$.ajax({
				url : "/board/commentsModify.mayfly",
				type : "post",
				data : {"commentsNo" : commentsNo, "commentsContents" : commentsContents },
				success : function(data) {
					if(data=="success") {
						getCommentsList();
					} else {
						alert("다시 시도해 주세요");
					}
				}, 
				error : function () {
					alert("서비스 오류 : 관리자에게 문의해 주세요.");
				}
			});
		}
	</script>
	
        <footer class="py-5 bg-dark">
            <div class="container px-4"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
  <!--       Bootstrap core JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        </body>
</html>