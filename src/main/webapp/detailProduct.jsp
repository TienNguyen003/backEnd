<%@page import="Model.Product"%>
<%@page import="DAO.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detail Product</title>
</head>
<body>
	<%
		String id = request.getParameter("idPro"); 
		Dao dao = new Dao();
		Product p = dao.getProduct(id);
		out.print(p.getName());
		
	%>
</body>
</html>