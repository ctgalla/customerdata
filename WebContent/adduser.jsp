<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<li><p><b>Username:</b>
   <%= request.getParameter("username")%>
</p></li>
<li><p><b>Password:</b>
   <%= request.getParameter("password")%>
</p></li>
<li><p><b>Email:</b>
   <%= request.getParameter("email")%>
</p></li>
<li><p><b>Full  Name:</b>
   <%= request.getParameter("full_name")%>
</p></li>
</ul>

<%  
int i=userDAO.addProduct(obj); 
if (i > 0)  
	out.print("Product successfully added");  
else
	out.println("Error; product not added");
%>
</body>
</html>