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
 if(root1 == null){    
	 response.sendRedirect("SellerLoginCreate.jsp");
 	
 }

    %>
    

<%@include file="/includes/navbar.jsp"%>
   


<!-- ADD Item Modal -->

<div class="container-sm align-self-center mt-5 mb-5  bg-light" style="width:50%;">
<%
String status = (String) request.getAttribute("mesg");

if(status =="Sucess"){
 %>
  
  <div class="alert alert-success" role="alert">
Successfully Item Has been Inserted
  <button type="button" class="btn-close text-end" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%} %>

    <div class="row  align-item justify-content-center  ">


                 <form action="<%=request.getParameter("Cat") %> " method="post"  enctype="multipart/form-data" class="row g-3" >
                    <div class="col-12">
                      <label for="inputEmail4" class="form-label">ItemName</label>
                      <input type="text" class="form-control" id="inputEmail4" name="Name">
                    </div>
                    
                 	<div class="col-12">
                      <label for="inputEmail4" class="form-label">Title</label>
                      <input type="text" class="form-control" id="inputEmail4" name="title">
                    </div>
                   

                    <div class="col-12">
                      <label for="inputAddress2" class="form-label">Price</label>
                      <input type="text" class="form-control" id="inputAddress2" placeholder="$0.00" name="prixe">
                    </div>
                    <div class="input-group mb-5">
                        <span class="input-group-text">Item Discription</span>
                        <textarea class="form-control" aria-label="With textarea" name="description"></textarea>
                      </div>

            
                  <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="gridCheck">
                        <label class="form-check-label" for="gridCheck">
                         Agree For Conditions
                        </label>
                      </div>
                    </div>
                    <div class="photo-input col-4">
                        <p>Choose Image 1</p>
                        <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" name="image1" /> 
                     </div>
                     <div class="photo-input justify-content-center col-4">
                        <p>Choose Image 2</p>
                        <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" name="image2" /> 
                     </div>
                     <div class="photo-input col-4">
                        <p>Choose Image 3</p>
                        <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" name="image3"  /> 
                     </div> 
                    <div class="col-12 mt-5 mb-5">
                      <button type="submit" class="btn btn-primary">Add Item</button>
                    </div>
                  </form>


</div>
</div>

  
      
<%@include file="/includes/Footer.jsp"%>
</body>
</html>