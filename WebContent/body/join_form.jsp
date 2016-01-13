<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section id="join_form">
	<h1>회원가입</h1>
	<hr>
	<p />
	<form id="join" action="#" method="post">
		<table>
			<tr>
				<td>ID :</td>
				<td>
					<input type="text" name="id">
				</td>
			</tr>
			<tr>
				<td>PASSWORD :</td>
				<td>
					<!-- 		<input type="password" name="pw"> 테스트 후 사용-->
					<input type="text" name="pw">
				</td>
			</tr>
			<tr>
				<td>PASSWORD Cheak :</td>
				<td>
					<!-- 		<input type="password" name="pwCheak"> 테스트 후 사용-->
					<input type="text" name="pwCheck">
				</td>
			</tr>
			<tr>
				<td>NAME :</td>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>MAIL :</td>
				<td>
					<!-- 		<input type="email" name="mail"> 테스트 후 사용 -->
					<input type="text" name="mail">
				</td>
			</tr>
			<tr>
				<td>ADDRESS :</td>
				<td>
					<input type="search" name="addr">
				</td>
			</tr>
			<tr>
				<td>MOBILE :</td>
				<td>
					<input type="tel" name="tel">
				</td>
			</tr>
			<tr>
				<td>BIRTHDAY :</td>
				<td>
					<input type="date" name="birth">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="회원가입">
				</td>
			</tr>
		</table>
	</form>
</section>