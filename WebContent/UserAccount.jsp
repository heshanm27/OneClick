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
	 response.sendRedirect("UserLoginCreate.jsp");
 	
 }

    %>
    

<%@include file="/includes/navbar.jsp"%>
   


<!--Mid Containt  -->

<div class="container-sm align-self-center mt-5 mb-5">

    <div class="row  align-item justify-content-center  ">

         <div class="col-6 bg-light border border-5 " >
            <div class="row  ms-5 me-5  justify-content-center mt-5">
            <img src="<%=request.getContextPath()%>/img/Account/undraw_Updated_resume_re_q1or.svg" alt="" width="200px" height="200px">
            <button class="btn btn-primary mt-5 mb-5"   data-bs-toggle="modal" data-bs-target="#Account">Account Setting</button>
            </div>
        </div>
   
        </div>
    </div>








<!--Account Setting Modal  -->


    <div class="modal fade" id="Account" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            



                <form class="row g-3">
                    <div class="col-12">
                      <label for="inputEmail4" class="form-label">Name</label>
                      <input type="email" class="form-control" id="inputEmail4" placeholder="<% out.println(root.getName());%>">
                    </div>
                 
                    <div class="col-12">
                        <label for="inputEmail4" class="form-label">Email</label>
                        <input type="email" class="form-control" id="inputEmail4" placeholder="<% out.println(root.getEmail());%>">
                      </div>

                    <div class="col-12">
                        <p>Add New Password</p>
                      <label for="inputAddress2" class="form-label">Current Password</label>
                      <input type="text" class="form-control" id="inputAddress2" placeholder="">
						
                      <label for="inputAddress2" class="form-label">New Password</label>
                      <input type="text" class="form-control" id="inputAddress2" placeholder="">

                    </div>
                 
                    
                    <div class="col-12">
                      <button type="submit" class="btn btn-primary" data-backdrop="static" data-keyboard="false">Update</button>
                    </div>
                  </form>


            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
             
            </div>
          </div>
        </div>
      </div>






      
<%@include file="/includes/Footer.jsp"%>
</body>
</html>