<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page errorPage = "exceptionNoProductId.jsp" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id ="productDAO" class="dao.ProductRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart(){
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		} else{
			document.addForm.reset();
		}
	}
</script>
<style type="text/css">
	div.product{
		margin-top: 20px;
		margin-bottom: 100px;
	}
	
	.p_info{
		padding-top:10px;
		height: 100px;
		background-color: #d9d9d9;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />

	
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
	<div class="container product">
		<div class="row">
			<%@ include file="dbconn.jsp" %>
			<%
				int i = 0;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					if(!rs.getString("p_id").equals(id)){
						continue;
					}
			%>	
			<div class = "col-md-5">
				<img src="./resources/images/<%=rs.getString("p_filename")%>" style="width:100%" class="img-thumbnail">
			</div>
			<div class="col-md-6">
				<h1><%=rs.getString("p_name") %></h1>
				<%
					if(rs.getInt("p_saleUnitPrice") != -1){
				%>
					<h4 style="color:red;"><%=rs.getString("p_description") %></h4>
					<br>
					<h4 style="display:inline;">가격 :</h4> <h4 style="text-decoration:line-through; display:inline; color:#d9d9d9;"><%=rs.getInt("p_unitPrice") %>원 </h4>
					<p><h3 style="display:inline;">할인가 : </h3> <h3 style="color:red; display:inline;"><%=rs.getInt("p_saleUnitPrice") %>원</h3>
				<%
					}
					else{
				%>
					<h4><%=rs.getString("p_description") %></h4>
					<br>
					<h4>가격 :<%=rs.getInt("p_unitPrice") %>원</h4>
				<%
						}
				%>
				<hr>
				<p><b>상품코드</b> : <span class="badge badge-danger"><%=rs.getString("p_id") %></span>
				<p><b>제조사</b> : <%=rs.getString("p_manufacturer") %>
				<p><b>분류</b> : <%= rs.getString("p_category") %>
				<p><b>재고수</b> : <%=rs.getInt("p_unitsInStock") %>
				
				<p> <form name = "addForm" action = "./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()">상품 주문&raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
					<a href="./products.jsp" class="btn btn-primary">상품 목록 &raquo;</a>
				</form>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<hr>
	<div class="container p_info">
		<h2 class="text-center">상세 정보</h2>
	</div>
	<br>
	<div class="container">
		<div style="float:left; width:430px; heihgt:">
			<img src="" alt="IMAGE..." style="width:400px; height:600px;"/> 
		</div>
		<div style="float:right; width:700px; height:600px;">
			<h1 style="text-align:center;">- 상품 설명 -</h1>
			
		</div>
		<br>
	</div>
	<br>
	<div class="container">
		<br><hr><br>
		<div style="float:left; width:700px; heihgt:">
			<h1 style="text-align:center;">- 상품 설명 -</h1>
		</div>
		<div style="float:right; width:430px; height:600px;">
			<img src="" alt="IMAGE..." style="width:400px; height:600px;"/> 
		</div>
	</div>
	<br><br>
	<jsp:include page="footer.jsp"/>
</body>
</html>