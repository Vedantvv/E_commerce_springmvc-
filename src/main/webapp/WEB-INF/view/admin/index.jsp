<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <jsp:include page="/WEB-INF/view/base.jsp" /> 
 
 <section>
 
 <div class="container p-5">
 <p class="text-center fs-3 mt-2">Admin Dashboard</p>
 <div class="row p-5">
 
 <div class="col-md-4 mt-2">
 <a href="add_product" class="text-decoration-none">
 <div class="card card-sh">
 
 <div class="card-body text-center text-primary">
 <i class="fa-solid fa-square-plus fa-3x text-primary"></i>
 <h4>Add Product</h4>
 
 </div>
 
 </div>
 </a>
 </div>
 
 <div class="col-md-4 mt-2">
 <a href="category" class="text-decoration-none">
 <div class="card card-sh">
 
 <div class="card-body text-center text-warning">
 <i class="fa-solid fa-list fa-3x "></i>
 <h4>Category</h4>
 
 </div>
 
 </div>
 </a>
 </div>
 
 <div class="col-md-4 mt-2">
 <a href="products" class="text-decoration-none">
 <div class="card card-sh">
 
 <div class="card-body text-center text-success">
 <i class="fa-solid fa-table-list fa-3x "></i>
 <h4>View Product</h4>
 
 </div>
 
 </div>
 </a>
 </div>
 
 <div class="col-md-4 mt-3">
 <a href="#" class="text-decoration-none">
 <div class="card card-sh">
 
 <div class="card-body text-center text-warning">
 <i class="fa-solid fa-box-open fa-3x"></i>
 <h4>Orders</h4>
 
 </div>
 
 </div>
 </a>
 </div>
 
 <div class="col-md-4 mt-3">
 <a href="#" class="text-decoration-none">
 <div class="card card-sh">
 
 <div class="card-body text-center text-primary">
 <i class="fa-solid fa-circle-user fa-3x text-primary"></i>
 <h4>User</h4>
 
 </div>
 
 </div>
 </a>
 </div>
 
 <div class="col-md-4 mt-3">
 <a href="addAdmin" class="text-decoration-none">
 <div class="card card-sh">
 
 <div class="card-body text-center text-primary">
 <i class="fa-solid fa-user-plus fa-3x "></i>
 <h4>Add Admin</h4>
 
 </div>
 
 </div>
 </a>
 </div>
 
 </div>
 </div>
 
 
 </section>

</body>
</html>