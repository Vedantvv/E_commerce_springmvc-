<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
							<p class="fs-4">Edit Product</p>
							
							<!-- Placeholder for success/error messages -->
							<p class="text-success fw-bold">Success message here</p>
							<p class="text-danger fw-bold">Error message here</p>

						</div>
						<div class="card-body">
							<form action="/E_commerce_springmvc/updateProduct" method="post" enctype="multipart/form-data">
							<div class="mb-3">
									<label>Id</label>
									<input type="text" name="id" value="${pm.id}" class="form-control">
								</div>
								<div class="mb-3">
									<label>Enter Title</label>
									<input type="text" name="title" value="${pm.title}" class="form-control">
								</div>

								<div class="mb-3">
									<label>Enter Description</label>
									<textarea rows="3" class="form-control" name="description">${pm.description}</textarea>
								</div>

								<div class="mb-3">
    <label>Category</label>
    <select class="form-control" name="category">
        <c:forEach var="c" items="${categories}">
            <option value="${c.id}" 
                <c:if test="${pm.category == c.id}">selected</c:if>>${c.name}</option>
        </c:forEach>
    </select>
</div>

								<div class="mb-3">
									<label>Enter Price</label>
									<input type="number" name="price" value="${pm.price}" class="form-control">
								</div>
								<div class="row">

									<div class="mb-3 col">
										<label>Enter Stock</label>
										<input type="text" name="stock" value="${pm.stock}" class="form-control">
									</div>

									<div class="mb-3 col">
										<label>Upload Image</label>
										<input type="file" name="file" class="form-control">
									</div>

									<div class="mt-1">
										<img src="../img/product_img/${pm.filename}" width="100px" height="100px">
									</div>

								</div>
								<button class="btn btn-primary col-md-12">Update</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


</body>
</html>