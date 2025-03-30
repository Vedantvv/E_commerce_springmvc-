<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>E-Commerce Cart</title>
    <style type="text/css">
        .table tbody td { vertical-align: middle; }
        .btn-incre, .btn-decre { box-shadow: none; font-size: 25px; }
        .button-container {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
        .button-container .btn {
            margin-bottom: 5px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- JSTL Core -->
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
</head>
<body>
    <section>
        <div class="container my-3">
            <div class="d-flex py-3">
                <h3>Total Price: <span id="total-price">${product.price}</span></h3>
                <a class="mx-3 btn btn-primary" href="cart-check-out">Check Out</a>
            </div>

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
    <c:forEach var="product" items="${cart}" varStatus="status">
        <tr>
            <th scope="row">${status.index + 1}</th>
            <td><img src="../img/product_img/${product.filename}" width="70px" height="70px"></td>
            <td>${product.title}</td>
            <td class="unit-price">${product.price}</td>
            <td>
                <div class="form-group d-flex justify-content-between">
                    <button class="quantity-left-minus btn btn-danger">-</button>
                    <input type="text" class="form-control text-center quantity" value="1" readonly>
                    <button class="quantity-right-plus btn btn-success">+</button>
                </div>
            </td>
            <td class="button-container">
                   <a href="/E_commerce_springmvc/buyNow/${product.id}" class="btn btn-primary btn-sm">Buy</a>

                <a href="/E_commerce_springmvc/removeCart/${product.id}" class="btn btn-sm btn-danger">Remove</a>
            </td>
        </tr>
    </c:forEach>
</tbody>

            </table>
        </div>
    </section>

    <script type="text/javascript">
    $(document).ready(function() {
        function updateTotalPrice() {
            let totalPrice = 0;
            $('.quantity').each(function() {
                let quantity = parseInt($(this).val());
                let price = parseFloat($(this).closest('tr').find('.unit-price').text());
                totalPrice += quantity * price;
            });
            $('#total-price').text(totalPrice.toFixed(2));
        }

        $('.quantity-right-plus').click(function(e) {
            e.preventDefault();
            let quantityField = $(this).closest('tr').find('.quantity');
            quantityField.val(parseInt(quantityField.val()) + 1);
            updateTotalPrice();
        });

        $('.quantity-left-minus').click(function(e) {
            e.preventDefault();
            let quantityField = $(this).closest('tr').find('.quantity');
            if (parseInt(quantityField.val()) > 1) {
                quantityField.val(parseInt(quantityField.val()) - 1);
                updateTotalPrice();
            }
        });

        updateTotalPrice();
    });

    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
