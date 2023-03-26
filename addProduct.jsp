<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="./resources/js/validation.js"></script>
<style type="text/css">
	form > div.row{
		margin-bottom:15px;
		min-height:40px;
	}
	
	form > div.row > label{
		padding-top:5px;
	}
	
	.add_p{
		padding-left : 20px;
	}
	
</style>
<title>상품 등록</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>' />
	<fmt:bundle basename = "bundle.message" >
	<jsp:include page="header_login.jsp" />
	
	<div class="container" style="box-shadow: 5px 5px 10px 6px gray; margin-top:30px;">
		<br>
		<h1 style="text-align:center; text-shadow: 2px 2px 10px 2px black;"><fmt:message key="title" /></h1>
		<br>
		<hr>
		<br>
		<div class="text-right">
			<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
		</div>
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal add_p" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="productId" /></label>
				<div class="col-sm-3">
					<input type="text" id="productId" name="productId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="name" /></label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitPrice" /></label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="saleUnitPrice" /></label>
				<div class="col-sm-3">
					<input type="text" id="saleUnitPrice" name="saleUnitPrice" class="form-control" placeholder="<fmt:message key="salePricePlaceHolder" />">
				</div>
			</div>
			<div class="form-group row" style="min-height:50px;">
				<label class="col-sm-2"><fmt:message key="description" /></label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control" style="resize:none;"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="manufacturer" /></label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="category" /></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="productImage" /></label>	
				<div class="col-sm-5">
					<input type="file" name = "productImage" value="선택" class="form-control">
				</div>
			</div>
			<hr>
			<div class="form-group row" style="margin-top : 20px;">
				<div class="text-center ">
					<input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddProduct()">
				</div>
			</div>
		</div>
	</form>
	</fmt:bundle>
	<br><br><br>
</body>
</html>