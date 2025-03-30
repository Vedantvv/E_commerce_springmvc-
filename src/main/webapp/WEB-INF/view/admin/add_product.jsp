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
		<div class="container p-5 mt-3">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<div class="card card-sh">
						<div class="card-header text-center ">
							<p class="fs-4">Add Product</p>

							
						
						</div>
						<div class="card-body">
							<form action="/E_commerce_springmvc/saveProduct" method="post"
								enctype="multipart/form-data">
								<div class="mb-3">
									<label>Enter Title</label> <input type="text" name="title"
										class="form-control">
								</div>

								<div class="mb-3">
									<label>Enter Description</label>
									<textarea rows="3" cols="" class="form-control"
										name="description"></textarea>
								</div>

								<div class="mb-3">
									<label>Category</label> <select class="form-control"
										name="category">
										<option>--select--</option>
										 <c:forEach var="c" items="${list}">
                                            <option value="${c.id}">${c.name}</option>
                                        </c:forEach>
									</select>
								</div>

								<div class="mb-3">
									<label>Enter Price</label> <input type="number" name="price"
										class="form-control">
								</div>
								<div class="mb-3">
									<label>Status</label>

									<div class="form-check">
										<input class="form-check-input" type="radio" checked
											value="true" name="isActive" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1">
											Active </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="isActive"
											value="false" id="flexRadioDefault2"> <label
											class="form-check-label" for="flexRadioDefault2">
											Inactive </label>
									</div>

								</div>
								<div class="row">

									<div class="mb-3 col">
										<label>Enter Stock</label> <input type="text" name="stock"
											class="form-control">
									</div>

									<div class="mb-3 col">
										<label>Upload Image</label> <input type="file" name="file"
											class="form-control">
									</div>
								</div>
								<button class="btn btn-primary col-md-12">Submit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>