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
		<tr>
			<td>
				<img alt="로고" src="">
			</td>
		</tr>

		<c:forTokens var="token" items="Outer,Top,Bottom,Dress,Shoes,Bag,All"
			delims=",">
			<tr>
				<td>${token}</td>
			</tr>
		</c:forTokens>
	</table>

</body>
</html>