<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@page import="java.util.ArrayList"%>
    <%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
  <%@page import="com.Page.*"%>
    <%@page import="com.Seller.*"%>

   <%
   
     User root = (User) request.getSession().getAttribute("root");
   Seller root1 = (Seller) request.getSession().getAttribute("root1");
    
    if(root != null){    
    	request.setAttribute("root", root);
    	
    }
    %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="/includes/head.jsp"%>
</head>
<body>
  

<%@include file="/includes/navbar.jsp"%>



    <div class="container-lg  bg-light w-50 my-5 " id="loginform" >

   
        <nav>
            <div class="nav nav-pills nav-tabs" id="nav-tab" role="tablist">
               <button class="nav-link  active" id="navLogin" data-bs-toggle="pill" data-bs-target="#Login" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Log In</button>
                <button class="nav-link  " id="navSignup" data-bs-toggle="pill" data-bs-target="#signUp" type="button" role="tab" aria-controls="pills-home" aria-selected="false">Sign Up</button>

            </div>
        </nav>
  


<div class="tab-content" id="nav-tabontent">
    
        <div class="tab-pane fade show active   p-3 " id="Login" role="tabpanel" aria-labelledby="navLogin">
        <div class="container-fluid text-center h1">

            <h1 class="text-primary">Login</h1>
      
                
           
<% String name = (String) request.getAttribute("isTrue"); 


if(name == "used"){
	
%>

    <div class="alert alert-danger fs-4" role="alert">
Entered Email Already have A Account Please Use Email To Login  
</div>


<% }%>

<% String done = (String) request.getAttribute("done"); 


if (done == "true"){
	
%>

    <div class="alert alert-info fs-4" role="alert">
 Account Successfully Created !!WelCome Buddy!!
</div>


<% }%>

<% String error = (String) request.getAttribute("loginFaild"); 


if(error == "OK"){
	
%>

    <div class="alert alert-danger fs-4" role="alert">
Wrong Password Or Email Please Try Again 
</div>


<% }%>
     
        </div>
        <form action="SellerLogin" method="post">
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label" required>Email address</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="loginEmail">
              <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
            <div class="mb-3">
              <label for="exampleInputPassword1" class="form-label" required>Password</label>
              <input type="password" class="form-control" id="exampleInputPassword1" name="LoginName">
            </div>
            <div class="mb-3 form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
          <center>  <button type="submit" class="btn btn-primary">Submit</button></center>
          </form>
    </div>

    
    
    
    
    
    
    
    
    <div class="tab-pane fade p-3" id="signUp" role="tabpanel" aria-labelledby="navSignup">     
        <div class="container-fluid text-center h1">
            <h1 class="text-primary">Create Account</h1>
        </div>
        <form action="SellerSignUp" method="post"> 
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Name</label>
                <input type="text" class="form-control" id="exampleInputPassword1" name="Name" required>
            </div>
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Email address</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="Email" required>
              <div id="emailHelp" class="form-text">Enter Valid Email</div>
            </div>
              <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Address</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="Address" required>
         
            </div>
              <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Country</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="Country" required>
            
            </div>
        
            
            
            
            <div class="mb-3">
              <label for="exampleInputPassword1" class="form-label">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword1" name="Pass" required>
            </div>
            <div class="mb-3 form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Show Password</label>
            </div>
           <center> <button type="submit" class="btn btn-primary" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="top" data-bs-content="${isTrue}">Submit</button></center>
          </form>
    </div>







</div>

</div>

</body>
</html>