<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title></title>
	<style type="text/css">
		.col-md-4{
			text-align: left;
			margin-top : 30px;
			margin-bottom : 30px;
		}
		
		.pList{
			min-height : 700px;
		}
		.imgEff{
		transition: all 0.2s linear;
		}
	
		.imgEff:hover{
			transform: scale(1.1);
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
		<div class="row pList" align="center">
			<%@ include file="dbconn.jsp" %>
				<%
					int i = 0;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					String sql = "select * from product";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while(rs.next()){
						if(!rs.getString("p_category").equals("Shirt")){
							continue;
						}
						
				%>
		
		<% 
				if(i != 0 && i % 3 == 0){
		%>		
				</div><div class="row pList" align="center">
		<%
				}
		%>		
				<div class="col-md-4 imgEff">
					<a href="./product.jsp?id=<%=rs.getString("p_id") %>"><img src="./resources/images/<%=rs.getString("p_fileName") %>" style="width:320px; height:400px; box-shadow: 5px 5px 10px 6px gray;" class="img-thumbnail"></a>
				<br>
					<h5><%=rs.getString("p_name") %></h5>
						<%
							if(rs.getInt("p_saleUnitPrice") != -1){
						%>					
							<p style="color:red; margin:0;"><%=rs.getString("p_description") %>
						<%
							} else {
						%>
								<p style="color:black; margin:0;">&nbsp;<%=rs.getString("p_description")%>		
						<%
							}
						%>
						<hr style="margin-top:10px; margin-bottom:10px;">
						
						<%
							if(rs.getInt("p_saleUnitPrice") != -1){
								
						 %>
							<p style="text-decoration:line-through; color:gray; margin:3px;"><%= rs.getInt("p_unitPrice") %>&nbsp;원
							<p><%=rs.getInt("p_saleUnitPrice")  %>&nbsp;원
						
						<%
							}
							else{
								
						%>
							<p><%=rs.getInt("p_unitPrice")  %>&nbsp;원
						<%
							}
						%>
					</div>
	
			<%
				i += 1;
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
	<jsp:include page="footer.jsp"/>
</body>
</html>