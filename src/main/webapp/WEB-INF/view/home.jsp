<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>Company Home Page</title>
</head>

<body>
	<h2>Company Home Page</h2>
	<hr>
	
	<p>
	Welcome
	</p>
	
	<!-- logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
			   method="POST">
			   
   		<input type="submit" value="Logout"/>
   
   </form:form>
	
</body>

</html>