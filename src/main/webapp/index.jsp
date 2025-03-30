<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
  <jsp:include page="/WEB-INF/view/base.jsp" /> 
  
  <section>
<!-- Slider start -->
<div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
    <img src="img/ecom3.jpg" class="d-block w-100" alt="..." height="350px">

      <div class="carousel-caption d-none d-md-block">
        <h5>E-commerce</h5>
        <p>All Product</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="img/ecom2.jpg" class="d-block w-100" alt="..." height="350px">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="img/ecom1.jpg" class="d-block w-100" alt="..." height="350px">
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

<!-- Slider end -->

<!-- category start -->

<div class="container">

<div class="row">

<p class="text-center fs-4">Category</p>
<div class="col-md-2">

<div class="card rounded-circle shadow-sm p-3 mb-5 bg-body-tertiary rounded">

<div class="card-body text-center">
<img src="img/category_img/appli.jpg" width="65%" height="140px">
<p>Electronics</p>
</div>

</div>

</div>

<div class="col-md-2">

<div class="card rounded-circle shadow-sm p-3 mb-5 bg-body-tertiary rounded">

<div class="card-body text-center">
<img src="img/category_img/pant.jpg" width="65%" height="140px">
<p>Beauty</p>
</div>

</div>

</div>

<div class="col-md-2">

<div class="card rounded-circle shadow-sm p-3 mb-5 bg-body-tertiary rounded">

<div class="card-body text-center">
<img src="img/category_img/pant.jpg" width="65%" height="140px">
<p>Clothes</p>
</div>

</div>

</div>

<div class="col-md-2">

<div class="card rounded-circle shadow-sm p-3 mb-5 bg-body-tertiary rounded">

<div class="card-body text-center">
<img src="img/category_img/laptop.jpg" width="65%" height="140px">
<p>Laptop</p>
</div>

</div>

</div>

<div class="col-md-2">

<div class="card rounded-circle shadow-sm p-3 mb-5 bg-body-tertiary rounded">

<div class="card-body text-center">
<img src="img/category_img/mobile.png" width="65%" height="140px">
<p>Mobile</p>
</div>

</div>

</div>

<div class="col-md-2">

<div class="card rounded-circle shadow-sm p-3 mb-5 bg-body-tertiary rounded">

<div class="card-body text-center">
<img src="img/category_img/groccery.jpg" width="65%" height="140px">
<p>Grocery</p>
</div>

</div>

</div>

</div>
</div>

<!-- category end -->


<!-- Start Latest Product Module -->

<div class="container-fluid bg-light p-3">

<div class="row">

<p class="text-center fs-4">Latest Product</p>

<div class="col-md-3 ">

<div class="card shadow-sm p-3 mb-5 bg-body-tertiary rounded">

<div class="card-body text-center">
<img src="img/product_img/oneplus.jpg" width="65%" height="140px">
<p class="text-center">Mobiles</p>
</div>

</div>

</div>

<div class="col-md-3">

<div class="card shadow-sm p-3 mb-5 bg-body-tertiary rounded">

<div class="card-body text-center">
<img src="img/product_img/laptop1.jpg" width="65%" height="140px">
<p class="text-center">Laptop</p>
</div>

</div>

</div>

<div class="col-md-3">

<div class="card shadow-sm p-3 mb-5 bg-body-tertiary rounded">

<div class="card-body text-center">
<img src="img/product_img/tv2.jpg" width="65%" height="140px">
<p class="text-center">Smart Tv</p>
</div>

</div>

</div>

<div class="col-md-3">

<div class="card shadow-sm p-3 mb-5 bg-body-tertiary rounded">

<div class="card-body text-center">
<img src="img/product_img/wash1.jpeg" width="65%" height="140px">
<p class="text-center">Washing Machine</p>
</div>

</div>

</div>




</div>

</div>

<!-- End Latest Product Module -->

 <jsp:include page="/WEB-INF/view/footer.jsp" /> 

</section>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>