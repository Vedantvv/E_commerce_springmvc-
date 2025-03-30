<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table table-light">
    <thead>
        <tr>
            <th scope="col">Sl No</th>
            <th scope="col">Image</th>
            <th scope="col">Product Name</th>
            <th scope="col">Price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Buy Now</th>
            <th scope="col">Cancel</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="cartItem" items="${cartItems}" varStatus="status">
            <tr>
                <th scope="row">${status.index + 1}</th>
                <td><img src="../img/product_img/${cartItem.filename}" width="70px" height="70px"></td>
                <td>${cartItem.title}</td>
                <td class="unit-price">${cartItem.price}</td>
                <td>
                    <div class="form-group d-flex justify-content-between">
                        <button class="quantity-left-minus btn btn-danger">-</button>
                        <input type="text" class="quantity form-control text-center" value="1" readonly>
                        <button class="quantity-right-plus btn btn-success">+</button>
                    </div>
                </td>
                <td class="button-container">
                    <button type="submit" class="btn btn-primary btn-sm">Buy</button>
                </td>
                <td>
                    <a href="/E_commerce_springmvc/removeCart/${cartItem.id}" class="btn btn-sm btn-danger">Remove</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>