<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="com.Barrabee.customerData.DAO"%>
<%@ page import="com.Barrabee.customerData.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add User</title>
</head>
<body>
<h1>Add User</h1>
<jsp:useBean id="u" class="com.Barrabee.customerData.User">  
</jsp:useBean>  
<jsp:setProperty property="*" name="u"/>


<%  

int i=DAO.addUser(u); 
if (i > 0)  
	out.print("User successfully added");  
else
	out.println("Error; User not added");
%>	
</body>
</html>