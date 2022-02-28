<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러페이지</title>
</head>
<body>
	<script>
		var message = "${msg}";
		var returnUrl = "${url}";
		var userId = "${userId }";
		alert(message);
		location.href= returnUrl+userId;
	</script>
</body>
</html>