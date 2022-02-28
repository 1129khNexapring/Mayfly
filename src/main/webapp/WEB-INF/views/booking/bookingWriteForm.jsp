<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
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
    </head>
    <style type="text/css">
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
	
    a { 
        color:#000000;text-decoration:none; 
    }
    .scriptCalendar { text-align:center; }
    .scriptCalendar > thead > tr > td { 
        width:80px;height:80px;
     }

    .scriptCalendar > thead > tr:first-child > td { 
        font-weight:bold;
     }

    .scriptCalendar > tbody > tr > td {
         width:80px;height:80px; 
  	 }
  	 #cal {
  	  margin-right: 100px;
  	  
  	 }
  	 .scriptCalendar {
  	 	border-style: solid;
	    border-width: 2.5px;
	    border-color: maroon;
	    border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
	    padding: 5px 5px 5px 5px;
	    margin-top: 30px;
	    width: 498px;
	    position: absolute;
	    margin-left: 308px;
  	 }
         
    #choice-date {
         width: 450px;
	    height: 600px;
	    position: relative;
	    background-color: #fcfcfc;
	    margin-top: 30px;
	    border-style: solid;
	    border-width: 2.5px;
	    border-color: maroon;
	    border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
	    padding: 5px 5px 5px 5px;
	    margin-left: 739px;
    }
    #span1 {
        font-size: 25px;
        font-weight: bolder;
        margin-left: 20px;
    }     
    .spanOption {
        font-size: 25px;
        font-weight: bolder;
        margin-left: 20px;
        margin-top: 20px;
        display: none;
   }
   #option1 {
   		cursor: pointer;
   		height: 50px;
   }
   #option2 {
   		cursor: pointer;
   		height: 50px;
   }
   #choice-option {
        width: 50%;
        height: 500px;
        border: 1px solid black;
        float: right;
        position: relative;
    }
    .peopleCount {
    	border: 1px solid gray;
    	float: right;
    	padding: 8px;
    	display: none;
    }
    #totalCount {
    	border: solid 2px gold;
    	display: none;
    	padding-top: 10px;
    	font-size: 35px;
    	margin-top:80px;
    	padding: 0;
    	 border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
    }
    #bSubmit {
    	border: solid 2px gold;
		background: #00bfcd;
	    color : white;
	    border-top-left-radius: 10px;
	    border-top-right-radius: 10px;
	    border-bottom-left-radius: 10px;
	    border-bottom-right-radius: 10px;
	    padding: 8px;
	    text-align: center;
    	display: none;
    	font-size: 24px;
    	margin-top: 10px;
    	position: relative;
    	width: 100%;
    	height: 60px;
    }
    .hrHide{
   		display: none;
   		
    }
    #bookingWriteDiv {
    	display: flex;
		justify-content: center;
		margin-right: 300px;
    }
