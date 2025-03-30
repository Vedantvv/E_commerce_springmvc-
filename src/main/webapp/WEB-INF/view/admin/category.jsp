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
	<div class="container-fluid p-5 mt-5">
		<div class="row">
			<div class="col-md-3">
				<div class="card card-sh">
					<div class="card-header text-center">
						<p class="fs-4">Add Category</p>
					</div>
					<div class="card-body">
						<form action="submitcategory" method="post" enctype="multipart/form-data">
							<div class="mb-3">
								<label>Enter Category</label>
								<input type="text" name="name" class="form-control">
							</div>
							<div class="mb-3">
								<label>Status</label>
								<div class="form-check">
									<input class="form-check-input" type="radio" checked value="true" name="isActive"  id="flexRadioDefault1">
									<label class="form-check-label" for="flexRadioDefault1">Active</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="isActive" value="false" id="flexRadioDefault2">
									<label class="form-check-label" for="flexRadioDefault2">Inactive</label>
								</div>
							</div>
							<div class="mb-3">
								<label>Upload Image</label>
								<input type="file" name="file" class="form-control">
							</div>
							<button class="btn btn-primary col-md-12 mt-2">Save</button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-8">
				<div class="card card-sh">
					<div class="card-header text-center fs-4">Category Details</div>
					<div class="card-body">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Sl No</th>
									<th scope="col">Category</th>
								 	
									<th scope="col">Image</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="ca" items="${list}">
								<tr>
									<th scope="row">${ca.id}</th>
									<td>${ca.name}</td>
									
									<td><img src="img/category_img/${ca.filename}" width="50px" height="50px"></td>
									<td>
										<a href="edit/${ca.id}" class="btn btn-primary btn-sm"> <i class="fa-solid fa-pen-to-square"></i>Edit</a>
										<a href="delete/${ca.id}" class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i>Delete</a>
									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>

						<div class="row">
						 	<div class="col-md-4">Total Category: 6</div>
							<div class="col-md-6">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item disabled">
											<a class="page-link" href="#" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span>
											</a>
										</li>
										<li class="page-item active"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item">
											<a class="page-link" href="#" aria-label="Next">
												<span aria-hidden="true">&raquo;</span>
											</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</body>
</html>
