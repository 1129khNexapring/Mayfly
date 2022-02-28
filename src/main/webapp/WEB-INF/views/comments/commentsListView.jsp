<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<style>
	
	#a1{
		float: right;
		padding-right: 250px;
	}
</style>
</head>
<body>
	<h1 align="center">댓글 목록</h1>
	<br><br>
	<div id="a1"><a href="/comments/writeView.mayfly">댓글 작성</a></div>
	<br>
	<table align="center" border="1">
		<tr>
			<th>번호</th>
			<th width="300">댓글</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>
		<c:forEach items="${cList }" var="comments">
			<tr>
				<td>${comments.commentsNo }</td>
				<c:url var="cDetail" value="/comments/detail.mayfly">
					<c:param name="commentsNo" value="${comments.commentsNo }"></c:param>
				</c:url>
				<td><a href="${cDetail }"> ${comments.commentsContents }</a></td>
				<td>${comments.commentsWriter }</td>
				<td>${comments.commentsDate }</td>
			</tr>
		</c:forEach>
		
		<tr align="center" height="20">
			<td colspan="6">
				[<<]
				<c:forEach var="p" begin="${pi.startNavi }" end="${pi.endNavi }">
					<c:url var="pagination" value="/comments/list.mayfly">
						<c:param name="page" value="${p }"></c:param>
					</c:url>
					<a href="${pagination }">${p }</a>&nbsp;
				</c:forEach>
				[>>]
			</td>
		</tr>
	</table>
</body>
 
</html>