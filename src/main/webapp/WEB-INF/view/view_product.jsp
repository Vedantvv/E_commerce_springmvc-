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

<div class="container card-sh" style="margin-top:70px; margin-bottom:100px">



<div class="col-md-12 p-5">
<div class="row">
<div class="col-md-6 text-end">
<img alt="" src="../img/product_img/${product.filename}" width="330px" height="400px">  <!--  ..  -->


</div>

<div class="col-md-6">



						<p class="fs-3">${product.title}</p>
						<p>
							<span class="fw-bold">Description : </span><br>${product.description}
						</p>
						<p>
							<span class="fw-bold"> Product Details: </span> <br> Status
							:
							
								<span class="badge bg-success">Available</span>
							
							
								<span class="badge bg-warning">out of stock</span>
							

							<br> Category:${product.category}<br> Policy : 7
							Days Replacement & Return
						</p>
						<p class="fs-5 fw-bold">
							Price :&nbsp; &nbsp; &nbsp; &nbsp;<i class="fas fa-rupee-sign"></i>
							${product.price} <span
								class="fs-6 text-decoration-line-through text-secondary">500</span>
							<span class="fs-6  text-success">50%
								off</span>
						</p>

						<div class="row">
							<div class="col-md-4 text-success text-center p-2">
								<i class="fas fa-money-bill-wave fa-2x"></i>
								<p>Cash On Delivery</p>
							</div>
							<div class="col-md-4 text-danger text-center p-2">
								<i class="fas fa-undo-alt fa-2x"></i>
								<p>Return Available</p>
							</div>
							<div class="col-md-4 text-primary text-center p-2">
								<i class="fas fa-truck-moving fa-2x"></i>
								<p>Free Shipping</p>
							</div>
						</div>

						
							<c:set var="sesemail" value="${sesemail}"></c:set>
							<c:set var="sesuserid" value="${sesuserid}"></c:set>
							  
	                          <c:if test="${empty sesemail}">
								<a	href="/E_commerce_springmvc/login" class="btn btn-danger col-md-12">Add To Cart</a>
									
					        </c:if>
					        <c:if test="${not empty sesemail}">
					        
                      <!--      <p>Product ID: ${product.id}</p>
                           
                           <p>User ID: ${sesuserid}</p>
                           <p>${product.filename}</p>
                           
                           
                        <c:out value="${ product.id}" />
                           <c:out value="${ sesuserid}" />  --> 
                           
                    <!--        <a href="addCart/${product.id}/${sesuserid}" class="btn btn-danger col-md-12">Add To Cart</a>--> 
                    
                 <!--    <a href="/E_commerce_springmvc/addCart/${product.id}/${sesuserid}" class="btn btn-danger col-md-12">Add To Cart</a>  -->  
                 
                 
                 
       <a href="/E_commerce_springmvc/addCart/${product.id}" class="btn btn-danger col-md-12">Add To Cart</a>

               
                    
                         </c:if>

					</div>
				</div>
			</div>
		</div>





</section>
<jsp:include page="/WEB-INF/view/footer.jsp" /> 

</body>
</html>