<%@ page contentType="text/html; charset=utf-8"%> 
<html>
<head>
<title>상품아이디 오류</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
	<style type="text/css">
		div.jumbotron{
			margin-top : 30px;
		}
	</style>
<body>
	<jsp:include page="header.jsp" />
	<div class = "jumbotron">
		<div class = "container">
			<h2 class = "alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
	</div>
	<div class = "container">
		<p><%=request.getRequestURL() %></p>
		<p> <a href="products.jsp" class = "btn btn-primary"> 상품목록 &raquo;</a>
	</div>
</body>
</html>