<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.Barrabee.customerData.DAO"%> 
<%@ page import="com.Barrabee.customerData.User"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Users</title>
</head>
<body>
<h1>User Listing</h1>
<jsp:useBean id="k" class="com.Barrabee.customerData.User">  
</jsp:useBean>  
<jsp:setProperty property="*" name="k"/>
<table>
<%  
List<User> users = DAO.getAllUsers(); 
for (User u: users) {
	out.println ("<tr><td>" + u.getUserName() + "</td><td>" +
		u.getPassword() + "</td><td>" + u.getEmail() 
		+ "</td><td>" + u.getFullName() + "</td></tr>");
}
%>  
</table>
</body>
</html>