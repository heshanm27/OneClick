<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.Seller.*"%>
      <%@page import="com.Page.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

      <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/solid.css">
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@600&display=swap" rel="stylesheet">
<!-- 
tiny sldier -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.3/tiny-slider.css">
  

      <style>
     

body{

font-family: 'Titillium Web', sans-serif;
  background-color:#eeeeee;
  color:#212121;
}



/* Placeholder */


.container{
min-height: 100vh;
display: flex;
justify-content: center;
align-items: center;
flex-wrap: wrap;
}



    
#boxmid{
    -webkit-box-shadow: 0px 4px 14px -5px rgba(0,0,0,0.47);
-moz-box-shadow: 0px 4px 14px -5px rgba(0,0,0,0.47);
box-shadow: 0px 4px 14px -5px rgba(0,0,0,0.47);
}

      </style>
   
</head>
<%
Seller root1 = (Seller) request.getSession().getAttribute("root1");
User root = (User) request.getSession().getAttribute("root");
if(root1 == null && root == null){    
response.sendRedirect("LoginType.jsp");

}

%>
<body class="bg-light">
    
  <div class="container">
    <main>
      
      <div class="row g-5 bg-white " id="boxmid"style="width: 500px; height: 500px;">
     
    <div class="col-12 text-dark text-center" >
        <h1>Thanks For Purchasing </h1>
        <hr class="my-4">
        <p class="lead text-success">Your Order Successfully Placed</p><p>(Order Will be Delivery Within 4 Week)</p>
        <div class="" style="margin-top: 25%;"> 
       <a href="index.jsp" class="btn btn-primary btn-lg " tabindex="-1" role="button" aria-disabled="true">Back To Home</a>
        <a href="<%=request.getAttribute("Details") %>" class="btn btn-primary btn-lg " tabindex="-1" role="button" aria-disabled="true">Search More</a>
    </div>    
    </div>
            </div>
  
  
    </main>

  

    </body>
</html>