<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	#button{
		float: right;
		padding-right: 10px;
		
	}
	
	

	
</style>
</head>
<body>
	<h1 align="center">댓글 수정 페이지</h1>
	<br><br>
	
	<form action="/comments/modify.mayfly" method="post">
	<input type="hidden" name="commentsNo" value="${comments.commentsNo }">
		<table id="commentsTB" align="center" border="1">
			<tr>
				<td>번호</td>
				<td>${comments.commentsNo }</td>
			</tr>
			<tr>
				<td>날짜</td>
				<td>${comments.commentsDate }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="5" cols="100" name="commentsContents">${comments.commentsContents }</textarea></td>
			</tr>
			<tr>
				<td align="center">ID</td>
				<td>${comments.commentsWriter }</td>
			</tr>
			<tr>
				<td colspan="2" >
					<div id="button">
						<input type="submit" value="등록">
						<input type="reset" value="취소">
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
 
</html>