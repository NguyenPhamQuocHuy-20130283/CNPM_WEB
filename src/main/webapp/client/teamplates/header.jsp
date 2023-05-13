<!-- Header Section Begin -->
<header class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-3 col-lg-2">
                <div class="header__logo">
                    <a href="./home"><img src="./client/img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-xl-6 col-lg-7">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="./index.html">Home</a></li>
                        <li><a href="#">Women’s</a></li>
                        <li><a href="#">Men’s</a></li>
                        <li><a href="./shop.html">Shop</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="dropdown">
                                <li><a href="./product-details.html">Product Details</a></li>
                                <li><a href="./shop-cart.html">Shop Cart</a></li>
                                <li><a href="./checkout.html">Checkout</a></li>
                                <li><a href="./blog-details.html">Blog Details</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog.html">Blog</a></li>
                        <li><a href="./contact.html">Contact</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__right">
                    <div class="header__right__auth">
                        <a href="#">Login</a>
                        <a href="#">Register</a>
                    </div>
                    <ul class="header__right__widget">
                        <li><span class="icon_search search-switch"></span></li>
                        <li><a href="#"><span class="icon_heart_alt"></span>
                            <div class="tip">2</div>
                        </a></li>
                        <li><a href="#"><span class="icon_bag_alt"></span>
                            <div class="tip">2</div>
                        </a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="canvas__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->
<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
<%------------------------------FEATURE TÌM KIẾM SẢN PHẨM
                                B1: Nhập từ khóa tìm kiếm------------------------------%>
        <form class="search-model-form" action="/SeachController">
            <input name="name" type="text" id="search-input" placeholder="Search here.....">
            <br>
            <small id="error" style="color: red"></small>
        </form>
    </div>
</div>
<script>
<%------------------------------FEATURE TÌM KIẾM SẢN PHẨM
                                B2: kiểm tra từ khóa trống hay không------------------------------%>
    var form = document.querySelector("form");
    function chkEmpty(input) {
        input.value = input.value.trim();
        if(!input.value) {
            return true;
        }
        return false;
    }
    form.addEventListener("submit", function (e) {
        e.preventDefault();
        var input = document.querySelector("#search-input");
        console.log(input)
        if(chkEmpty(input)) {
            document.querySelector("#error").innerHTML="No empty!!";
        } else {
            document.querySelector("#error").innerHTML="";
            form.submit();
        }
    })
</script>