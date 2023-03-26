<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<% 
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();
	
	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_country = "";
	String shipping_zipCode = "";
	String shipping_addressName = "";
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if(n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_country"))
				shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_zipCode"))
				shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_addressName"))
				shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
	
%>


<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>주문 정보</title>
</head>
<body>
	<jsp:include page="header.jsp" />

	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1>영수증</h1>
		</div>
		<hr>
		<div class="row justify-content-between" style="background-color:#d9edf7; padding:0 20px 0 20px;">
			<div class="col-4" align="left">
				<strong>배송 주소</strong><br> 성명 : <% out.println(shipping_name); %> <br>
				우편번호 : <%out.println(shipping_zipCode); %> <br>
				주소 : <%out.println(shipping_addressName); %>(<% out.println(shipping_country); %>)<br>
			</div>
			<div class="col-4" align="right">
				<p> <em>배송일 : <% out.println(shipping_shippingDate); %></em>
			</div>
		</div>
		<br>
		<br>
		<br>
		<hr>
		<div>
			<table class="table table-hover">
				<tr>
					<th class="text-center">제품</th>
					<th class="text-center">#</th>
					<th class="text-center">가격</th>
					<th class="text-center">소계</th>
				</tr>
				<%
					int sum = 0;
					int price = 0;
									
					ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
					if(cartList == null)
						cartList = new ArrayList<Product>();
					for(int i=0; i<cartList.size(); i++){
						Product product = cartList.get(i);
						
						if(product.getSaleUnitPrice() == -1){
							price = product.getUnitPrice();
						}else{
							price = product.getSaleUnitPrice();
						}
						int total = price * product.getQuantity();
						sum = sum + total;
					
				%>
				<tr>
					<td class="text-center"><em><%=product.getName() %></em></td>
					<td class="text-center"><%=product.getQuantity() %></td>
					<td class="text-center"><%=price %></td>
					<td class="text-center"><%=total %>원</td>
				</tr>
				<%
					}
				%>
				<tr>
					<td></td>
					<td></td>
					<td class="text-right"><strong>총액 : </strong></td>
					<td class="text-center text-danger"><strong><%=sum %></strong></td>
				</tr>
			</table>
			<br>
			<div class="text-center">
				<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId %>"class="btn btn-primary" role="button">이전</a>&nbsp;
				<a href="./thankCustomer.jsp" class="btn btn-success" role="button"> 주문 완료</a>&nbsp;
				<a href="./checkOutCancelled.jsp" class="btn btn-danger" role="button">취소</a>
			</div>
		</div>
		<br>
	</div>
	<br><br>
	<%@ include file="footer.jsp" %>
</body>
</html>