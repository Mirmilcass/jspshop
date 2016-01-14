<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mypage</title>
</head>
<section id="mypage_form">
	<table>
		<tr>
			<c:forTokens var="mypage_form" items="userinfore,order,cart,qna"
				delims=",">
				<td>
					<img src="./img/mypage/${mypage_form }.gif" alt="${mypage_form }"
						height="70"
						onClick="location.href='main.do?reqview=${mypage_form}'"
						style='cursor: pointer;'>
				</td>
			</c:forTokens>
		</tr>


	</table>

</section>