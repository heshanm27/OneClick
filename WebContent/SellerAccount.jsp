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
            <img src="<%=request.getContextPath()%>/img/Account/undraw_Updates_re_o5af.svg" alt="" width="200px" height="200px">
            <button class="btn btn-primary mt-5 mb-5" type="submit">Update Items</button>
            </div>
        </div>

          <div class="col-6 bg-light border border-5 " >
            <div class="row  ms-5 me-5  justify-content-center mt-5">
            <img src="<%=request.getContextPath()%>/img/Account/undraw_Throw_away_re_x60k.svg" alt="" width="200px" height="200px">
           <a class="btn btn-primary mt-5" href="Update" role="button"><span style="padding-right: 15px" ><i class="material-icons">login</i></span>Delete</a>
            </div>
        </div>

         <div class="col-6 bg-light border border-5 " >
            <div class="row  ms-5 me-5  justify-content-center mt-5">
            <img src="<%=request.getContextPath()%>/img/Account/undraw_Updated_resume_re_q1or.svg" alt="" width="200px" height="200px">
            <button class="btn btn-primary mt-5 mb-5"   data-bs-toggle="modal" data-bs-target="#Account">Account Setting</button>
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
            



                <form class="row g-3">
                    <div class="col-12">
                      <label for="inputEmail4" class="form-label">Name</label>
                      <input type="email" class="form-control" id="inputEmail4">
                    </div>
                 
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Select Category </option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                      </select>

                    <div class="col-12">
                      <label for="inputAddress2" class="form-label">Price</label>
                      <input type="text" class="form-control" id="inputAddress2" placeholder="$0.00">
                    </div>
                    <div class="input-group">
                        <span class="input-group-text">Item Discription</span>
                        <textarea class="form-control" aria-label="With textarea"></textarea>
                      </div>

                    <div class="col-md-4">
                      <label for="inputState" class="form-label">State</label>
                      <select id="inputState" class="form-select">
                        <option selected>Choose...</option>
                        <option>...</option>
                      </select>
                    </div>
                    <div class="col-md-2">
                      <label for="inputZip" class="form-label">Zip</label>
                      <input type="text" class="form-control" id="inputZip">
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
                        <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" /> 
                     </div>
                     <div class="photo-input justify-content-center col-4">
                        <p>Choose Image 2</p>
                        <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" /> 
                     </div>
                     <div class="photo-input col-4">
                        <p>Choose Image 3</p>
                        <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" /> 
                     </div>
                    <div class="col-12">
                      <button type="submit" class="btn btn-primary">Sign in</button>
                    </div>
                  </form>




            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
             
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




<!-- Delete Items -->
    <div class="modal fade" id="Delete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            



                <form class="row g-3">
                   <table class="table table-dark table-hover">
                   
  							<tr>
  							<th class="table-dark">itemId</th>
  							<th class="table-dark">Item Name</th>
  							<th class="table-dark">item Details</th>
  							<th class="table-dark">Item Price</th>
  							</tr>
                   
   
  							<tr>
  						
								</tr>
								
								
	
							</table>
                  </form>

 <form class="row g-3">
                   <table class="table table-dark table-hover">
  							<tr>
  							<th class="table-dark">1</th>
  							<th class="table-dark">2</th>
  							<th class="table-dark">3</th>
  							<th class="table-dark">4</th>
  							</tr>
  							<tr>
  							<td class="table-dark">...</td>
	 						<td class="table-dark">...</td>
 							<td class="table-dark">...</td>
 							<td class="table-dark">...</td>
								</tr>
							</table>
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