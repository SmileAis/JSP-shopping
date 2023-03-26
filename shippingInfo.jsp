<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>배송정보</title>
<style type="text/css">
	form > div.row{
		margin-bottom:15px;
		min-height:40px;
	}
	
	.ship_info{
		padding-left:20px;
	}
	
</style>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>' />
	<fmt:bundle basename = "bundle.message" >
	<jsp:include page="header.jsp" />
	<div class = "container" style="box-shadow: 5px 5px 10px 6px gray; margin-top:30px;">
		<br>
		<h1 class="display-3 text-center" style="text-shadow: 2px 2px 10px 2px black"><fmt:message key="shipTitle" /></h1>
		<br>
		<hr>
		<br>
		<form action="./processShippingInfo.jsp" class="form-horizontal ship_info" method="post">
		<div class="text-right">
			<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
		</div>
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId") %>" />
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="customer" /></label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="deliveryDate" /></label>
				<div class="col-sm-3">
					<input name="shippingDate" type="text" class="form-control" />(yyyy/mm/dd)
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="country" /></label>
				<div class="col-sm-3">
					<input name="country" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="zipCode" /></label>
				<div class="col-sm-3">
					<input name="zipCode" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="address" /></label>
				<div class="col-sm-5">
					<input name="addressName" type="text" class="form-control" />
				</div>
			</div>
			<hr>
			<div class="form-group row">
				<div class = "text-center">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId") %>" class="btn btn-success" role="button"> <fmt:message key="previous" /></a> &nbsp;
					<input type="submit" class="btn btn-primary" value="<fmt:message key="enrollment" />" />&nbsp;
					<a href="./checkOutCancelled.jsp" class="btn btn-danger" role="button"><fmt:message key="cancel" /></a>
				</div>
			</div>
		<br>
		</form>
		
	</div>
	</fmt:bundle>
	<br><br>
	<%@ include file="footer.jsp" %>
</body>
</html>