<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table#head {
	display: table-cell;
	position: fixed;
	top: 55px;
	left: 142px;
	right: 0px;
	margin-left: 3px;
}   
</style>
</head>
<body id="headbody">
	<table id="head">
		<tr>
			<c:forTokens var="token" items="JOIN,LOGIN,MYPAGE,CART,QnA"
				delims=",">
				<td>${token}</td>
			</c:forTokens>
		</tr>
	</table>
	<hr>
</body>
</html>