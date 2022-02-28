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
	<h1 align="center">댓글 등록 페이지</h1>
	<br><br>
	<form action="/comments/register.mayfly" method="post">
		<table id="boardTB" align="center" border="1">
			<tr>
				<td>내용</td>
				<td><textarea rows="5" cols="100" name="commentsContents"></textarea></td>
			</tr>
			<tr>
				<td align="center">ID</td>
				<td><input type="text" size="60" name="commentsWriter"></td>
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