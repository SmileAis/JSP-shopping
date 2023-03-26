<%@ page contentType="text/html; charset=utf-8"%> 
<html>
<head>
<title>WS Mall</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="./resources/css/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<!-- 헤더 네비게이션 -->
	<%@ include file="header_login.jsp" %>
	
	<!-- 헤더 점보트론 -->
	<%@ include file="mainImg.jsp" %>
	
	<!-- 상품 표시 -->
	<%@ include file="products_main.jsp" %>
	
	<!-- 하단 정보 -->
	<%@ include file="footer.jsp" %>
	
	<%-- --%>
	<%
		response.setIntHeader("Refresh", 10);
	%>
	 
</body>
</html>