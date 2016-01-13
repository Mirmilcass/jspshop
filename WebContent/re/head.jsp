<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/mainCSS.css">
</head>

<body>
	<header>
		<table id="head">
			<tr>
				<c:forTokens var="token" items="JOIN,LOGIN,MYPAGE,CART,QnA"
					delims=",">
					<td>${token}</td>
				</c:forTokens>
			</tr>

		</table>
	</header>