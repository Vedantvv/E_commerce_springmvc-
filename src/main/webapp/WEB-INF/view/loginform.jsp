<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- JSTL Core -->
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>



 <jsp:include page="/WEB-INF/view/base.jsp" /> 
 
 <section>
 
 
 

		<div class="container mt-5 p-5">
			<div class="row">
				<div class="col-md-6 p-5">
					<img alt="" src="img/ecom.png" width="100%" height="400px">
				</div>
				<div class="col-md-6 mt-3 p-5">
					<div class="card shadow p-3 mb-5 bg-body-tertiary rounded">
						<div class="card-header">
							<p class="fs-4 text-center">Login</p>
							
						<div class="card-body">
							<form action="loginSubmit" method="post">
								<div class="mb-3">
									<label class="form-label">Email</label> <input required
										class="form-control" name="email" type="email">
								</div>

								<div class="mb-3">
									<label class="form-label">Password</label> <input required
										class="form-control" name="password" type="password">
								</div>
								<button type="submit"
									class="btn bg-primary text-white col-md-12">Login</button>
							</form>
						</div>

						<div class="card-footer text-center">
							<a href="forgot-password" class="text-decoration-none">Forgot Password</a><br>
							Don't have an account ? <a href="register" class="text-decoration-none">Create
								one </a>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>


	
</section>
</body>
</html>