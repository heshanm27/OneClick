
     <nav class="justify-content-center navbar bg-dark " style="height: 250px; width: 100%;" >
   
        <a class="navbarbrand "><img src="<%=request.getContextPath()%>/img/logo.png" class="me-5" id="logo" style="border-radius: 50%; left: 500px;"></a>
        
        <h1 class="justify-content-center me-5" style="color: white;">One click</h1>

        <ul class="nav ms-5" >
            <li class="nav-item bg-light" >
              <a class="nav-link active" aria-current="page" href="index.jsp"><span><i class="material-icons">home</i>Home</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Sport Item</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Electronics"  >Electronic Accessories</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"  >Toys</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"  >Toys</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"  >Toys</a>
              </li>
          </ul>
   
       <div style="right:500px;">   
             <a class="btn btn-primary" href="" role="button"></span><i class="material-icons">shopping_cart</i></span>Cart</a>
            <%if(root != null){ %>
            <a class="btn btn-primary" href="LogOut" role="button"><span style="padding-right: 15px" ><i class="material-icons">logout</i></span>Log Out</a>
        	        <a class="btn btn-primary" href="Account.jsp" role="button"><span style="padding-right: 15px" ><i class="material-icons">account_circle</i></span><% out.println(root.getName());%></a>	
        
        		<%}else{ %>
        		 <a class="btn btn-primary" href="LoginCreate.jsp" role="button"><span style="padding-right: 15px" ><i class="material-icons">login</i></span>Log In</a>
        		<%} %>
        </div> 
        </div>
    </nav>