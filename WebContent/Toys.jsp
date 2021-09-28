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
              <input type="hidden" name="cat" value="toy"/>
              <span class="input-group-text bg-light" id="basic-addon2"><button type="submit" class="btn btn-primary"><span style="padding-right: 15px" ><i class="material-icons">search</i></span>Search</button></span>
            </div>
          </form>



  
          </div>
      </div>
      
      
      
       <div class="row row-cols-1 row-cols-4 me-5 ms-5 mt-5 mb-5">
       
  
          <%

   
  	ArrayList<Toys> item = (ArrayList<Toys>) request.getAttribute("Details");
          
          if(item.isEmpty() != true){
%>
<% 
    
    
  for(Electronics items:item){
  
 
  
  %>
    
       
       
       
        <div class="col bg-light border border-5 border-light " >
          <div class="card" style="height: 490px">
            <img class="ms-5"src="data:image/jpg;base64,<%=items.getImage1()%>" width="60%" height="60%">
                <div class="card-body">
          	<h5 class="card-title text-break fs-5"><%=items.getItemName() %></h5>
          <p class="card-text">$<%=items.getPrice() %></p>
        <a class="btn btn-outline-dark mt-2" href="Orders?ID=<%=items.getItemID() %>&cat=toy" role="button" style="font-size: 10px; width: auto;">Buy Now</a>	
        </div>
          </div>
        </div>
        
        
      <%
  }
          }else{
        %>
        
        
        <div class="col-12 text-center mb-5">
        
        <h1>No Search Result</h1>
        </div>
        
        <%
          }
        %>
        
        
        </div>




<%@include file="/includes/Footer.jsp"%>
</html>