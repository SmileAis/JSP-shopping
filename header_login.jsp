<%@ page contentType="text/html; charset=utf-8"%> 
<html>
<head>
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link href="./resources/css/headerStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<nav class="navbar navbar-default navbar-fixed-top">
		  <div class="container">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="./mainPage.jsp">WS Mall#</a>
		    </div>
		    <ul class="nav navbar-nav">
		      <li class="nav-item"><a class = "nav-link" href="./products.jsp">상품 목록</a></li>
		      <li class="nav-item"><a class = "nav-link" href="./addProduct.jsp">상품 등록</a></li>
		      <li class="nav-item"><a class = "nav-link" href="./editProduct.jsp?edit=update">상품 수정</a></li>
		      <li class="nav-item"><a class = "nav-link" href="./editProduct.jsp?edit=delete">상품 삭제</a></li>
		    </ul>
		    <ul class="nav navbar-nav navbar-right">
		      <li><a style="text-decoration:none;">Admin &nbsp;&nbsp;&nbsp;&nbsp;	|</a>
		      <li><a href="./logout.jsp">Log Out</a></li>
		    </ul>
		  </div>
		</nav>
	
		<div class = "main_header">
			<div class="brand">
				<h1 style="text-shadow: 2px 2px 5px black;">WS MALL#</h1>
			</div>
		</div>
		<hr style="border-bottom: 2px solid black; margin:0;">
		
		
		<div class="container">
			<div class="row">
				<a href="shirtPage.jsp" class="top-nav-list"><div class="col-sm-1 top-nav"><p>상의</div></a>
				<a href="capPage.jsp" class="top-nav-list"><div class="col-sm-1 top-nav"><p>모자</div></a>
				<a href="bagPage.jsp" class="top-nav-list"><div class="col-sm-1 top-nav"><p>가방</div></a>
				<a href="#" class="top-nav-list"><div class="col-sm-1 top-nav"><p>신발</div></a>
				<a href="#" class="top-nav-list"><div class="col-sm-1 top-nav"><p>하의</div></a>
				<a href="#" class="top-nav-list"><div class="col-sm-2 top-nav"><p>악세서리</div></a>
				<a href="slaePage.jsp" class="top-nav-list sale"><div class="col-sm-1 top-nav" style="float:right;"><p>할인</div></a>
			</div>
		</div>
	</header>
	<hr style="border-bottom: 2px solid black; margin:0;">
	<br>
</body>
</html>