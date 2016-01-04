<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 페이지</title>
</head>
<body>
	<article>
		<header>
			<jsp:include page="head.jsp" />
		</header>

		<nav>
			<jsp:include page="nav.jsp" />
		</nav>

		<jsp:include page="mainbody.jsp" />

		<footer>
			<jsp:include page="foot.jsp" />
		</footer>
	</article>

</body>
</html>