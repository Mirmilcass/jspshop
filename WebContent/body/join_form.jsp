<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section id="join_form">
	<h1>회원가입</h1>
	<hr style="border: red 2px dashed;">
	<p />
	<form name="join" action="/main.do" method="post">
		<input type="hidden" name="reqview" value="join">
		<table>
			<tr>
				<td>아이디 :</td>
				<td>
					<input type="text" name="id">
				</td>
				<td>
					<input type="button" value="중복검사"
						onclick="join_ID_Cheak(this.form); return false; ">
				</td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td>
					<!-- 		<input type="password" name="pw"> 테스트 후 사용-->
					<input type="password" name="pw">
				</td>
			</tr>
			<tr>
				<td>재입력 :</td>
				<td>
					<!-- 		<input type="password" name="pw"> 테스트 후 사용-->
					<input type="password" name="pw2">
				</td>
			</tr>
			<tr>
				<td>이름 :</td>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>이메일 :</td>
				<td>
					<!-- 		<input type="email" name="mail"> 테스트 후 사용 -->
					<input type="email" name="mail">
				</td>
			</tr>
			<tr>
				<td>주소 :</td>
				<td>
					<input type="search" name="addr"
						placeholder="주소를 입력해주세요 예 )  서울특별시 강남구 삼성동 16-1 세부주소">
				</td>
			</tr>
			<tr>
				<td>전화번호 :</td>
				<td>
					<input type="tel" name="tel">
				</td>
			</tr>
			<tr>
				<td>생일 :</td>
				<td>
					<input type="date" name="birth">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="회원가입">
				</td>
			</tr>
		</table>
	</form>
</section>
