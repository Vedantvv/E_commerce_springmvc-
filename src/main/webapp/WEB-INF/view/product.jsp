<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- JSTL Core -->
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 
</head>
<body>
 <jsp:include page="/WEB-INF/view/base.jsp" /> 
<section>
	
		<div class="container-fluid bg-primary p-4 mt-5 ">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<form action="products" method="get">
						<div class="input-group">
							<input type="text" class="form-control" name="ch">
							<button class="btn btn-light text-dark ms-3 col-md-2">
								<i class="fa-solid fa-magnifying-glass"></i> Search
							</button>
						</div>
					</form>
				</div>
			</div>

		</div>

 
		<div class="container-fluid mt-1">
			<div class="row">
			

				<div class="col-md-2 p-0">
				<div class="card shadow-sm p-0 mb-5 bg-body-tertiary rounded">
			<div class="card-body">
				
				<div class="list-group">
     <a href="#" class="list-group-item list-group-item-action active" aria-current="true">Categories</a>
                            <c:forEach var="category" items="${categories}">
                               <a href="product?category=${category.id}" class="list-group-item list-group-item-action">${category.name}</a>
                            </c:forEach>
  
  </div>
 </div>
</div>

	</div>	
	
	<div class="col-md-10">
	
	<div class="card shadow-sm p-3 mb-5 bg-body-tertiary rounded">
	
	<div class="card-body">
	
	<p class="fs-3 text center">Products</p>
	
	<div class="row">
	  <c:forEach var="product" items="${products}">
	<div class="col-md-3">
	<div class="card">
	<div class="card-body text-center">
	
	<img alt="" src="img/product_img/${product.filename}" width="100%" height="150px">
	<p class="fs-5 text-center">${product.title}</p>
	<div class="row text-center">
	<p class="fs-6 fw-bold">
	&#8377;${product.price} <span class="fs-6 text-success">20% off</span></p>
	<a href="view/${product.id}" class="btn btn-primary col-md-6 offset-md-3">View Details</a>
	</div>
	</div>
	
	</div>
	
	</div>
</c:forEach>
	
	
	</div>
	
	</div>
	
	</div>
	
	
	</div>			
	
</div>
</div>
</section>

</body>
</html>