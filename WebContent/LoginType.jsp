<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.Page.*"%>
           <%@page import="java.util.ArrayList"%>
    <%@page import="items.*"%>
    <%@page import="java.sql.Blob"%>
        <%@page import="com.Seller.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="/includes/head.jsp"%>
</head>
<body>
 <%
 Seller root1 = (Seller) request.getSession().getAttribute("root1");
 
     User root = (User) request.getSession().getAttribute("root");
 if(root == null){    
	
 	
 }

    %>

    
<%@include file="/includes/navbar.jsp"%>



<div class="container-sm align-self-center mt-5 mb-5">

    <div class="row  align-item justify-content-center  ">


	      <div class="col-6 bg-light border border-5 " >
            <div class="row  ms-5 me-5  justify-content-center mt-5">
             <img src="<%=request.getContextPath()%>/img/UserType/Seller.svg" alt="" width="200px" height="200px">
            <a class="btn btn-primary mt-5 mb-5" href="UserLoginCreate.jsp" role="button"><span style="padding-right: 15px" ><i class="material-icons">login</i></span>User</a>
            </div>
        </div>
	

        <div class="col-6 bg-light border border-5 " >
            <div class="row  ms-5 me-5  justify-content-center mt-5">
             <img src="<%=request.getContextPath()%>/img/UserType/User.svg" alt="" width="200px" height="200px">
         
            <a class="btn btn-primary mt-5" href="SellerLoginCreate.jsp" role="button"><span style="padding-right: 15px" ><i class="material-icons">login</i></span>Seller</a>
            </div>
        </div>

   
      

        </div>
    </div>
    
    
<%@include file="/includes/Footer.jsp"%>
</body>
</html>