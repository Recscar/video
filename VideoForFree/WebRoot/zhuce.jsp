<%@ page language="java" import="java.util.*" contentType="text/html;charest=utf-8" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>VideoForFree</title>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

	</head>

	<body>
		<div class="main">
			<div class="login-form">
				<h1>
					Login
				</h1>
				<div class="head">
					<img src="images/user.png" alt="" />
				</div>
				<form action="servlet/SignUpCheck" method="post">
					
					<input type="text" name="email" id="email" class="text" value="Email"
						style="text-align: center" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERNAME';}" >
					
					<input type="password" name="password" id="password" value="password" style="text-align: center" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
					
					<div class="submit">
						<input type="submit" onclick="myFunction()" value="зЂВс">
					</div>
			
				</form>
				
			</div>
		</div>


	</body>
</html>
