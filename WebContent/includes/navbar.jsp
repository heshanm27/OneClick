
  
     <nav class="justify-content-center navbar bg-dark " style="height: 250px; width: 100%;" >
   
        <a class="navbarbrand " href="index.jsp"><img src="<%=request.getContextPath()%>/img/logo.png" class="me-5" id="logo" style="border-radius: 50%; left: 500px;"></a>
        
        <h1 class="justify-content-center me-5" style="color: white;">One click</h1>

        <ul class="nav ms-5" >
            <li class="nav-item bg-light" >
              <a class="nav-link active" aria-current="page" href="index.jsp"><span><i class="material-icons">home</i>Home</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Clothes">Clothes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Electronics"  >Electronic Accessories</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Sport">Sport</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Toys"  >Toys</a>
              </li>
             
          </ul>
   
       <div style="right:500px;">   
          
 



            <%if(root != null){ %>
             <div class="dropdown">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"><i class="material-icons">account_circle</i></span><% out.println(root.getName());%></a>	</button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                  <li><a class="dropdown-item" href="UserAccount.jsp" role="button" style="font-size: 10px;" ><span style="padding-right: 15px" ><i class="material-icons">settings</i></span>Account Setting</a></li>
              <li><a class="dropdown-item" href="LogOut" role="button"><span style="padding-right: 15px" ><i class="material-icons">logout</i></span>Log Out</a></li>
        	       </ul>
        </div>
        		<%}
            else if(root1 != null){%>
             <div class="dropdown">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"><i class="material-icons">account_circle</i></span><% out.println(root1.getName());%></a>	</button>
             <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
        	       <li> <a class="dropdown-item" href="SellerAccount.jsp" role="button" style="font-size: 10px;"><span style="padding-right: 15px" ><i class="material-icons">settings</i></span>Account Setting</a></li>
               	       <li><a class="dropdown-item" href="LogOut" role="button"><span style="padding-right: 15px" ><i class="material-icons">logout</i></span>Log Out</a></li>
               	       </ul>
        </div>
            
            <%}else{%>
        		 <a class="btn btn-primary" href="LoginType.jsp" role="button">Log In<span style="padding-left: 15px" ><i class="material-icons">login</i></span></a>
        		<%} %>
        		 

        </div> 
        </div>
    </nav>