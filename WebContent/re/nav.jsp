<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav>
	<table>
		<tr>
			<td>
				<img src="./img/logo.gif" alt="로고" height="70"
					onClick="location.href='main.do?reqview=main&bodyview=main'"
					style='cursor: pointer;'>
			</td>
		</tr>
		<c:forTokens var="token" items="OUTER,TOP,BOTTOM,DRESS,SHOES,BAG,ACC"
			delims=",">
			<tr>
				<td>
					<a href="main.do?reqview=category&bodyview=${token}"
						id="categorylist">${token}</a>
				</td>
			</tr>
		</c:forTokens>
	</table>
</nav>
