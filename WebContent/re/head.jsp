<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table#head {
	display: table-cell;
	background-color: #ffb6c1;
	width: 100%;
	height: 70px;
	position: fixed;
	top: 0px;
	left: 142px;
}
</style>
</head>
<body>
	<table id="head">
		<tr>
			<c:forTokens var="token" items="JOIN,LOGIN,MYPAGE,CART,Q&A"
				delims=",">
				<td>
					<img src="/../img/폴더 /${token}.bif">
				</td>
			</c:forTokens>
		</tr>
	</table>
	<!-- 	<hr> -->
</body>
</html>