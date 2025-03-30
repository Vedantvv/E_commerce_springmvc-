<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Checkout</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="/WEB-INF/view/base.jsp" />

    <div class="container my-5">
        <h2 class="mb-4">Checkout</h2>
        
        <div class="card p-4">
            <div class="row">
                <div class="col-md-6">
                    <img src="../img/product_img/${selectedProduct.filename}" width="300px" height="350px">
                </div>
                <div class="col-md-6">
                    <h4>${selectedProduct.title}</h4>
                    <p><strong>Price:</strong> ₹${selectedProduct.price}</p>
                    <p><strong>Description:</strong> ${selectedProduct.description}</p>
                    
                    <form action="/E_commerce_springmvc/placeOrder" method="post">
                        <input type="hidden" name="productId" value="${selectedProduct.id}">
                        <input type="hidden" name="price" value="${selectedProduct.price}">
                        
                        <label for="address" class="form-label">Shipping Address:</label>
                        <textarea class="form-control" name="address" required></textarea>
                        
                        <button type="submit" class="btn btn-success mt-3">Place Order</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>
