<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	
	<table align="center" width="500" border="1">
	
		<tr>
			<td>${comments.commentsNo }</td>
			<td></td>
		</tr>
		
		<tr>
			<td>ID </td>
			<td>${comments.commentsWriter}</td>
		</tr>
		<tr height="300">
			<td>내용</td>
			<td>${comments.commentsContents }</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<a href="/comments/updateView.mayfly?commentsNo=${comments.commentsNo }">수정하기</a>
				<a href="/comments/remove.mayfly?commentsNo=${comments.commentsNo }">삭제하기</a>
			</td>
		</tr>
	</table>
</body>
 
</html>