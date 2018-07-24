<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
	<title>Custom Login Page</title>
</head>

<body>

	<h3>Login</h3>
	
	<form:form action="${pageCOntext.request.contextPath}/authenticateUser"
				method="POST">
				
		<p>
			User name: <input type="text" name="userName"/>
		</p>
		
		<p>
			Password: <input type="password" name="password"/>
		</p>			
		
		<input type="submit" value="Login"/>
				
	</form:form>

</body>

</html>
