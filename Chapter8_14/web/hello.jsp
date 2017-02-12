<!--  just to show that we make in DD <el-ignored>true</el-ignored> this page directive wins agains it-->
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Example</title>
</head>
<body>
<h1>Welcome to our page!!</h1>
	<!-- Test for the request parameter: using scriplet-->
	<% if (request.getParameter("userName") == null ) {%>
		<!-- use jsp standart action to forward to another page if condition is met-->
		<jsp:forward page="handleIt.jsp" /> <!-- if we get true  -->
		<!-- remember in standart action we use attribute page because is in run time happen-->
		<% } %>
		<!-- If we made it this far, the userName must have been valid! NOTHING in this page
		will appear in the response if the request is forwarded-->
		Hello ${param.userName}
</body>
</html>