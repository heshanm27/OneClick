<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.Page.*"%>
           <%@page import="java.util.*"%>
    <%@page import="items.*"%>
    <%@page import="java.sql.Blob"%>
     <%@page import="com.Seller.*"%>
      <%@page import="com.Update.*"%>
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
 
 String Cat = request.getParameter("Cat");
	
   int sid =root1.getSellerID();
   
List<GetDetailsClass> result = GetDataDBUtill.getData(Cat,sid);

    %>
    

<%@include file="/includes/navbar.jsp"%>
   



<div class="container-fluid align-self-center mt-5 mb-5 ">

    <div class="row ">

      
        <table class="table table-dark table-hover">

            <tr>
                <th>Item Name</th>
                <th>Title</th>
                <th>Discription</th>
                <th>Price</th>
                <th>Image1</th>
                <th>Image2</th>
                <th>Image3</th>
                <th></th>
                <th></th>

              </tr>
<% 
  for(Electronics items:result){
%>
              <tr>
                <td><%=items.getItemName() %></td>
                <td><%=items.getTitle() %></td>
                <td><%=items.getItemDetails() %></td>
             
                    <td><%=items.getPrice() %></td>
                <td><img src="data:image/jpg;base64,<%=items.getImage1()%>" style="width: 75%; height: 25%;"></td>
                <td><img src="data:image/jpg;base64,<%=items.getImage2()%>" style="width: 75%; height: 25%;"></td>
                <td><img src="data:image/jpg;base64,<%=items.getImage3()%>" style="width: 75%; height: 25%;"></td>
                <td><button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#s<%=items.getItemID()%>">Update</button></td>
                <td><a class="btn btn-danger" href="#" role="button">Delete</a></td>
              </tr>





      <div class="modal fade" id="s<%=items.getItemID() %>"  data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header text-center">
              <h5 class="modal-title" id="staticBackdropLabel">Update Items</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              
    <form action="ElectronicInsert" method="post"  enctype="multipart/form-data" class="row g-3" >
        <div class="col-12">
          <label for="inputEmail4" class="form-label">ItemName</label>
          <input type="text" class="form-control" id="inputEmail4" name="Name" placeholder="<%=items.getItemName() %>">
        </div>
        
         <div class="col-12">
          <label for="inputEmail4" class="form-label">Title</label>
          <input type="text" class="form-control" id="inputEmail4" name="title" placeholder="<%=items.getTitle() %>">
        </div>
       

        <div class="col-12">
          <label for="inputAddress2" class="form-label">Price</label>
          <input type="text" class="form-control" id="inputAddress2" placeholder="<%=items.getPrice() %>" name="prixe">
        </div>
        <div class="input mb-5">
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Example textarea</label>
                <textarea cols="100" rows="10"  placeholder=""></textarea>
            
          </div>


      <div class="col-12">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck">
            <label class="form-check-label" for="gridCheck">
             Agree For Conditions
            </label>
          </div>
        </div>
        <div class="row">
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
        </div> 
        <div class="row">
        <div class="col-6 mt-5 text-center">
          <button type="submit" class="btn btn-primary">Update</button>
        </div>
        <div class="col-6 ">
            <button type="button" class="btn btn-secondary align-content-end mt-5" data-bs-dismiss="modal">Close</button>
          </div>
    </div>
      </form>

            </div>
            
          </div>
        </div>
      </div>





              <%} %>



        </table>
      

        </div>
    </div>







      
      
<%@include file="/includes/Footer.jsp"%>
</body>
</html>
