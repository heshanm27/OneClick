<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@page import="java.util.ArrayList"%>
    <%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<!-- Link bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
       
    
    <!--Google Matrial ICon-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="style.css" rel="stylesheet">


<title>Insert title here</title>
</head>
<body>
  

  
     <nav class="justify-content-center navbar bg-dark " style="height: 250px; width: 100%;" >
   
        <a class="navbarbrand "><img src="<%=request.getContextPath()%>/img/logo.png" class="me-5" id="logo" style="border-radius: 50%; left: 500px;"></a>
        
        <h1 class="justify-content-center me-5" style="color: white;">One click</h1>

        <ul class="nav ms-5" >
            <li class="nav-item bg-light" >
              <a class="nav-link active" aria-current="page" href="#"><span><i class="material-icons">home</i>Home</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Sport Item</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"  >Electronic Accessories</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"  >Toys</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"  >Toys</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"  >Toys</a>
              </li>
          </ul>
    
       <div style="right:500px;">   
            <button class="btn btn-primary navbtn me-5" style="width: 150px;" type="button"></span><i class="material-icons">shopping_cart</i></span>Cart</button>
            <button class="btn btn-primary me-5 " style="width: 150px; "type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo"><span style="padding-right: 15px" ><i class="material-icons">login</i></span>Sign up</button>
        </div> 
        </div>
    </nav>



    <div class="container-lg  bg-light w-50 my-5 " id="loginform" >

   
        <nav>
            <div class="nav nav-pills nav-tabs" id="nav-tab" role="tablist">
               <button class="nav-link  active" id="navLogin" data-bs-toggle="pill" data-bs-target="#Login" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Log In</button>
                <button class="nav-link  " id="navSignup" data-bs-toggle="pill" data-bs-target="#signUp" type="button" role="tab" aria-controls="pills-home" aria-selected="false">Sign Up</button>

            </div>
        </nav>
  


<div class="tab-content" id="nav-tabontent">
    
        <div class="tab-pane fade show active   " id="Login" role="tabpanel" aria-labelledby="navLogin">
        <div class="container-fluid text-center h1">

            <h1 class="text-primary">Login</h1>
      
                
           
<% String name = (String) request.getAttribute("isTrue"); 


if(name == "used"){
	
%>

    <div class="alert alert-danger fs-4" role="alert">
Entered Email Already have A Account Please Use Email To Login  
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
        <form action="login" method="post">
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
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
    </div>

    
    
    
    
    
    
    
    
    <div class="tab-pane fade p-3" id="signUp" role="tabpanel" aria-labelledby="navSignup">     
        <div class="container-fluid text-center h1">
            <h1 class="text-primary">Create Account</h1>
        </div>
        <form action="signup" method="post"> 
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
              <label for="exampleInputPassword1" class="form-label">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword1" name="Pass" required>
            </div>
            <div class="mb-3 form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Show Password</label>
            </div>
            <button type="submit" class="btn btn-primary" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="top" data-bs-content="${isTrue}">Submit</button>
          </form>
    </div>







</div>

</div>



</body>
</html>