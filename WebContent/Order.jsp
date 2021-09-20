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


<div class="container-sm align-self-center mt-5 mb-5 bg-light " style="width: 50%;">

    <div class="row  justify-content-center  ">

        <form>
            <div class="text-center"><h1>Item Details</h1></div>
            <table class="table table-light">
                  <tr >
                    <td class="align-middle">ItemName</td>
                    <td><%= item.getItemName() %></td>
                  </tr>
                  <tr>
                    <td>ItemPrice</td>
                    <td><%=item.getPrice() %></td>
                  </tr>
                  <tr>
                      <td>Quentity</td>
                    <td><input type="number" value="1" min="1" max="8" style="font-size: 20px;"></td>
                  </tr>
                </tbody>
              </table>

              <div class="text-center">
                <h1 >Deleviry Address</h1>
              </div>
            <div class="mb-3 ">
          
              <label for="exampleInputEmail1" class="form-label">Address</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
              <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
            <div class="mb-3">
              <label for="exampleInputPassword1" class="form-label">Country</label>
              <input type="text" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">ZipCode</label>
                <input type="number" class="form-control" id="exampleInputPassword1">
              </div>
              
            <div class="mb-3 form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>

      

        </div>
    </div>





     


</body>




<%@include file="/includes/Footer.jsp"%>
</html>