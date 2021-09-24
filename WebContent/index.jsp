<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="true" %>
    <%@page import="com.Page.*"%>
     <%@page import="com.index.*"%>
     <%@page import="items.*"%>
         <%@page import="java.util.*"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@page import="com.Seller.*"%>
  
    <%
    Seller root1 = (Seller) request.getSession().getAttribute("root1");
     User root = (User) request.getSession().getAttribute("root");
    
    if(root != null){    
    	
    	
    }
    else{

    }
    
    List<Electronics> Et=SliderDbutill.findElectronic();
    List<Sport> Sport=SliderDbutill.FindSport();
    List<Cloths> Clo=SliderDbutill.FindCloths();
    List<Toys> toy=SliderDbutill.FindToy();
    
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<style>
@media only screen and (min-width : 1200px) {
  .carousel-caption
  {
    top: 46%;
  }
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="/includes/head.jsp"%>
</head>
<body>
<%@include file="/includes/navbar.jsp"%>






<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="<%=request.getContextPath()%>/img/slider/main1.png" class="d-block w-100" alt="..." style="posi">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
         <img src="<%=request.getContextPath()%>/img/slider/toy.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
              <img src="<%=request.getContextPath()%>/img/slider/sport.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
     <div class="carousel-item">
              <img src="<%=request.getContextPath()%>/img/slider/cloth.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
    
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!--Clothes Section  -->
<section id="itemrow" class="bg-light mt-5"> 
<div class="row  align-item justify-content-center ">

    <div class="justify-content-lg-end col-8 col-lg-4 col-xl-3 mt-5 ms-5 col-sm-2">
            <div class="text-start">
            <h1>Electronics</h1>
            <p class="text text-muted mt-5" width="50px">
                Electronics Definition – Electronics is the branch of science that deals with the study of flow and control of electrons (electricity) 
            </p>
            <button type="button" class="btn btn-outline-dark mt-5">Shop Now</button>
            </div>
    </div>

           <!--card 1-->
    <div class="justify-content-lg-end col-4 col-lg mt-5 ms-lg-2 me-3">
      <div class="row  ">
    
          <%

   


    
  for(Cloths items:Clo){
  
 
  
  %>
    <div class="col">
        <div class="card me-5 ms-5 p-1 mb-5">
            <img  class="card-img-top" src="data:image/jpg;base64,<%=items.getImage1()%>" width="25%" height="25%"> 
               <div class="card-body">
          	<h5 class="card-title text-break fs-5"><%=items.getItemName() %></h5>
          <p class="card-text">$<%=items.getPrice() %></p>
         <a class="btn btn-outline-dark mt-2" href="Orders?ID=<%=items.getItemID() %>&cat=clothes" role="button" style="font-size: 10px; width: 100px;">Buy Now</a>	
        </div>
    </div>
    
    </div>
   <%} %> 
</div>


</div>
</div>
</section>

<!--Electronic Section  -->
<section id="itemrow" class="bg-light mt-5"> 
<div class="row  align-item justify-content-center ">

    <div class="justify-content-lg-end col-8 col-lg-4 col-xl-3 mt-5 ms-5 col-sm-2">
            <div class="text-start">
            <h1>Electronics</h1>
            <p class="text text-muted mt-5" width="50px">
                Electronics Definition – Electronics is the branch of science that deals with the study of flow and control of electrons (electricity) 
            </p>
            <button type="button" class="btn btn-outline-dark mt-5">Shop Now</button>
            </div>
    </div>

           <!--card 1-->
    <div class="justify-content-lg-end col-4 col-lg mt-5 ms-lg-2 me-3">
      <div class="row  ">
    
          <%

   


    
  for(Electronics items:Et){
  
 
  
  %>
    <div class="col">
        <div class="card me-5 ms-5 p-1 mb-5">
            <img  class="card-img-top" src="data:image/jpg;base64,<%=items.getImage1()%>" width="25%" height="25%"> 
               <div class="card-body">
          	<h5 class="card-title text-break fs-5"><%=items.getItemName() %></h5>
          <p class="card-text">$<%=items.getPrice() %></p>
         <a class="btn btn-outline-dark mt-2" href="Orders?ID=<%=items.getItemID() %>&cat=electronics" role="button" style="font-size: 10px; width: 100px;">Buy Now</a>	
        </div>
    </div>
    
    </div>
   <%} %> 
</div>


</div>
</div>
</section>

<!--Sport Section  -->
<section id="itemrow" class="bg-light mt-5"> 
<div class="row  align-item justify-content-center ">

    <div class="justify-content-lg-end col-8 col-lg-4 col-xl-3 mt-5 ms-5 col-sm-2">
            <div class="text-start">
            <h1>Electronics</h1>
            <p class="text text-muted mt-5" width="50px">
                Electronics Definition – Electronics is the branch of science that deals with the study of flow and control of electrons (electricity) 
            </p>
            <button type="button" class="btn btn-outline-dark mt-5">Shop Now</button>
            </div>
    </div>

           <!--card 1-->
    <div class="justify-content-lg-end col-4 col-lg mt-5 ms-lg-2 me-3">
      <div class="row  ">
    
          <%

   


    
  for(Sport items:Sport){
  
 
  
  %>
    <div class="col">
        <div class="card me-5 ms-5 p-1 mb-5">
            <img  class="card-img-top" src="data:image/jpg;base64,<%=items.getImage1()%>" width="25%" height="25%"> 
               <div class="card-body">
          	<h5 class="card-title text-break fs-5"><%=items.getItemName() %></h5>
          <p class="card-text">$<%=items.getPrice() %></p>
         <a class="btn btn-outline-dark mt-2" href="Orders?ID=<%=items.getItemID() %>&cat=sports" role="button" style="font-size: 10px; width: 100px;">Buy Now</a>	
        </div>
    </div>
    
    </div>
   <%} %> 
</div>


</div>
</div>
</section>
    



<!--Toy Section  -->
<section id="itemrow" class="bg-light mt-5"> 
<div class="row  align-item justify-content-center ">

    <div class="justify-content-lg-end col-8 col-lg-4 col-xl-3 mt-5 ms-5 col-sm-2">
            <div class="text-start">
            <h1>Electronics</h1>
            <p class="text text-muted mt-5" width="50px">
                Electronics Definition – Electronics is the branch of science that deals with the study of flow and control of electrons (electricity) 
            </p>
            <button type="button" class="btn btn-outline-dark mt-5">Shop Now</button>
            </div>
    </div>

           <!--card 1-->
    <div class="justify-content-lg-end col-4 col-lg mt-5 ms-lg-2 me-3">
      <div class="row  ">
    
          <%

   


    
  for(Toys items:toy){
  
 
  
  %>
    <div class="col">
        <div class="card me-5 ms-5 p-1 mb-5">
            <img  class="card-img-top" src="data:image/jpg;base64,<%=items.getImage1()%>" width="25%" height="25%"> 
               <div class="card-body">
          	<h5 class="card-title text-break fs-5"><%=items.getItemName() %></h5>
          <p class="card-text">$<%=items.getPrice() %></p>
         <a class="btn btn-outline-dark mt-2" href="Orders?ID=<%=items.getItemID() %>&cat=sports" role="button" style="font-size: 10px; width: 100px;">Buy Now</a>	
        </div>
    </div>
    
    </div>
   <%} %> 
</div>


</div>
</div>
</section>
    

<%@include file="/includes/Footer.jsp"%>
</html>