<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>E-Commerce Cart</title>
    <style type="text/css">
        .table tbody td { vertical-align: middle; }
        .btn-incre, .btn-decre { box-shadow: none; font-size: 25px; }

        /* Added style to properly align the Buy and Remove buttons vertically */
        .button-container {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
        .button-container .btn {
            margin-bottom: 5px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>



    <section>
        <div class="container my-3">
            <div class="d-flex py-3">
                <h3>Total Price: ${product.price}</h3>
                <a class="mx-3 btn btn-primary" href="cart-check-out">Check Out</a>
            </div>

            <table class="table table-light">
                <thead>
                    <tr>
                        <th scope="col">Sl No</th>
                        <th scope="col">Image</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Buy Now</th>
                        <th scope="col">Cancel</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                         <th scope="row">1</th>
                         <td><img src="../img/product_img/${product.filename}" width="70px" height="70px"></td>
                        <td>${product.title}</td>
                        <td>${product.price}</td>
                        
                        <td>
                            <form action="order-now" method="post" class="form-inline">
                                <input type="hidden" name="id" value="1" class="form-input">
                                <div class="form-group d-flex justify-content-between">
                                    <a class="btn btn-sm btn-incre" href="/E_commerce_springmvc/quantity-inc-dec?action=inc&id=${product.id}">
                                        <i class="fas fa-plus-square"></i>
                                    </a>
                                    <input type="text" name="quantity" class="form-control" value="1" readonly>
                                    <a class="btn btn-sm btn-decre" href="/E_commerce_springmvc/quantity-inc-dec?action=dec&id=${product.id}">
                                        <i class="fas fa-minus-square"></i>
                                    </a>
                                </div>
                            </form>
                        </td>
                        <td class="button-container">
                            <button type="submit" class="btn btn-primary btn-sm">Buy</button>
                            <a href="#" class="btn btn-sm btn-danger">Remove</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
