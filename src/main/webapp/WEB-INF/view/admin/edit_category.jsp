<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Category</title>
    <!-- JSTL Core -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
</head>
<body>

<jsp:include page="/WEB-INF/view/base.jsp" /> 

<section>
    <div class="container-fluid p-5 mt-5">
        <div class="row">
            <div class="col-md-3 offset-md-5">
                <div class="card card-sh">
                    <div class="card-body">
                        <!-- Ensure 'ca' attribute is correctly passed into the page -->
                        <form action="/E_commerce_springmvc/updateCategory" method="post" enctype="multipart/form-data">
                            <div class="mb-3">
                                <label for="name">Id</label>
                                <input type="text" name="id" id="name" value="${ca.id}" class="form-control" required>
                            </div>

                            <div class="mb-3">
                                <label for="name">Enter Category</label>
                                <input type="text" name="name" id="name" value="${ca.name}" class="form-control" required>
                            </div>

                            <div class="mb-3">
                                <label for="file">Upload Image</label>
                                <input type="file" name="file" id="file" class="form-control">
                            </div>

                            <!-- Display the current image -->
                            <div class="mb-3">
                                <img src="../img/category_img/${ca.filename}" width="100px" height="100px" alt="Category Image">
                            </div>

                            <button type="submit" class="btn btn-primary col-md-12 mt-2">Update</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>