</style>
<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        buildCalendar();
    });

    var today = new Date(); // @param 전역 변수, 오늘 날짜 / 내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
    var date = new Date();  // @param 전역 변수, today의 Date를 세어주는 역할

    /**
     * @brief   이전달 버튼 클릭
     */
    function prevCalendar() {
        this.today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
        buildCalendar();    // @param 전월 캘린더 출력 요청
    }

    /**
     * @brief   다음달 버튼 클릭
     */
    function nextCalendar() {
        this.today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
        buildCalendar();    // @param 명월 캘린더 출력 요청
    }

    /**
     * @brief   캘린더 오픈
     * @details 날짜 값을 받아 캘린더 폼을 생성하고, 날짜값을 채워넣는다.
     */
    function buildCalendar() {

        let doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
        let lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);

        let tbCalendar = document.querySelector(".scriptCalendar > tbody");


 

        document.getElementById("calYear").innerText = today.getFullYear();                       // @param YYYY월
        document.getElementById("calMonth").innerText = autoLeftPad((today.getMonth() + 1), 2);   // @param MM월


        // @details 이전 캘린더의 출력결과가 남아있다면, 이전 캘린더를 삭제한다.
        while(tbCalendar.rows.length > 0) {
            tbCalendar.deleteRow(tbCalendar.rows.length - 1);
        }



        // @param 첫번째 개행
        let row = tbCalendar.insertRow();



        // @param 날짜가 표기될 열의 증가값
        let dom = 1;

        // @details 시작일의 요일값( doMonth.getDay() ) + 해당월의 전체일( lastDate.getDate())을  더해준 값에서
        //               7로 나눈값을 올림( Math.ceil() )하고 다시 시작일의 요일값( doMonth.getDay() )을 빼준다.
        let daysLength = (Math.ceil((doMonth.getDay() + lastDate.getDate()) / 7) * 7) - doMonth.getDay();

        // @param 달력 출력


 
        // @details 시작값은 1일을 직접 지정하고 요일값( doMonth.getDay() )를 빼서 마이너스( - )로 for문을 시작한다.
        for(let day = 1 - doMonth.getDay(); daysLength >= day; day++) {

            let column = row.insertCell();

            // @param 평일( 전월일과 익월일의 데이터 제외 )
            if(Math.sign(day) == 1 && lastDate.getDate() >= day) {



                // @param 평일 날짜 데이터 삽입

                column.innerText = autoLeftPad(day, 2);



                // @param 일요일인 경우
                if(dom % 7 == 1) {
                    column.style.color = "#FF4D4D";
                }

                // @param 토요일인 경우
                if(dom % 7 == 0) {
                    column.style.color = "#4D4DFF";
                    row = tbCalendar.insertRow();   // @param 토요일이 지나면 다시 가로 행을 한줄 추가한다.
                }

            }

            // @param 평일 전월일과 익월일의 데이터 날짜변경
            else {
                let exceptDay = new Date(doMonth.getFullYear(), doMonth.getMonth(), day);
                column.innerText = autoLeftPad(exceptDay.getDate(), 2);
                column.style.color = "#E5E5E5";
            }

            // @brief   전월, 명월 음영처리
            // @details 현재년과 선택 년도가 같은경우
            if(today.getFullYear() == date.getFullYear()) {

                // @details 현재월과 선택월이 같은경우
                if(today.getMonth() == date.getMonth()) {

                    // @details 현재일보다 이전인 경우이면서 현재월에 포함되는 일인경우
                    if(date.getDate() > day && Math.sign(day) == 1) {
                        column.style.color = "#E5E5E5";
                    }

                    // @details 현재일보다 이후이면서 현재월에 포함되는 일인경우
                    else if(date.getDate() < day && lastDate.getDate() >= day) {
                        column.style.backgroundColor = "#FFFFFF";
                        column.style.cursor = "pointer";
                        column.onclick = function(){ calendarChoiceDay(this); }
                    }

                    // @details 현재일인 경우
                    else if(date.getDate() == day) {
                        column.style.color = "#f400c1";
                        column.style.cursor = "pointer";
                        column.onclick = function(){ calendarChoiceDay(this); }
                    }

                // @details 현재월보다 이전인경우
                } else if(today.getMonth() < date.getMonth()) {
                    if(Math.sign(day) == 1 && day <= lastDate.getDate()) {
                    	column.style.color = "#E5E5E5";
                    }
                }

                // @details 현재월보다 이후인경우
                else {
                    if(Math.sign(day) == 1 && day <= lastDate.getDate()) {
                        column.style.backgroundColor = "#FFFFFF";
                        column.style.cursor = "pointer";
                        column.onclick = function(){ calendarChoiceDay(this); }
                    }
                }
            }

            // @details 선택한년도가 현재년도보다 작은경우
            else if(today.getFullYear() < date.getFullYear()) {
                if(Math.sign(day) == 1 && day <= lastDate.getDate()) {
                	column.style.color = "#E5E5E5";
                }
            }

            // @details 선택한년도가 현재년도보다 큰경우
            else {
                if(Math.sign(day) == 1 && day <= lastDate.getDate()) {
                    column.style.backgroundColor = "#FFFFFF";
                    column.style.cursor = "pointer";
                    column.onclick = function(){ calendarChoiceDay(this); }
                }
            }



            dom++;

        }
    }

    /**
     * @brief   날짜 선택
     * @details 사용자가 선택한 날짜에 체크표시를 남긴다.
     */
    
    
    
    function calendarChoiceDay(column) {
    	var option1 = document.getElementById("option1");
    	var option2 = document.getElementById("option2");
    	var spanResult = document.getElementById("spanResult");
        var colorDay = document.getElementsByClassName("choiceDay");
        // @param 기존 선택일이 존재하는 경우 기존 선택일의 표시형식을 초기화 한다.
        if(colorDay[0]) {
            colorDay[0].style.backgroundColor = "#FFFFFF";
            colorDay[0].classList.remove("choiceDay");
        }

        // @param 선택일 체크 표시
        column.style.backgroundColor = "pink";
        column.style.borderRadius = "50%";
       
        number = 0;
       	document.getElementById("result").innerText = 0;
       	document.getElementById("option1").style.backgroundColor = "#fcfcfc";
       	document.getElementById("option2").style.backgroundColor = "#fcfcfc";
		spanResult.innerText = '0';


        // @param 선택일 클래스명 변경

        column.classList.add("choiceDay");

        
        if(colorDay[0].style.backgroundColor == "pink") {
            // document.getElementById("rightData").style.visibility="visible";
            $("#span1").hide();
            $(".spanOption").show();
            $(".peopleCount").show();
            $("#totalCount").show();
            $("#bSubmit").show();
            $(".hrHide").show();
        	
        }
        document.querySelector("#bookingDate").value = $(column).text();
        
       
        
        
        /* $("#countM").on("click", function() { // 인원수 마이너스
        	var count = document.getElementById("count").innerText();
        	if(count > 0) {
	        	parseInt(count)-=1;
        	}
        }); */
        


    }

    
    function choiceOption1(click) { //  옵션을 누르면 컬러가 입혀지는 메소드
    	var option1 = document.getElementById("option1");
    	var option2 = document.getElementById("option2");
    	var spanResult = document.getElementById("spanResult");
    	var totalCount = document.getElementById("totalCount");
    	var result = document.getElementById("result");
    	if(spanResult.innerText == '0') { // 처음 옵션을 누르는 경우
    		spanResult.innerText = '24000';
    		option1.style.backgroundColor = "#f2f2f2";
    	}
    	if(result.innerText == '0') {
    		result.innerText = '1';
    	}
    	if(parseInt(spanResult.innerText) % 34000 == 0) { // 다른 옵션이 선택되어져 있을때 누르는 경우
    		option2.style.backgroundColor = "#fcfcfc";
    		option1.style.backgroundColor = "#f2f2f2";
    		spanResult.innerText = '24000';
    		result.innerText = '1';
    	}
    	document.querySelector("#optionName").value = '3hours';
    }
    
    function choiceOption2(click) { //  옵션을 누르면 컬러가 입혀지는 메소드
    	var option1 = document.getElementById("option1");
    	var option2 = document.getElementById("option2");
    	var spanResult = document.getElementById("spanResult");
    	var totalCount = document.getElementById("totalCount");
    	var result = document.getElementById("result");
    	if(spanResult.innerText == '0') { // 처음 옵션을 누르는 경우
    		spanResult.innerText = '34000';
    		option2.style.backgroundColor = "#f2f2f2";
    	}
    	if(result.innerText == '0') {
        	result.innerText = '1';
        }
    	if(parseInt(spanResult.innerText) % 24000 == 0) { // 다른 옵션이 선택되어져 있을때 누르는 경우
    		option1.style.backgroundColor = "#fcfcfc";
    		option2.style.backgroundColor = "#f2f2f2";
    		spanResult.innerText = '34000';
    		result.innerText = '1';
    	}
    	document.querySelector("#optionName").value = '5hours';
    }
    
    function counting(type) {
       var number = document.getElementById("result").innerText;
 	   var totalCount = document.getElementById("totalCount");
 	   var spanResult = document.getElementById("spanResult").innerText;
 	   var option1 = 24000;
 	   var option2 = 34000;
 	   // 현재 값
 	    if(spanResult == '0') {
 			   alert("옵션을 먼저 선택하세요.");
 		}else {
 			  if(type == '+') {
 	 		   	   number = parseInt(number) + 1;
	 	 		  if(spanResult % 24000 == 0) {
	 	 	 		   spanResult = parseInt(spanResult) + option1;
	 	 	 	  }
	 	 		  if(spanResult != 0 && spanResult % 34000 == 0) {
	 	 			   spanResult = parseInt(spanResult) + option2;
	 	 		  }
	 	 		  
 	 		   
 	 	   	  }
 	 	    	   		   
 		   	   if(type == '-' && parseInt(number) > 1) {
 		   			number = parseInt(number) - 1;
	 		   	   if(spanResult % 24000 == 0) {
	 		 		   spanResult = parseInt(spanResult) - option1;
	 		 	   }
	 			   if(spanResult != 0 && spanResult % 34000 == 0) {
	 				   spanResult = parseInt(spanResult) - option2;
	 			   }
 		   	  }
 		  
	 		    document.querySelector("#spanResult").innerHTML = spanResult;
	 	 	    document.querySelector("#result").innerText = number;
	 	 	 	
	 	 	 	document.querySelector("#bookingPeople").value = number;
	 	 	 	document.querySelector("#bookingPrice").value = spanResult;
	 	 	 	
	 	 	   
 		}
 	   
 	   
    }
    
    function checkReservation() {
    	var spanResult = document.getElementById("spanResult");
    	if(spanResult.innerText == '0') {
    		alert("옵션과 선택과 인원수를 설정해주세요.");
    		return false;
    	}else {
    		alert("해당 내용으로 예약하시겠습니까?");
    		return true;
    	}
    }
    
    

    

    
    /**
     * @brief   숫자 두자릿수( 00 ) 변경
     * @details 자릿수가 한지라인 ( 1, 2, 3등 )의 값을 10, 11, 12등과 같은 두자리수 형식으로 맞추기위해 0을 붙인다.
     * @param   num     앞에 0을 붙일 숫자 값
     * @param   digit   글자의 자릿수를 지정 ( 2자릿수인 경우 00, 3자릿수인 경우 000 … )
     */
    function autoLeftPad(num, digit) {
        if(String(num).length < digit) {
            num = new Array(digit - String(num).length + 1).join("0") + num;
        }
        return num;

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
        <!-- 왼쪽 사이드 영역-->
	    <div id="mypage-left-side">
		     <div id="mypage-left-info">
			     <div id="mypage-left-photo">
			      	<img src="../resources/img/default_profile.png" alt="기본 프로필 사진" width="130px" height="130px">
			     </div>
			     <div id="mypage-left-id">
			     	<p id="mapage-left-id-msg">${userName }님</p>
			     </div>
			     <div id="mypage-left-button">
			     	<button onclick="location.href='/member/myInfo.mayfly?userId=${userId }'">나의 정보 확인</button>
			     	<button onclick="location.href='/member/logout.mayfly'">로그아웃</button>
			     </div>
		     </div>
		     <div id ="mypage-left-bottom">
		     	<button onclick="location.href'/member/myInfo.mayfly'">MY PAGE</button><br>
		     	<button onclick="location.href'/interest/List.mayfly'">WISH LIST</button><br>
		     	<button onclick="location.href'/booking/List.mayfly'">예약 목록</button>
		     </div>
	    </div>
	    <div id="bookingWriteDiv">
		    		<div id="cal">		            
				        <table class="scriptCalendar">
				             <thead>
				                 <tr>
				                     <td onClick="prevCalendar();" style="cursor:pointer;">&#60;&#60;</td>
				                     <td colspan="5">
				                         <span id="calYear">YYYY</span>년
				                         <span id="calMonth">MM</span>월
				                     </td>
				                     <td onClick="nextCalendar();" style="cursor:pointer;">&#62;&#62;</td>
				                 </tr>
				                 <tr>
				                     <td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td>
				                 </tr>
				             </thead>
				          <tbody id="tbody"></tbody>
			          </table>
					</div>
		        <form action="/booking/register.mayfly" method="get" onsubmit="return checkReservation();">
		        	<!-- 예약 화면에서 디비에 저장할 값 -->
		        	<input type="hidden" id="bookingDate" name="choiceDate" value="">
		        	<input type="hidden" id="bookingPeople" name="bookingPeo" value="">
		        	<input type="hidden" id="categoryName" name="categoryName" value="${contentsType }">
		        	<input type="hidden" id="contentName" name="contentName" value="${contentsTitle }">
		        	<input type="hidden" id="optionName" name="optionName" value="">
		        	<input type="hidden" id="bookingPrice" name="bookingPrice" value="">
		        	
			        <div id="choice-date">
			            <span id="span1">날짜를 선택해주세요</span>
			            <span class="spanOption">옵션을 선택해주세요</span>
			            <hr width="100%" color="black" align="right">
			            <p onClick="choiceOption1(this);" id="option1" class="spanOption">3시간권 (유효기간 : 결제일로부터 30일) <br> ₩ 24,000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></p>
			            <br><br>
			            <hr class="hrHide" width="100%" color="black" align="right">
			            <p onClick="choiceOption2(this);" id="option2" class="spanOption">5시간권 (유효기간 : 결제일로부터 30일) <br> ₩ 34,000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></p>
			            <br><br>
			            <hr class="hrHide" width="100%" color="black" align="right">
			           	<input type="button" onclick="counting(this.value);" class="peopleCount" value="-">
			           	<div class="peopleCount" id="result">0</div>
			           	<input type="button" onclick="counting(this.value);" class="peopleCount" value="+">
			           	<div id="totalCount" align="center">Total(KRW) <span id="spanResult">0</span></div>
			           	<input type="submit" id="bSubmit" align="center" href="/booking/bookingInfo.mayfly" value="바로 예약하기">
			        </div>
			        
				</form>
		    </div>
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