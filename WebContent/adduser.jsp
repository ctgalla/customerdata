<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="com.barrabee.customerData.DAO"%>
<%@ page import="com.barrabee.customerData.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>User Information</h1>
		<ul>
			<li><p>
					<b>Username:</b>
					<%= request.getParameter("username")%>
				</p></li>
			<li><p>
					<b>Password:</b>
					<%= request.getParameter("password")%>
				</p></li>
			<li><p>
					<b>Email:</b>
					<%= request.getParameter("email")%>
				</p></li>
			<li><p>
					<b>Full Name:</b>
					<%= request.getParameter("fullName")%>
				</p></li>
		</ul>

		<%  
int i=DAO.addUser(User u); 
if (i > 0)  
	out.print("User successfully added");  
else
	out.println("Error; User not added");
%>
	
</body>
</html>