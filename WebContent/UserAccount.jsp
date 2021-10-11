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
   
<% String name = (String) request.getAttribute("Ok"); 


if(name == "done"){
	
%>

    <div class="alert alert-success fs-4" role="alert">Account Successfully Updated  </div>


<% }

String err = (String) request.getAttribute("err");
if(err == "wrong"){%>
    <div class="alert alert-danger fs-4" role="alert">
SomeThing went wrong 
</div>

<%} %>
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
              <h5 class="modal-title" id="exampleModalLabel">Account Setting</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            



                <form class="row g-3 needs-validation" action="UserUpdate" method="post" novalidate>
                    <div class="col-12">
                      <label for="inputEmail4" class="form-label">Name</label>
                      <input type="text" class="form-control" id="inputEmail4" name="name" value="<%=root.getName()%>">
                    </div>                 
                    <div class="col-12">
                        <label for="inputEmail4" class="form-label">Email</label>
                        <input type="email" class="form-control" id="inputEmail4" name="email" value="<%=root.getEmail() %>">
                      </div>

                    <div class="col-12">
                        <p>Add New Password</p>
                            <hr class="my-4">
                      <label for="curruntpass" class="form-label">Current  Password</label>
                      <input type="password" class="form-control" id="curruntpass" onchange="checkPassword(event)">
						<div id="passerror"  class="alert alert-danger pt-1 pb-1" role="alert" style="visibility: hidden;">Current Password Wrong </div>
                      <label for="newpass" class="form-label">New Password</label>
                      <input type="password" class="form-control" id="newpass" placeholder="" name="newpass" disabled required>

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



<script>
//check password and confirm password match
function checkPassword(event)
{
    var pass = document.getElementById("curruntpass").value;
    var Cpass = document.getElementById("newpass");
	let curruntPassword ="<%=root.getPassword()%>";
   

    if(pass !== "" )
    
    {

        
    if (pass !== curruntPassword){

        event.preventDefault();
        Cpass.disabled = true;
        document.getElementById("passerror").style.visibility = "visible";
        
    
        return false;
    }
    else if(pass === curruntPassword) {
      
       
    	Cpass.disabled = false;
    	document.getElementById("passerror").style.visibility = "hidden";
        
    }
}

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