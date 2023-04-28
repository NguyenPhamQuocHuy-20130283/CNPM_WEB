<%@ page import="webCNPM.Model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ashion | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="./client/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./client/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="./client/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="./client/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="./client/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="./client/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="./client/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="./client/css/style.css" type="text/css">
</head>
<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__close">+</div>
    <ul class="offcanvas__widget">
        <li><span class="icon_search search-switch"></span></li>
        <li><a href="#"><span class="icon_heart_alt"></span>
            <div class="tip">2</div>
        </a></li>
        <li><a href="#"><span class="icon_bag_alt"></span>
            <div class="tip">2</div>
        </a></li>
    </ul>
    <div class="offcanvas__logo">
        <a href="./index.html"><img src="img/logo.png" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__auth">
        <a href="#">Login</a>
        <a href="#">Register</a>
    </div>
</div>
<!-- Offcanvas Menu End -->

<jsp:include page="./teamplates/header.jsp"/>
<% Product p = (Product) request.getAttribute("product"); %>
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__links">
                    <a href="./home"><i class="fa fa-home"></i> Home</a>
                    <a href="#">Chi tiết sản phẩm</a>
                    <span><%=p.getModel()%></span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__left product__thumb nice-scroll">
                        <a class="pt active" href="#product-1">
                            <img src="<%=p.getImage()%>" alt="">
                        </a>
                        </a>
                    </div>
                    <div class="product__details__slider__content">
                        <div class="product__details__pic__slider owl-carousel">
                            <img data-hash="product-1" class="product__big__img" src="<%=p.getImage()%>" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="product__details__text">
                    <h3><%=p.getModel()%></h3>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <span>( 138 reviews )</span>
                    </div>
                    <div class="product__details__price"><%=p.getPrice()%></div>
                    <p><%=p.getDescription()%></p>
                    <div class="product__details__button">
                        <div class="quantity">
                            <span>Quantity:</span>
                            <div class="pro-qty">
                                <input type="text" value="1">
                            </div>
                        </div>
                        <a href="#" class="cart-btn"><span class="icon_bag_alt"></span> Add to cart</a>
                        <ul>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_adjust-horiz"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__details__widget">
                        <ul>
                            <li>
                                <span>RAM: </span>
                                <p><%=p.getRam()%></p>
                            </li>
                            <li>
                                <span>ROM:</span>
                                <p><%=p.getRom()%></p>
                            </li>
                            <li>
                                <span>Color:</span>
                                <div class="color__checkbox">
                                    <label for="black">
                                        <input type="radio" name="color__radio" id="black">
                                        <span class="checkmark" style="background:<%=p.getColor()%>"></span>
                                    </label>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">Specification</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <h6>Specification</h6>
                            <%=p.getSpecification()%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Details Section End -->

<jsp:include page="./teamplates/footer.jsp"/>

<!-- Js Plugins -->
<script src="./client/js/jquery-3.3.1.min.js"></script>
<script src="./client/js/bootstrap.min.js"></script>
<script src="./client/js/jquery.magnific-popup.min.js"></script>
<script src="./client/js/jquery-ui.min.js"></script>
<script src="./client/js/mixitup.min.js"></script>
<script src="./client/js/jquery.countdown.min.js"></script>
<script src="./client/js/jquery.slicknav.js"></script>
<script src="./client/js/owl.carousel.min.js"></script>
<script src="./client/js/jquery.nicescroll.min.js"></script>
<script src="./client/js/main.js"></script>
</body>
</html>