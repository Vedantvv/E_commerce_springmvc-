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

		<div class="container mt-5 p-5">
			<div class="row">
				<div class="col-md-5 p-5">
					<img alt="" src="img/ecom.png" width="100%" height="400px">
				</div>
				<div class="col-md-7 p-2">
					<div class="card shadow p-3 mb-5 bg-body-tertiary rounded">
						<div class="card-header text-center">
							<p class="fs-4 text-center"> Admin Register</p>
							
						</div>
						<div class="card-body">
							<form action="saveadmin"  id="userRegister" novalidate
								method="post">
								<div class="row">
									<div class="col">
										<label class="form-label">Full Name</label> <input required
											class="form-control" name="name" type="text">
									</div>

									<div class="col">
										<label class="form-label">Mobile Number</label> <input
											required class="form-control" name="mobileNumber"
											type="number">
									</div>

								</div>

								<div class="mb-3">
									<label class="form-label">Email</label> <input required
										class="form-control" name="email" type="email">
								</div>


								<div class="row">
									<div class="col">
										<label class="form-label">Password</label> <input required
											class="form-control" name="password" type="password" id="pass">
									</div>

									<div class="col">
										<label class="form-label">Confirm Password</label> <input
											required class="form-control" name="confirmpassword"
											type="password">
									</div>

								</div><br><br>



								





								<button type="submit"
									class="btn bg-primary text-white col-md-12">Register</button>
							</form>
						</div>

						<div class="card-footer text-center">

							have an account ? <a href="adminLogin" class="text-decoration-none">Login
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	


</section>
</body>
</html>