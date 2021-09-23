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
   


<!--Mid Containt  -->

<div class="container-sm align-self-center mt-5 mb-5">

    <div class="row  align-item justify-content-center  ">

        <div class="col-6 bg-light border border-5 " >
            <div class="row  ms-5 me-5  justify-content-center mt-5">
            <img src="<%=request.getContextPath()%>/img/Account/undraw_Add_files_re_v09g.svg" alt="" width="200px" height="200px">
            <button class="btn btn-primary mt-5 mb-5"   data-bs-toggle="modal" data-bs-target="#add" >Add Items</button>
            </div>
        </div>

   <div class="col-6 bg-light border border-5 " >
            <div class="row  ms-5 me-5  justify-content-center mt-5">
            <img src="<%=request.getContextPath()%>/img/Account/undraw_Updated_resume_re_q1or.svg" alt="" width="200px" height="200px">
            <button class="btn btn-primary mt-5 mb-5"   data-bs-toggle="modal" data-bs-target="#Account">Account Setting</button>
            </div>
        </div>

         <div class="col-12 bg-light border border-5 " >
            <div class="row  ms-5 me-5  justify-content-center mt-5">
            <img src="<%=request.getContextPath()%>/img/Account/undraw_Updates_re_o5af.svg" alt="" width="200px" height="200px">
            <button class="btn btn-primary mt-5 mb-5" data-bs-toggle="modal" data-bs-target="#DU">Update&Delete Items</button>
            </div>
        </div>

     

      
   
        </div>
    </div>






<!-- ADD Item Modal -->

    
    <div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
          
            <div class="row">

              <div class="col-12 text-center" style="background-image: url(<%=request.getContextPath()%>/img/Additem/e.jpg); background-position: center; background-size: cover; height: 200px;">
                <a href="insert.jsp" class="btn btn-primary  " style="margin-top: 6rem;">Add Electronic Accessories</a>
            </div>
            <div class="col-12 text-center" style="background-image: url(<%=request.getContextPath()%>/img/Additem/c.jpg); background-position: center; background-size: cover; height: 200px;">
              <a href="#" class="btn btn-primary" style="margin-top: 6rem;">Add Clothes Items</a>
          </div>
          <div class="col-12 text-center" style="background-image: url(<%=request.getContextPath()%>/img/Additem/s.jpg); background-position: center; background-size: cover; height: 200px;">
            <a href="#" class="btn btn-primary" style="margin-top: 6rem;">Add Sport Items</a>
        </div>
        <div class="col-12 text-center" style="background-image: url(<%=request.getContextPath()%>/img/Additem/t.jpg); background-position: center; background-size: cover; height: 200px;">
          <a href="#" class="btn btn-primary" style="margin-top: 6rem;" >Add Toy Items</a>
        </div>
             



          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
           
          </div>
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
                      <input type="email" class="form-control" id="inputEmail4" placeholder="<% out.println(root1.getName());%>">
                    </div>
                 
                    <div class="col-12">
                        <label for="inputEmail4" class="form-label">Email</label>
                        <input type="email" class="form-control" id="inputEmail4" placeholder="<% out.println(root1.getEmail());%>">
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


<!-- Delete &update Item Model -->


<div class="modal fade" id="DU" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
          
            <div class="row">

              <div class="col-12 text-center" style="background-image: url(<%=request.getContextPath()%>/img/Additem/e.jpg); background-position: center; background-size: cover; height: 200px;">
                <a href="ShowData.jsp?Cat=electronics" class="btn btn-primary  " style="margin-top: 6rem; width:200px" >Delete&Update Electronic Accessories</a>
            </div>
            <div class="col-12 text-center" style="background-image: url(<%=request.getContextPath()%>/img/Additem/c.jpg); background-position: center; background-size: cover; height: 200px;">
              <a href="#" class="btn btn-primary" style="margin-top: 6rem; width:150px;">Delete&Update Clothes Items</a>
          </div>
          <div class="col-12 text-center" style="background-image: url(<%=request.getContextPath()%>/img/Additem/s.jpg); background-position: center; background-size: cover; height: 200px;">
            <a href="#" class="btn btn-primary" style="margin-top: 6rem; width:150px;">Delete&Update  Sport Items</a>
        </div>
        <div class="col-12 text-center" style="background-image: url(<%=request.getContextPath()%>/img/Additem/t.jpg); background-position: center; background-size: cover; height: 200px;">
          <a href="#" class="btn btn-primary" style="margin-top: 6rem; width:150px;" >Delete&Update  Toy Items</a>
        </div>
             



          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
           
          </div>
        </div>
      </div>
    </div>
    </div>


      
<%@include file="/includes/Footer.jsp"%>
</body>
</html>