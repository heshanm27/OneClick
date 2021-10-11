<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="com.Page.*"%>
           <%@page import="java.util.ArrayList"%>
    <%@page import="items.*"%>
    <%@page import="java.sql.Blob"%>
        <%@page import="com.Page.*"%>
         <%@page import="com.Seller.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="/includes/head.jsp"%>
</head>
<body>
 <%
 Seller root1 = (Seller) request.getSession().getAttribute("root1");
 
     User root = (User) request.getSession().getAttribute("root");
 if(root == null){    
	 response.sendRedirect("LoginCreate.jsp");
 	
 }

    %>
    
<%@include file="/includes/navbar.jsp"%>
   



                <form class="row g-3">
                   <table class="table table-dark table-hover">
                   
  							<tr>
  							<th class="table-dark">itemId</th>
  							<th class="table-dark">Item Name</th>
  							<th class="table-dark">item Details</th>
  							<th class="table-dark">Item Price</th>
  							<th class="table-dark">Item Image</th>
  							</tr>
                   
   <%

    
  	ArrayList<Electronics> slide = (ArrayList<Electronics>) request.getAttribute("item");

  
  for(Electronics sli:slide){
  
  
	  
  
  %>
  							<tr>
  							<td class="table-dark"><%out.println(sli.getItemID()); %></td>
	 						<td class="table-dark"><%out.println(sli.getItemName()); %></td>
 							<td class="table-dark"><%out.println(sli.getItemDetails()); %></td>
 							<td class="table-dark"><%out.println(sli.getPrice()); %></td>
 							<!-- <td class="table-dark"><img src="data:image/jpg;base64,<%//out.println(sli.getImage2());%>"></td> -->
 							<td class="table-dark"><a class="btn btn-primary" href="Account.jsp" role="button"><span style="padding-right: 15px" ><i class="material-icons">account_circle</i></span>Delete-:<% out.println(sli.getItemID());%></a></td>
								</tr>
								
								
				<%} %>
							</table>
                  </form>

</body>
</html>