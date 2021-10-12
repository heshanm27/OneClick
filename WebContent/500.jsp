<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="true" %>
    <%@page import="com.Page.*"%>
     <%@page import="com.index.*"%>
     <%@page import="items.*"%>
         <%@page import="java.util.*"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@page import="com.Seller.*"%>
  
    <%
    Seller root1 = (Seller) request.getSession().getAttribute("root1");
     User root = (User) request.getSession().getAttribute("root");
    
    if(root != null){    
    	
    	
    }
    else{

    }
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<style>
#boxmid{
            background-image: url(<%=request.getContextPath()%>/img/error/e500.svg);

  background-repeat: no-repeat;
  background-position: center;
  background-size:75%;
        }

        .container{

display: flex;
justify-content: center;
align-items: center;
flex-wrap: wrap;
}

</style>
<meta charset="ISO-8859-1">
<%@include file="/includes/head.jsp"%>
</head>
<body>
<%@include file="/includes/navbar.jsp"%>


  
      <div class="container">
        <main>
          
          <div class="row g-5 bg-white mt-3 mb-5 " id="boxmid"style="width: 500px; height: 500px;">
         
        <div class="col-12 text-dark text-center" >
            <h2 class=" text-danger">An Internal error has occurred</h2>
            <hr class="my-4">
        
            <div class="" style="margin-top: 45%;"> 
                <h4 class=" lead text-danger" style="margin-top:350px">Our Team is still Work on Fixing the issue  </h4>
           <a href="index.jsp" class="btn btn-primary btn-lg " tabindex="-1" role="button" aria-disabled="true">Back To Home</a>
          
        </div>    
        </div>
                </div>
      
      
        </main>
    </div>
      
<%@include file="/includes/Footer.jsp"%>

</html>