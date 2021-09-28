<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="true" %>
    <%@page import="com.Page.*"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page import="items.*"%>
    <%@page import="java.util.ArrayList"%>
     <%@page import="java.sql.Blob"%>
     <%@page import="java.io.OutputStream"%>
      <%@page import="com.Seller.*"%>
      <%@page import="com.Order.*"%>
    <%
    Seller root1 = (Seller) request.getSession().getAttribute("root1");
     User root = (User) request.getSession().getAttribute("root");
    
    if(root != null){    
    	
    	
    }
    else{
    	
    }
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="/includes/head.jsp"%>
</head>
<body>
<%@include file="/includes/navbar.jsp"%>


      <% 
  	Order item = (Order) request.getAttribute("Details");
      
%>

<div class="container-sm align-self-center mt-5 mb-5 bg-light " >

    <div class="row  justify-content-center  ">

    <div class="col-6 bg-light mt-5 " style="height: 600px;">

      <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="data:image/jpg;base64,<%=item.getImage1()%>" class="h-100 w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="data:image/jpg;base64,<%=item.getImage2()%>" class="h-auto w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="data:image/jpg;base64,<%=item.getImage3()%>" class=" h-100 w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev " type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bg-black" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next " type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
          <span class="carousel-control-next-icon bg-black" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>

    </div>
    <div class="col-6 bg-light p-3 mt-5" style="height: 500px;">
      <h1><%=item.getTitle() %></h1>
      <form class="mt-5 text-center" action="Pay.jsp"  method="get">
        <div class="input-group mb-3 w-50">
          <span class="input-group-text">Quantity</span>
          <input type="number" id="qty" class="form-control"  min="1"  value="1" name="qty" id="qty" onchange="pricecal()">
          <input type="hidden" id="tot" name="tot" value="<%=item.getPrice() %>">
            <input type="hidden" id="iid" name="mID" value="<%=item.getItemID() %>">
              <input type="hidden" id="cat" name="cat" value="<%=request.getParameter("cat") %>">
               <input type="hidden" id="itemname" name="itemName" value="<%=item.getItemName()%>">
                <input type="hidden" id="normalPrice" name="normalPrice" value="<%=item.getPrice()%>">
          <span class="input-group-text"></span>
        </div>
      
      <div class="col-12 bg-secondary align-content-center text-white text-center p-5"   style="height: 200px;" > 
       <div>
    <p class="fs-3 text"style="display:inline-flex;">Price -:$</p>
    <p class="fs-3 text" id="Price" style="display:inline-flex;">  <%=item.getPrice() %></p>
  </div>
        <button class="w-50 btn btn-primary btn-lg" type="submit">Continue to checkout</button>
      </div>
    </div>
  </form>
    <div class="col-12 bg-light text-wrap p-2 mt-5 mb-5" style="height: 600px; color: white;">

    <h1 class="text-black">Item specifics</h1>
      <p class="text-black">
       <%=item.getItemDetails() %>
       
       </p>
    </div>


        </div>
    </div>


     


<script>
    function pricecal(){

var qty = document.getElementById("qty").value;
let price=  <%=item.getPrice()%>;
let total
let p=parseInt(price);
let fixprice=p;
if(p <= 1000000){
 total=(qty * p);
 document.getElementById("Price").innerHTML = total;
 document.getElementById("tot").value = total;
}else{
  exit();
}


}
</script>





<%@include file="/includes/Footer.jsp"%>
</body>
</html>