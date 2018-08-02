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
	
	<hr>
	
	<!-- display user name and role -->
	<p>
		User: <security:authentication property="principal.username"/>
		<br><br>
		Roles(s): <security:authentication property="principal.authorities"/>
	</p>
	
	<security:authorize access="hasRole('MANAGER')">
		
		<!-- link to point to /leaders -->
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
			(Management only)
		</p>
	
	</security:authorize>
	
	<security:authorize access="hasRole('ADMIN')">
	
		<!-- link to point to /systems -->
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
			(Admin only)
		</p>
	
	</security:authorize>
	
	<hr>
	 
	<!-- logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
			   method="POST">
			   
   		<input type="submit" value="Logout"/>
   
   </form:form>
	
</body>

</html>