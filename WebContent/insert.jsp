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
	<h1 class="text-center">Add Items</h1>

                 <form action="<%=request.getParameter("Cat") %> " method="post"  enctype="multipart/form-data" class="row g-3" >
                    <div class="col-12">
                      <label for="inputEmail4" class="form-label">ItemName</label>
                      <input type="text" class="form-control" id="inputEmail4" name="Name" placeholder="" required>
                        <div class="invalid-feedback">
                  			Item Name required
                </div>
                    </div>
                    
                 	<div class="col-12">
                      <label for="inputEmail4" class="form-label">Title</label>
                      <input type="text" class="form-control" id="inputEmail4" name="title" placeholder="" required>
                        <div class="invalid-feedback">
                  Item Title required
                </div>
                    </div>
                   

                    <div class="col-12">
                      <label for="inputAddress2" class="form-label">Price</label>
                      <input type="text" class="form-control" id="inputAddress2" placeholder="$0.00" name="prixe" placeholder="" required>
                        <div class="invalid-feedback">
                  Item Price required
                </div>
                    </div>
                    <div class="input-group mb-5">
                        <span class="input-group-text">Item Discription</span>
                        <textarea class="form-control" aria-label="With textarea" name="description" placeholder="" required></textarea>
                      </div>

             			 <hr class="my-4">
               
                    <div class="photo-input col-4">
                        <p>Choose Image 1</p>
                        <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" name="image1" placeholder="" required /> 
                     </div>
                     <div class="photo-input justify-content-center col-4">
                        <p>Choose Image 2</p>
                        <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" name="image2"  placeholder="" required/> 
                     </div>
                     <div class="photo-input col-4">
                        <p>Choose Image 3</p>
                        <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" name="image3" placeholder="" required  /> 
                     </div> 
                    <div class="col-12 mt-5 mb-5">
                      <button type="submit" class="btn btn-primary">Add Item</button>
                    </div>
                  </form>


</div>
</div>

        <script>
function goBack() {
  window.history.back();
}

(function () {
    'use strict'
  
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation')
  
    // Loop over them and prevent submission
    Array.prototype.slice.call(forms)
      .forEach(function (form) {
        form.addEventListener('submit', function (event) {
          if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
          }
  
          form.classList.add('was-validated')
        }, false)



      })
  })()



</script>
<%@include file="/includes/Footer.jsp"%>
</body>
</html>