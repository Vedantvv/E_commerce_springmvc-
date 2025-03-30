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
		<div class="container-fluid mt-5 p-5">

			<div class="card card-sh">
				<div class="card-header text-center">
					<p class="fs-4">Cart Page</p>
					<!-- Success message -->
					<p class="text-success fw-bold">Success Message Here</p>

					<!-- Error message -->
					<p class="text-danger fw-bold">Error Message Here</p>
				</div>
				<div class="card-body">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Sl No</th>
								<th scope="col">Image</th>
								<th scope="col">Product Name</th>
								<th scope="col">Price</th>
								<th scope="col" class="text-center">Quantity</th>
								<th scope="col">Total Price</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td><img src="../img/product_img/${product.filename}" width="70px" height="70px"></td>
								<td>${product.title}</td>
								<td>${product.price}</td>
								<td class="text-center">
									<a href="#"><i class="fa-solid fa-minus"></i></a> [ 1 ] 
									<a href="#"><i class="fa-solid fa-plus"></i></a>
								</td>
								<td>${product.price}</td>
							</tr>
							<tr>
								<td colspan="4"></td>
								<td class="fw-bold">Total Price</td>
								<td class="fw-bold">${product.price}</td>
							</tr>

						</tbody>
					</table>
					<div class="text-center">
						<a href="#" class="btn btn-warning"> Proceed Payment</a>
					</div>
				</div>
			</div>
		</div>

	</section>



</body>
</html>