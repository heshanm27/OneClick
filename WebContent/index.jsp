
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
   .carousel-item{
  height: 32rem;
  color: white;
float: left !important;
 

}
@media only screen and (min-width : 1200px) {
  .carousel-caption
  {
    top: 46%;
    right: 60%;
  }
  #toy{
    left: 50%;
    right: 0;
  }
}


</style>
<meta charset="ISO-8859-1">
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
              <img src="<%=request.getContextPath()%>/img/slider/Electronic.jpg" class="d-block w-100" alt="..." >
              <div class="carousel-caption d-none d-md-block"  style="right: 60%;">
                <h1>Electronics & Accessories </h1>
                <p>Shop the best of yesterday, today and tomorrow</p>
                <a href="Electronics" class="btn btn-primary btn-lg " tabindex="-1" role="button" aria-disabled="true">Lets Go.</a>
              </div>
            </div>
            <div class="carousel-item" >
              <img src="<%=request.getContextPath()%>/img/slider/toy.jpg" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block" id="toy"style="float: left;" >
                <h1>Toys and Joys</h1>
                <p>From the ages of 1 to 101, toys and games make the perfect gift.</p>
                <a href="Toys" class="btn btn-primary btn-lg " tabindex="-1" role="button" aria-disabled="true">Lets Go.</a>
              </div>
            </div>
            <div class="carousel-item">
              <img src="<%=request.getContextPath()%>/img/slider/sport.jpg" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block" style="right: 60%;">
                <h1>Sporting Goods</h1>
                <p>The best gear for running, skiing, cycling or whatever sport gets your heart pumping</p>
                <a href="Sport" class="btn btn-primary btn-lg " tabindex="-1" role="button" aria-disabled="true">Lets Go.</a>
              </div>
            </div>
             <div class="carousel-item">
              <img src="<%=request.getContextPath()%>/img/slider/cloth.jpg" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block" style="right: 60%;">
                <h1 class="">Fashion That's Made for You</h1>
                <p class="">Renew your look with clothing, shoes and accessories</p>
                <a href="Clothes" class="btn btn-primary btn-lg " tabindex="-1" role="button" aria-disabled="true">Lets Go . </a>
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
<div class="row  align-item justify-content-center " style="margin-right: 0px;">

    <div class="justify-content-lg-end col-8 col-lg-4 col-xl-3 mt-5 ms-5 col-sm-2">
            <div class="text-start">
            <h1>Clothing</h1>
            <p class="text text-muted mt-5" width="50px">
               Great news You're in the right place for clothing. By now you already know that, whatever you are looking for, you're sure to find it on OneClick. We literally have thousands of great products in all product categories. Whether you're looking for high-end labels or cheap, economy bulk purchases, we guarantee that it's here on OneClick
            </p>
              <a class="btn btn-outline-dark mt-5" href="Clothes" role="button" style="font-size: 15px; width: 150px;height: 40px;">Shop Now</a>	
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
         <a class="btn btn-outline-dark mt-2" href="Orders?ID=<%=items.getItemID() %>&cat=clothes" role="button" style="font-size: 15px; width: 100px;">Buy Now</a>	
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
<div class="row  align-item justify-content-center " style="margin-right: 0px;">

    <div class="justify-content-lg-end col-8 col-lg-4 col-xl-3 mt-5 ms-5 col-sm-2">
            <div class="text-start">
            <h1>Electronics</h1>
            <p class="text text-muted mt-5" width="50px">
               From smartphones and laptops to cameras, TVs and video game consoles you can find the hottest electronics on OneClick. Sellers offer a huge selection of brand new products and collector's items, many of which are difficult to find anywhere else. Pair that with competitive pricing and you've got the ultimate online marketplace for electronics.
            </p>
                <a class="btn btn-outline-dark mt-5" href="Electronics" role="button" style="font-size: 15px; width: 150px;height: 40px;">Shop Now</a>
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
         <a class="btn btn-outline-dark mt-2" href="Orders?ID=<%=items.getItemID() %>&cat=electronics" role="button" style="font-size: 15px; width: 100px;">Buy Now</a>	
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
<div class="row  align-item justify-content-center " style="margin-right: 0px;">

    <div class="justify-content-lg-end col-8 col-lg-4 col-xl-3 mt-5 ms-5 col-sm-2">
            <div class="text-start">
            <h1>Sport</h1>
            <p class="text text-muted mt-5" width="50px">
                Great news You're in the right place for Sport Items. By now you already know that, whatever you are looking for, you're sure to find it on OneClick. We literally have thousands of great products in all product categories. Whether you're looking for high-end labels or cheap, economy bulk purchases, we guarantee that it's here on OneClick
            </p>
                <a class="btn btn-outline-dark mt-5" href="Sport" role="button" style="font-size: 15px; width: 150px;height: 40px;">Shop Now</a>
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
         <a class="btn btn-outline-dark mt-2" href="Orders?ID=<%=items.getItemID() %>&cat=toy" role="button" style="font-size: 15px; width: 100px;">Buy Now</a>	
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
<div class="row  align-item justify-content-center " style="margin-right: 0px;">

    <div class="justify-content-lg-end col-8 col-lg-4 col-xl-3 mt-5 ms-5 col-sm-2">
            <div class="text-start">
            <h1>Toy</h1>
            <p class="text text-muted mt-5" width="50px">
                Great news You're in the right place for Toys. By now you already know that, whatever you are looking for, you're sure to find it on OneClick. We literally have thousands of great products in all product categories. Whether you're looking for high-end labels or cheap, economy bulk purchases, we guarantee that it's here on OneClick
            </p>
            <a class="btn btn-outline-dark mt-5" href="Toys" role="button" style="font-size: 15px; width: 150px;height: 40px;">Shop Now</a>
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
         <a class="btn btn-outline-dark mt-2" href="Orders?ID=<%=items.getItemID() %>&cat=toy" role="button" style="font-size: 15px; width: 100px;">Buy Now</a>	
        </div>
    </div>
    
    </div>
   <%} %> 
</div>


</div>
</div>
</section>
    

      
<%@include file="/includes/js.jsp"%>
<%@include file="/includes/Footer.jsp"%>
</html>