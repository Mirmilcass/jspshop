<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error Page</title>
</head>
<body>
	<center>
		<h3>* Error Page *</h3>
	</center>
	<hr />
	<table width="100%">
		<tr>
			<td ALIGN="center">
				<h1><%=exception.getMessage()%></h1>
				문제로 에러가 발생하였습니다.
			</td>
		</tr>
	</table>
</body>
</html>