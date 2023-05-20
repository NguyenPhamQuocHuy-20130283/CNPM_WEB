<%@ page import="tran_minh_tuyen.model.UserCustomer" %>
<%@ page import="java.util.List" %>
<%@ page import="tran_ty_phu_quy.Model.Product" %>
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
        .main {
            background-color: #f5f5f5;
            padding: 20px 0px;
        }

        .product-list {
            display: flex;
            flex-wrap: wrap;
            column-gap: 57px;
        }

        .product-item {
            width: 20%;
            margin-bottom: 30px;
            text-align: center;
            background-color: white;
            padding: 5px;
            box-shadow: 0px 0px 13px 0px rgba(0,0,0,0.75);
            -webkit-box-shadow: 0px 0px 13px 0px rgba(0,0,0,0.75);
            -moz-box-shadow: 0px 0px 13px 0px rgba(0,0,0,0.75);
        }

        .product-item img {
            width: 100%;
            height: 200px;
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
        .product {
            display: inline-block;
            margin: 10px;
            width: 200px;
            text-align: center;
        }
        .product img {
            width: 150px;
            height: 150px;
        }
        .breadcrumb-option {margin-bottom: 10px}
        .kq {margin-bottom: 20px; text-transform: uppercase} .button-wrapper{display: flex;justify-content: center}
        #btnLoadMore{background-color: #8d8d8d; cursor: pointer}
    </style>
</head>
<body>
<% String key = request.getAttribute("key").toString();
    List<Product> lst = (List<Product>) request.getAttribute("lstProduct");
    int sl = (int) request.getAttribute("size");%>
<div class="super_container">
    <jsp:include page="teamplates/header.jsp"/>
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="/home">Home</a>
                        <span>Tìm kiếm: <%=key%></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <div class="main">
        <div class="container">
            <h2 class="kq">kết quả: tìm thấy (<%=sl%>) sản phẩm</h2>
            <div id="row" class="product-list">
                <% for (Product p : lst) {%>
                    <div class="product-item pro">
                        <img src="<%=p.getImage()%>" alt="Product 1">
                        <h2><%=p.getModel()%></h2>
                        <p><%=p.getPrice()%></p>
                    </div>
                <%}%>
            </div>
            <div class="button-wrapper">
                <%------------------------------B2.1: click button xem them------------------------------%>
                <button class="btn btn-light" onclick="loadMore()" id="btnLoadMore" >Xem thêm <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button>
                <%------------------------------END B2.1: click button xem them------------------------------%>
            </div>
        </div>
    </div>
    <jsp:include page="teamplates/footer.jsp"/>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    function loadMore() {
        var amount = document.getElementsByClassName('pro').length;
        $.ajax({
            url: "/loadmore",
            type:"get",
            data: {exits: amount,name: "<%=key%>"},
            success: function (data) {
                var row = document.getElementById('row');
                row.innerHTML += data;
            },
            error:function (xhr) {}
        });
    }
</script>
</body>
