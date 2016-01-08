<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table>
	<tr>
		<td>
			<img alt="로고" src="">
		</td>
	</tr>

	<c:forTokens var="token" items="OUTER,TOP,BOTTOM,DRESS,SHOES,BAG,ACC"
		delims=",">
		<tr>
			<td>${token}</td>
		</tr>
	</c:forTokens>
</table>
