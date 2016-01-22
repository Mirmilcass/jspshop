<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="qna_form">
	<h1>QnA페이지</h1>
	<p />
	<hr>
	<p />
	<table>
		<tr>
			<c:forTokens var="tableHeader" items="번호,제목,ID,등록일" delims=",">
				<th>${tableHeader }</th>
			</c:forTokens>
		</tr>
		<tr>
		<tr>
			<c:forEach var="qna" items="${qna }">
				<tr>
					<td>${qna.num }</td>
					<td>${qna.title }</td>
					<td>${qna.id }</td>
					<td>${qna.date }</td>
				</tr>
			</c:forEach>
		</tr>
		<tr>
			<td colspan="3">번호들 올자리</td>
			<td align="right">
				<input type="button" value="글쓰기">
			</td>
		</tr>
	</table>
</section>