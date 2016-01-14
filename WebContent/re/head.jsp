<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PINKQK</title>
<link rel="stylesheet" type="text/css" href="./css/mainCSS.css">
</head>

<body>
	<header>
		<table id="head">
			<tr>
				<c:forTokens var="token" items="JOIN,LOGIN,MYPAGE,CART,QnA"
					delims=",">
					<td>
						<a href="main.do?reqview=main&bodyview=${token	}" class="menulist">${token}</a>
						<c:if var="admin" test="${admin }">
							<!--  어드민 값이 있을때 표현.. 아마 -->
							<a href="main.do?bodyview=admin" class="menulist">admin</a>
						</c:if>
					</td>
				</c:forTokens>
			</tr>

		</table>
	</header>