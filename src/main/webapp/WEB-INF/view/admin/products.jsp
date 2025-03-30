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

        <div class="container-fluid mt-5 p-5">
            <div class="card card-sh">
                <div class="card-header text-center">
                    <p class="fs-4">View Products</p>
                    
                  
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Sl No</th>
                                <th scope="col">Image</th>
                                <th scope="col">Title</th>
                                <th scope="col">Category</th>
                                <th scope="col">Price</th>
                                <th scope="col">Stock</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                           <c:forEach var="pm" items="${list}">
                            <tr>
                                <th scope="row">${pm.id}</th>
                                <td><img src="img/product_img/${pm.filename}" width="70px" height="70px" alt="Product Image"></td>
                                <td>${pm.title}</td>
                                <td>${pm.category}</td>
                                <td>${pm.price}</td>
                                <td>${pm.stock}</td>
                                <td>
                                    <a href="Edit/${pm.id}" class="btn btn-primary btn-sm"> <i class="fa-solid fa-pen-to-square"></i> Edit</a>
									<a href="Delete/${pm.id}" class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i> Delete</a>
                                    
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
   


</section>


</body>
</html>