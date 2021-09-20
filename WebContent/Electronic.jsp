<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="true" %>
    <%@page import="com.Page.*"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page import="items.*"%>
    <%@page import="java.util.ArrayList"%>
     <%@page import="java.sql.Blob"%>
     <%@page import="java.io.OutputStream"%>
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="/includes/head.jsp"%>
</head>
<body>
<%@include file="/includes/navbar.jsp"%>


      
       <div class="container-fluid bg-primary  align-item justify-content-Center ">
      <div class="row align-item justify-content-center  ">

          <form class=" mt-5 mb-5 w-75" action="Search" method="get">
            <div class="input-group  ">
              <input type="text" class="form-control" placeholder="Searh" aria-label="Recipient's username" aria-describedby="basic-addon2" name="Search">
              <span class="input-group-text bg-light" id="basic-addon2"><button type="submit" class="btn btn-primary"><span style="padding-right: 15px" ><i class="material-icons">search</i></span>Search</button></span>
            </div>
          </form>



  
          </div>
      </div>
      
      
      
       <div class="row row-cols-1 row-cols-4 me-5 ms-5 mt-5 mb-5">
       
  
          <%

   
  	ArrayList<Electronics> item = (ArrayList<Electronics>) request.getAttribute("Details");

    
  for(Electronics items:item){
  
 
  
  %>
    
       
       
       
        <div class="col bg-light border border-5 border-light" >
          <div class="card" style="height: 490px">
            <img src="data:image/jpg;base64,<%=items.getImage1()%>" width="75%" height="75%">
                <div class="card-body">
          	<h5 class="card-title text-break fs-5"><%=items.getItemName() %></h5>
          <p class="card-text">$<%=items.getPrice() %></p>
          <button type="button" class="btn btn-outline-dark mt-2" style="width: auto;">Shop Now</button>
        </div>
          </div>
        </div>
        
        
        <%
  }
        %>
        
        
        
        
        </div>




<%@include file="/includes/Footer.jsp"%>
</html>