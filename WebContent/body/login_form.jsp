<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section id="login_form">
	<form name="login" action="./body/list.jsp" method="post">
		<h1>LOGIN</h1>
		<hr>
		<table>
			<tr>
				<td>id :</td>
				<td>
					<input type="text" name="id">
				</td>
				<td rowspan="2">
					<input type="image" alt="loginlogo" src="./img/login.gif"
						onclick="logincheak(this.form); return false;">
				</td>
			</tr>
			<tr>
				<td>pass :</td>
				<td>
					<input type="password" name="pass">
				</td>
			</tr>
		</table>
		<hr id="under">
		<a href="main.do?reqview=main&bodyview=join">회원가입</a>
		&nbsp;&nbsp;
		<a href="http://daum.net">아이디,비밀번호 찾기</a>

	</form>
</section>
