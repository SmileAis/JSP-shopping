<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>장바구니</title>
<%
	String cartId = session.getId();
%>
</head>
<body>
	<jsp:include page="header.jsp" />
			
	<div class = "container"  style="box-shadow: 5px 5px 10px 6px gray; margin-top:30px;">
		<div class="row">
			<table width="100%">
			<br>
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger" style="margin-left:7px;">전체삭제</a></td>
					<td align="center"><h1 class = "display-3">장바구니</h1></td>
					<td align="right"><a href="./shippingInfo.jsp?cartId=<%=cartId %>" class="btn btn-success" style="margin-right:7px;">주문하기</a></td>
				</tr>
			</table>
		</div>
		<br><br><br><hr>
		<div style="padding-top : 30px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%
					int sum = 0;
					int price= 0;

					ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Product>();
					
					for (int i=0; i<cartList.size(); i++){
						Product product = cartList.get(i);
						if(product.getSaleUnitPrice() == -1)
							price = product.getUnitPrice();
						else
							price = product.getSaleUnitPrice();
						
						int total = price * product.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td><%=product.getProductId() %> - <%=product.getName() %></td>
					<%
						if(product.getSaleUnitPrice() == -1){
					%>
						<td><%=product.getUnitPrice() %></td>
					<%
						}else{
					%>
						<td><%=product.getSaleUnitPrice() %></td>
					<%
						}
					%>
					
					<td><%=product.getQuantity() %></td>
					<td><%=total %></td>
					<td><a href="./removeCart.jsp?id=<%=product.getProductId() %>" class="badge badge-danger">삭제</a></td>
				</tr>
				
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%= sum %></th>
					<th></th>
				</tr>
			</table>
			<br>
			<hr>
			<a href="./products.jsp" class="btn btn-primary"> &laquo; 쇼핑 계속하기</a>
			<br><br>
		</div>
	</div>
	<br><br>
	<jsp:include page = "footer.jsp" />
</body>
</html>