<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.Page.*"%>
           <%@page import="java.util.*"%>
    <%@page import="items.*"%>
    <%@page import="java.sql.Blob"%>
     <%@page import="com.Seller.*"%>
      <%@page import="com.Update.*"%>
      <%@page import="javax.sql.rowset.serial.SerialBlob"%>
     <%@page  import="java.awt.image.BufferedImage"%>
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

<%  String name = (String) request.getAttribute("done");
String status = (String) request.getAttribute("Ok");

if(name =="isDone"){
 %>
  
  <div class="alert alert-success" role="alert">
Successfully Item Has been deleted
</div>
  
    <%}else if(status == "isOk" ){ %>
      <div class="alert alert-success" role="alert">
Successfully Item Has been Updated
</div>
    
    
    <%} %>

    <div class="row ">

      
        <table class="table table-dark table-hover " style="margin-bottom:200px;">

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

	if(result.isEmpty() != true){
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
                <td><a class="btn btn-danger" href="Delete?ID=<%=items.getItemID() %>&Cat=<%=request.getParameter("Cat") %>" role="button">Delete</a></td>
              </tr>





      <div class="modal fade" id="s<%=items.getItemID() %>"  data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header text-center">
              <h5 class="modal-title" id="staticBackdropLabel">Update Items</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              
    <form action="Updated" method="post"  enctype="multipart/form-data" class="row g-3" >
        <div class="col-12">
          <label for="inputEmail4" class="form-label">ItemName</label>
          <input type="text" class="form-control" id="inputEmail4" name="Name" placeholder="<%=items.getItemName() %>" value="<%=items.getItemName() %>">
        </div>
        
         <div class="col-12">
          <label for="inputEmail4" class="form-label">Title</label>
          <input type="text" class="form-control" id="inputEmail4" name="title" placeholder="<%=items.getTitle() %>" value="<%=items.getTitle() %>">
        </div>
       

        <div class="col-12">
          <label for="inputAddress2" class="form-label">Price</label>
          <input type="text" class="form-control" id="inputAddress2" placeholder="<%=items.getPrice() %>" name="prixe" value="<%=items.getPrice() %>">
             <input type="hidden" class="form-control" id="inputAddress2" placeholder="<%=items.getPrice() %>" name="ID" value="<%=items.getItemID()%>">
             <input type="hidden" class="form-control" id="inputAddress2" placeholder="<%=items.getPrice() %>" name="Cat" value="<%=request.getParameter("Cat")%>">
        </div>
        <div class="input mb-5">
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Item Description</label>
                <textarea cols="100" rows="10"  name="description"><%=items.getItemDetails() %></textarea>
            
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
            <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" name="image1"/> 
         </div>
         <div class="photo-input justify-content-center col-4">
            <p>Choose Image 2</p>
            <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" name="image2"/> 
         </div>
         <div class="photo-input col-4">
            <p>Choose Image 3</p>
            <input type="file" id="loadFile" onchange="console.log(this.files[0].name);" name="image3"/> 
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





              <%}}else{ %>


	<tr>
	<td colspan="9" class="text-center"><h1>No Items Exist</h1></td>
     
	</tr>

<%} %>
        </table>
      

        </div>
    </div>







      
      
<%@include file="/includes/Footer.jsp"%>
</body>
</html>
