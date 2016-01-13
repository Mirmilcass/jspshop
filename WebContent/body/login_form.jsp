<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LOGIN PAGE</title>
<style type="text/css">
</style>
</head>
<body>
	<section id="login_form">
	<form id="login" action="#" method="post">
		<h1>LOGIN</h1>
		<hr style="border: red 2px dashed;">
		<table>
			<tr>
				<td>id :&nbsp</td>
				<td><input type="text" name="id"></td>
				<td rowspan="2"><input type="image" name="login" src="./img/login.gif" ></td>
			</tr>
			<tr>
				<td>pass :&nbsp</td>
				<td><input type="password" name="pass"></td>
				<td></td>
			</tr>
		</table>
		<hr style="border: grey 1px dashed;">
		<a href="http://naver.com" style="font-size: 10px">회원가입</a>&nbsp<a
			href="http://daum.net" style="font-size: 10px">아이디,비밀번호 찾기</a>

	</form>
	</section>
</body>
</html>