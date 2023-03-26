<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>상품 수정</title>
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
</head>
<body>
<jsp:include page="header_login.jsp"/>

	<%@ include file="dbconn.jsp" %>
	<%
		String productId = request.getParameter("id");
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from product where p_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		rs = pstmt.executeQuery();
		if(rs.next()){
	%>
	
	<div class="container" style="box-shadow: 5px 5px 10px 6px gray; margin-top:30px;">
		<br>
		<h1 class="text-center" style="text-shadow: 2px 2px 10px 2px black;">상품 수정</h1>
		<br>
		<hr>
		<br>
		<div class="row" align="center">
			<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("p_fileName") %>" alt="image" style="width:100%" />
			</div>
			<div class="col-md-7">
				<form name="newProduct" action="./processUpdateProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">제품번호</label>
						<div class="col-sm-3">
							<input type="text" id="productId" name="productId" class="form-control" value="<%=rs.getString("p_id")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">제품명</label>
						<div class="col-sm-3">
							<input type="text" id="name" name="name" class="form-control" value="<%=rs.getString("p_name")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">가격</label>
						<div class="col-sm-3">
							<input type="text" id="unitPrice" name="unitPrice" class="form-control" value="<%=rs.getInt("p_unitPrice")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">할인가격</label>
						<div class="col-sm-3">
							<input type="text" id="saleUnitPrice" name="saleUnitPrice" class="form-control" value="<%=rs.getInt("p_saleUnitPrice")%>" placeholder="할인하지 않는 경우 -1입력">
						</div>
					</div>
					<div class="form-group row" style="min-height:50px;">
						<label class="col-sm-2">설명</label>
						<div class="col-sm-5">
							<textarea name="description" cols="50" rows="2" class="form-control" style="resize:none;" ><%=rs.getString("p_description")%></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">제조사</label>
						<div class="col-sm-3">
							<input type="text" name="manufacturer" class="form-control" value="<%=rs.getString("p_manufacturer")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">분류</label>
						<div class="col-sm-3">
							<input type="text" name="category" class="form-control" value="<%=rs.getString("p_category")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">재고 수</label>
						<div class="col-sm-3">
							<input type="text" id="unitsInStock" name="unitsInStock" class="form-control" value="<%=rs.getLong("p_unitsInStock")%>">
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-sm-2">이미지</label>	
						<div class="col-sm-5">
							<input type="file" name = "productImage" class="form-control">
						</div>
					</div>
					<hr>
					<div class="form-group row" style="margin-top : 20px;">
						<div class="text-center ">
							<input type="submit" class="btn btn-primary" value="등록" onclick="CheckAddProduct()">
						</div>
					</div>
				</form>
			</div>
			
			
			<% 
				} 
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
					
				%>
		</div>
	</div>
	<br><br><br>
</body>
</html>