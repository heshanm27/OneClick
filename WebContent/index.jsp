<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="true" %>
    <%@page import="com.Page.*"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%
   
     User root = (User) request.getSession().getAttribute("root");
    
    if(root != null){    
    	
    	
    }
    else{
    	response.sendRedirect("LoginCreate.jsp");
    }
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="/includes/head.jsp"%>
</head>
<body>
<%@include file="/includes/navbar.jsp"%>

<h1>Sucess</h1>
<%@include file="/includes/Footer.jsp"%>
</html>