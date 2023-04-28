<%@ page import="java.util.List" %>
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
  <style>
    .button-wrapper {display: flex;justify-content: center;align-items: center}
  </style>
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
    <a href="./index.html"><img src="./client/img/logo.png" alt=""></a>
  </div>
  <div id="mobile-menu-wrap"></div>
  <div class="offcanvas__auth">
    <a href="#">Login</a>
    <a href="#">Register</a>
  </div>
</div>
<!-- Offcanvas Menu End -->
<jsp:include page="./teamplates/header.jsp"/>
<% String name = request.getAttribute("name").toString();%>
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__links">
          <a href="/home"><i class="fa fa-home"></i> Home</a>
          <span>Tìm kiếm: <%=name%></span>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb End -->

<!-- Shop Section Begin -->
<section class="shop spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-3">
        <div class="shop__sidebar">
          <div class="sidebar__categories">
            <div class="section-title">
              <h4>Categories</h4>
            </div>
            <div class="categories__accordion">
              <div class="accordion" id="accordionExample">
                <div class="card">
                  <div class="card-heading active">
                    <a data-toggle="collapse" data-target="#collapseOne">Women</a>
                  </div>
                  <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                    <div class="card-body">
                      <ul>
                        <li><a href="#">Coats</a></li>
                        <li><a href="#">Jackets</a></li>
                        <li><a href="#">Dresses</a></li>
                        <li><a href="#">Shirts</a></li>
                        <li><a href="#">T-shirts</a></li>
                        <li><a href="#">Jeans</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-heading">
                    <a data-toggle="collapse" data-target="#collapseTwo">Men</a>
                  </div>
                  <div id="collapseTwo" class="collapse" data-parent="#accordionExample">
                    <div class="card-body">
                      <ul>
                        <li><a href="#">Coats</a></li>
                        <li><a href="#">Jackets</a></li>
                        <li><a href="#">Dresses</a></li>
                        <li><a href="#">Shirts</a></li>
                        <li><a href="#">T-shirts</a></li>
                        <li><a href="#">Jeans</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-heading">
                    <a data-toggle="collapse" data-target="#collapseThree">Kids</a>
                  </div>
                  <div id="collapseThree" class="collapse" data-parent="#accordionExample">
                    <div class="card-body">
                      <ul>
                        <li><a href="#">Coats</a></li>
                        <li><a href="#">Jackets</a></li>
                        <li><a href="#">Dresses</a></li>
                        <li><a href="#">Shirts</a></li>
                        <li><a href="#">T-shirts</a></li>
                        <li><a href="#">Jeans</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-heading">
                    <a data-toggle="collapse" data-target="#collapseFour">Accessories</a>
                  </div>
                  <div id="collapseFour" class="collapse" data-parent="#accordionExample">
                    <div class="card-body">
                      <ul>
                        <li><a href="#">Coats</a></li>
                        <li><a href="#">Jackets</a></li>
                        <li><a href="#">Dresses</a></li>
                        <li><a href="#">Shirts</a></li>
                        <li><a href="#">T-shirts</a></li>
                        <li><a href="#">Jeans</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-heading">
                    <a data-toggle="collapse" data-target="#collapseFive">Cosmetic</a>
                  </div>
                  <div id="collapseFive" class="collapse" data-parent="#accordionExample">
                    <div class="card-body">
                      <ul>
                        <li><a href="#">Coats</a></li>
                        <li><a href="#">Jackets</a></li>
                        <li><a href="#">Dresses</a></li>
                        <li><a href="#">Shirts</a></li>
                        <li><a href="#">T-shirts</a></li>
                        <li><a href="#">Jeans</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="sidebar__filter">
            <div class="section-title">
              <h4>Shop by price</h4>
            </div>
            <div class="filter-range-wrap">
              <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                   data-min="33" data-max="99"></div>
              <div class="range-slider">
                <div class="price-input">
                  <p>Price:</p>
                  <input type="text" id="minamount">
                  <input type="text" id="maxamount">
                </div>
              </div>
            </div>
            <a href="#">Filter</a>
          </div>
          <div class="sidebar__sizes">
            <div class="section-title">
              <h4>Shop by size</h4>
            </div>
            <div class="size__list">
              <label for="xxs">
                xxs
                <input type="checkbox" id="xxs">
                <span class="checkmark"></span>
              </label>
              <label for="xs">
                xs
                <input type="checkbox" id="xs">
                <span class="checkmark"></span>
              </label>
              <label for="xss">
                xs-s
                <input type="checkbox" id="xss">
                <span class="checkmark"></span>
              </label>
              <label for="s">
                s
                <input type="checkbox" id="s">
                <span class="checkmark"></span>
              </label>
              <label for="m">
                m
                <input type="checkbox" id="m">
                <span class="checkmark"></span>
              </label>
              <label for="ml">
                m-l
                <input type="checkbox" id="ml">
                <span class="checkmark"></span>
              </label>
              <label for="l">
                l
                <input type="checkbox" id="l">
                <span class="checkmark"></span>
              </label>
              <label for="xl">
                xl
                <input type="checkbox" id="xl">
                <span class="checkmark"></span>
              </label>
            </div>
          </div>
          <div class="sidebar__color">
            <div class="section-title">
              <h4>Shop by size</h4>
            </div>
            <div class="size__list color__list">
              <label for="black">
                Blacks
                <input type="checkbox" id="black">
                <span class="checkmark"></span>
              </label>
              <label for="whites">
                Whites
                <input type="checkbox" id="whites">
                <span class="checkmark"></span>
              </label>
              <label for="reds">
                Reds
                <input type="checkbox" id="reds">
                <span class="checkmark"></span>
              </label>
              <label for="greys">
                Greys
                <input type="checkbox" id="greys">
                <span class="checkmark"></span>
              </label>
              <label for="blues">
                Blues
                <input type="checkbox" id="blues">
                <span class="checkmark"></span>
              </label>
              <label for="beige">
                Beige Tones
                <input type="checkbox" id="beige">
                <span class="checkmark"></span>
              </label>
              <label for="greens">
                Greens
                <input type="checkbox" id="greens">
                <span class="checkmark"></span>
              </label>
              <label for="yellows">
                Yellows
                <input type="checkbox" id="yellows">
                <span class="checkmark"></span>
              </label>
            </div>
          </div>
        </div>
      </div>
      <% String error = request.getAttribute("error").toString();%>
      <h3><%=error%></h3>
      <div class="col-lg-9 col-md-9">
        <div id="row">
          <% List<Product> lst = (List<Product>) request.getAttribute("lstProduct");
            for(Product p:lst) {%>
          <div class="col-lg-4 col-md-6">
            <div class="product__item">
              <div class="product__item__pic set-bg" data-setbg="<%=p.getImage()%>">
                <div class="label new">New</div>
                <ul class="product__hover">
                  <li><a href="<%=p.getImage()%>" class="image-popup"><span class="arrow_expand"></span></a></li>
                  <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                  <li><a href="./ProductController?productId=<%=p.getId()%>"><span class="icon_bag_alt"></span></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6><a href="#"><%=p.getModel()%></a></h6>
                <div class="rating">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                </div>
                <div class="product__price"><%=p.getPrice()%></div>
              </div>
            </div>
          </div>
          <%}%>
        </div>
        <div class="button-wrapper">
          <button class="btn btn-light" onclick="loadMore()" id="btnLoadMore" >Xem thêm <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></button>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Shop Section End -->
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="./assets/js/quy.js"></script>
<script>
  function loadMore() {
    var amount = document.getElementsByClassName('pro').length;
    $.ajax({
      url: "/loadmore",
      type:"get",
      data: {exits: amount,name: <%=name%>},
      success: function (data) {
        var row = document.getElementById('row');
        row.innerHTML += data;
      },
      error:function (xhr) {}
    });
  }
</script>
</body>
</html>