<%@ page import="tran_minh_tuyen.model.UserCustomer" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- Global variables declaration --%>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Nhóm 10-CNPM</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="OneTech shop project">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- ===== STYLESHEET ===== -->
    <jsp:include page="../common/client-css.jsp"/>
    <style>
        .main {background-color: #f5f5f5}
        .product-list {
            display: flex;
            flex-wrap: wrap;
            column-gap: 57px;
        }

        .product-item {
            width: 30%;
            margin-bottom: 30px;
            text-align: center;
        }

        .product-item img {
            width: 100%;
            max-height: 200px;
            object-fit: contain;
        }

        .product-item h2 {
            margin-top: 20px;
            font-size: 20px;
        }

        .product-item p {
            margin-top: 10px;
            font-size: 16px;
            font-weight: bold;
        }

    </style>
</head>
<body>

<div class="super_container">
    <jsp:include page="teamplates/header.jsp"/>
    <div class="main">
        <div class="container">
            <div class="product-list">
                <div class="product-item">
                    <img src="product1.jpg" alt="Product 1">
                    <h2>Product 1</h2>
                    <p>$10.99</p>
                </div>
                <div class="product-item">
                    <img src="product2.jpg" alt="Product 2">
                    <h2>Product 2</h2>
                    <p>$19.99</p>
                </div>
                <div class="product-item">
                    <img src="product3.jpg" alt="Product 3">
                    <h2>Product 3</h2>
                    <p>$24.99</p>
                </div>
                <div class="product-item">
                    <img src="product3.jpg" alt="Product 3">
                    <h2>Product 3</h2>
                    <p>$24.99</p>
                </div>
                <div class="product-item">
                    <img src="product3.jpg" alt="Product 3">
                    <h2>Product 3</h2>
                    <p>$24.99</p>
                </div>
                <div class="product-item">
                    <img src="product3.jpg" alt="Product 3">
                    <h2>Product 3</h2>
                    <p>$24.99</p>
                </div>
                <div class="product-item">
                    <img src="product3.jpg" alt="Product 3">
                    <h2>Product 3</h2>
                    <p>$24.99</p>
                </div>
                <div class="product-item">
                    <img src="product3.jpg" alt="Product 3">
                    <h2>Product 3</h2>
                    <p>$24.99</p>
                </div>
                <div class="product-item">
                    <img src="product3.jpg" alt="Product 3">
                    <h2>Product 3</h2>
                    <p>$24.99</p>
                </div>
                <div class="product-item">
                    <img src="product3.jpg" alt="Product 3">
                    <h2>Product 3</h2>
                    <p>$24.99</p>
                </div>
                <div class="product-item">
                    <img src="product3.jpg" alt="Product 3">
                    <h2>Product 3</h2>
                    <p>$24.99</p>
                </div>
            </div>

        </div>

    </div>
    <jsp:include page="teamplates/footer.jsp"/>
</div>

<jsp:include page="../common/client-js.jsp"/>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }

    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816"
        integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw=="
        data-cf-beacon='{"rayId":"7c5f49891bada123","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}'
        crossorigin="anonymous"></script>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }

    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816"
        integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw=="
        data-cf-beacon='{"rayId":"7c5f49891bada123","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}'
        crossorigin="anonymous"></script>

</body>
