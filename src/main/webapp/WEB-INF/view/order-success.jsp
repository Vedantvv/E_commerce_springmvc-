<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Success</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="/WEB-INF/view/base.jsp" />

    <div class="container my-5 text-center">
        <h2 class="text-success">🎉 Order Placed Successfully!</h2>
        <p>${message}</p>
        <a href="/E_commerce_springmvc/" class="btn btn-primary">Continue Shopping</a>
    </div>

    <jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>
