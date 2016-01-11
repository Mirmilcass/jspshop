<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table#nav {
	display: table-cell;
	background-color: #ffb6c1;
	padding: 0px;
	position: fixed;
	top: 0px;
	left: 0px;
	width: 142px;
	height: 100%;
	color: white;
	width: 142px;
}
</style>
</head>
<body>
	<table id="nav">
		<tr>
			<td>
				<img alt="로고" src="" height="70">
			</td>
		</tr>

		<c:forTokens var="token" items="OUTER,TOP,BOTTOM,DRESS,SHOES,BAG,ACC"
			delims=",">
			<tr>

				<td>
					<img src="/../img/폴더 /${token}.bif">
				</td>

			</tr>
		</c:forTokens>
	</table>
</body>
</html>