<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  
  <link rel="stylesheet" href="css/style.css">
  
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <!-- JSTL Core -->
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
</head>
<body>



<!--Start Navbar  -->

<nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="/E_commerce_springmvc/product"><i class="fa-solid fa-cart-shopping"></i> Ecom Store</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/E_commerce_springmvc/index.jsp"><i class="fa-solid fa-house"></i> Home</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/E_commerce_springmvc/product">Product</a>
        </li>

        
       
      </ul>
     
       <ul class="navbar-nav ms-auto mb-2 mb-lg-0"><!-- ms for end -->
       
        <c:set var="sesemail" value="${sesemail}"></c:set>
	
       
        
         
		<c:if test="${empty sesemail}">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/E_commerce_springmvc/login"><i class="fa-solid fa-right-to-bracket"></i>LOGIN</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/E_commerce_springmvc/register">REGISTER</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/E_commerce_springmvc/adminLogin">ADMIN</a>
        </li>
        
       </c:if>
	
	    
		<c:if test="${not empty sesemail}">
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/E_commerce_springmvc/cart"><i class="fa-solid fa-right-to-bracket"></i>Cart</a>
        </li>
        
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href=""><i class="fa-solid fa-right-to-bracket"></i>Orders</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/E_commerce_springmvc/logout">Logout</a>
        </li>
     </c:if>
       
      </ul>
    </div>
  </div>
</nav>

<!--End Navbar  -->


 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>