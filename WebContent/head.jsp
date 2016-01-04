<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
	<c:forTokens var="token" items="JOIN,LOGIN,MYPAGE,CART" delims=",">
	<tr>
	${token}
	</tr>
	</c:forTokens>
			</table>

</body>
</html>