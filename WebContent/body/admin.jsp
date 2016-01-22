<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="admin">
	<h1>관리자 페이지</h1>
	<p />
	<hr>
	<p />
	<table>
		<tr>
			<c:forTokens var="adminth" items="상품 관리,고객 관리,관리자 목록,주문 관리,결  산"
				delims=",">
				<td width="120" align="center">${adminth }</td>
			</c:forTokens>
		</tr>
	</table>


</section>
