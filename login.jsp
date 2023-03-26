<%@ page contentType="text/html; charset=utf-8"%> 
<html>
<head>
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		html{
			margin-top : 100px;
		}
		body{
			background : #d9d9d9;
		}
		a.join{
			padding-left:50px;
		}
		div.login{
			margin-bottom:5px;
		}
	</style>
</head>
<body>
	<div class="container" style="width: 300px; height: 500px;">
		<h2>Admin Login</h2>	
		<%
			String error = request.getParameter("error");
			if(error != null){
				out.println("<div class = 'alert alert-danger'>");
				out.println("Please Check your Id/passwd");
				out.println("</div>");
			}
		%>
		<form class="form-signin" action="j_security_check" method="post">
			<div class="form-group login">
				<label for="inputUserName" class="sr-only">User Name</label>
				<input type="text" id="id" name='j_username' class="form-control" placeholder="Id" required>
			</div>
			<div class="form-group login">
				<label for="inputPassword" class="sr-only">Password</label>
				<input type="password" id = "passwd" name='j_password' class="form-control" placeholder="Password" required>
			</div>
			<br>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
			
		</form>
		<a href="./mainPage.jsp">메인화면으로 돌아가기</a>
	</div>
	
</body>
</html>