    <%@page import="items.*"%>
    <%@page import="java.sql.Blob"%>
     <%@page import="com.Seller.*"%>
      <%@page import="com.Page.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>OneClick</title>
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/img/logo.png"></title>

    <!-- Link bootstrap -->
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
      
    <!-- tiny slider -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.3/tiny-slider.css">
      
      <!-- Font -->
         <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@600&display=swap" rel="stylesheet">
      
    <!--Google Matrial ICon-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">



      <style>
        .container {
  max-width: 960px;
}

        .bd-placeholder-img {
          font-size: 1.125rem;
          text-anchor: middle;
          -webkit-user-select: none;
          -moz-user-select: none;
          user-select: none;
        }
  
        @media (min-width: 768px) {
          .bd-placeholder-img-lg {
            font-size: 3.5rem;
          }
        }
      </style>
   
</head>
<%
Seller root1 = (Seller) request.getSession().getAttribute("root1");
User root = (User) request.getSession().getAttribute("root");
if(root1 == null && root == null){    
response.sendRedirect("LoginType.jsp");

}

%>
<body class="bg-light">

     <div class="btn-group mt-5 ms-4" role="group" aria-label="Basic example">
  <button type="button" onclick="goBack()" class="btn  align-content-end" style="float: left"><span><i class="material-icons">arrow_back</i>Back</span></button>
  
</div>
  <div class="container">
    <main class="">
  
      <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="<%=request.getContextPath()%>/img/logo.png" alt="" width="150" height="150">
        <h2>Checkout form</h2>
        <p class="lead">Buy IT &Enjoy</p>
      </div>
   <div class="row g-5">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">Your Item</span>
          
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Product name</h6>
              <small class="text-muted"><%=request.getParameter("itemName") %></small>
            </div>
            <span class="text-muted"><%=request.getParameter("normalPrice") %></span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Quantity</h6>
            </div>
            <span class="text-muted"><%=request.getParameter("qty") %></span>
          </li>
         
          
          <li class="list-group-item d-flex justify-content-between">
            <span>Total (USD)</span>
            <strong><%=request.getParameter("tot") %></strong>
          </li>
        </ul>
      </div>
   
        <div class="col-md-10 col-lg-8 py-3">
          <h4 class="mb-3">Billing Details</h4>
          <form class="needs-validation" action="Pay" method="post" novalidate>
            <div class="row g-3">
              <div class="col-sm-6">
                <label for="firstName" class="form-label">First name</label>
                <input type="text" class="form-control" id="firstName" placeholder="" name="fname" required>
                <div class="invalid-feedback">
                  Valid first name is required.
                </div>
              </div>
  
              <div class="col-sm-6">
                <label for="lastName" class="form-label">Last name</label>
                <input type="text" class="form-control" id="lastName" name="lname" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Valid last name is required.
                </div>
                  <input type="hidden" id="tot" name="qty" value="<%=request.getParameter("qty") %>">
                    <input type="hidden" id="tot" name="tot" value="<%=request.getParameter("tot") %>">
                    <input type="hidden" id="tot" name="itemID" value="<%=request.getParameter("mID") %>">
                    <input type="hidden" id="tot" name="cat" value="<%=request.getParameter("cat") %>">
              </div>
  
              
  
              <div class="col-12">
                <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
                <input type="email" class="form-control" id="email" placeholder="you@example.com" name="email">
                <div class="invalid-feedback">
                  Please enter a valid email address for shipping updates.
                </div>
              </div>
  
              <div class="col-12">
                <label for="address" class="form-label">Address</label>
                <input type="text" class="form-control" id="address" placeholder="1234 Main St" required name="address">
                <div class="invalid-feedback">
                  Please enter your shipping address.
                </div>
              </div>
  
           
  
              <div class="col-md-5">
                <label for="Country" class="form-label">Country</label>
                <input type="text" class="form-control" id="Country" placeholder="" name="country"required >
                <div class="invalid-feedback">
                  Please select a valid country.
                </div>
              </div>
  
              <div class="col-md-4">
                <label for="State" class="form-label">State</label>
                <input type="text" class="form-control" id="State" placeholder=""name="State"  required>
                <div class="invalid-feedback">
                  Please provide a valid state.
                </div>
              </div>
  
              <div class="col-md-3">
                <label for="Zip" class="form-label">ZipCode</label>
                <input type="text" class="form-control" id="Zip" name="zip"placeholder="" required>
                <div class="invalid-feedback">
                  Zip code required.
                </div>
              </div>
            </div>

            <hr class="my-4">
  
            <h4 class="mb-3">Payment</h4>
  
            <div class="my-3">
              <div class="form-check">
                <input id="credit"  type="radio" class="form-check-input" name="ptype" value="CreditCard"checked required>
                <label class="form-check-label" for="credit">Credit card</label>
              </div>
              <div class="form-check">
                <input id="debit"  type="radio" class="form-check-input" name="ptype" value="debitCard" required>
                <label class="form-check-label" for="debit">Debit card</label>
              </div>
            </div>
  
            <div class="row gy-3">
              <div class="col-md-6">
                <label for="cc-name" class="form-label">Name on card</label>
                <input type="text" name="cardname"class="form-control" id="cc-name" placeholder="" required>
                <small class="text-muted">Full name as displayed on card</small>
                <div class="invalid-feedback">
                  Name on card is required
                </div>
              </div>
  
              <div class="col-md-6">
                <label for="cc-number" class="form-label">Credit card number</label>
                <input type="text" name="cardNo"class="form-control" id="cc-number" placeholder="" required>
                <div class="invalid-feedback">
                  Credit card number is required
                </div>
              </div>
  
              <div class="col-md-3">
                <label for="cc-expiration" class="form-label">Expiration</label>
                <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                <div class="invalid-feedback">
                  Expiration date required
                </div>
              </div>
  
              <div class="col-md-3">
                <label for="cc-cvv" class="form-label">CVV</label>
                <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                <div class="invalid-feedback">
                  Security code required
                </div>
              </div>
            </div>
  
            <hr class="my-4">
  
            <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to checkout</button>
          </form>
        </div>
      </div>
    </main>
  
    <footer class="my-5 pt-5 text-muted text-center text-small">
      <p class="mb-1">&copy; 2021 OneClick</p>

    </footer>
  </div>
  
  
      <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
  
        <script>
function goBack() {
  window.history.back();
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
    </body>
</html>