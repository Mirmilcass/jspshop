<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="cart_form">
	<h1>장바구니</h1>
	<hr style="border: red 2px dashed;">
	<p />
	<table>

		<tr>
			<c:forTokens var="cart_form" items="   ,사진,제품명,수량,가격,배송비,삭제"
				delims=",">
				<td class="dote">${cart_form}</td>
			</c:forTokens>
		</tr>
		<tr>
			<td><input type="checkbox">
			<td class="info">상품 정보</td>
		</tr>

		<tr align="right">
			<td colspan="7" class="dote">총 구매금액 : 85000 + 2,500 (배송비) =
				87,500</td>
		</tr>

	</table>

	<p>
	<hr style="border: red 2px dashed;">
	<input type="submit" value="지금 구매"> <input type="button"
		value="장바구니 모두삭제">



</section>