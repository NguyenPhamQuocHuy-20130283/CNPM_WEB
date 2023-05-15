<%--<%--%>
<%--    UserCustomer user = (UserCustomer) request.getSession().getAttribute("auth_customer");--%>
<%--%>--%>
<header class="header">
    <div class="top_bar">
        <div class="container">
            <div class="row">
                <div class="col d-flex flex-row">
                    <div class="top_bar_contact_item">
                        <div class="top_bar_icon"><img
                                src="https://preview.colorlib.com/theme/onetech/images/phone.png.webp" alt=""></div>
                        +38 068 005 3570
                    </div>
                    <div class="top_bar_contact_item">
                        <div class="top_bar_icon"><img
                                src="https://preview.colorlib.com/theme/onetech/images/mail.png.webp" alt=""></div>
                        <%--                            <a href="/cdn-cgi/l/email-protection#412720323532202d243201262c20282d6f222e2c"><span--%>
                        <%--                                    class="__cf_email__" data-cfemail="eb8d8a989f988a878e98ab8c868a8287c5888486"><%=user.getName()%></span></a>--%>
                    </div>
                    <div class="top_bar_content ml-auto">
                        <div class="top_bar_menu">
                            <ul class="standard_dropdown top_bar_dropdown">
                                <li>
                                    <a href="#">English<i class="fas fa-chevron-down"></i></a>
                                    <ul>
                                        <li><a href="#">Italian</a></li>
                                        <li><a href="#">Spanish</a></li>
                                        <li><a href="#">Japanese</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">$ US dollar<i class="fas fa-chevron-down"></i></a>
                                    <ul>
                                        <li><a href="#">EUR Euro</a></li>
                                        <li><a href="#">GBP British Pound</a></li>
                                        <li><a href="#">JPY Japanese Yen</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="top_bar_user">
                            <div class="user_icon"><img
                                    src="https://preview.colorlib.com/theme/onetech/images/user.svg" alt=""></div>
                            <div><a href="#">Register</a></div>
                            <div><a href="#">Sign in</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header_main">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-sm-3 col-3 order-1">
                    <div class="logo_container">
                        <div class="logo"><a href="#">OneTech</a></div>
                    </div>
                </div>
                <div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
                    <div class="header_search">
                        <div class="header_search_content">
                            <div class="header_search_form_container">
<%------------------------------FEATURE TÌM KIẾM SẢN PHẨM
                                B1: Nhập từ khóa tìm kiếm------------------------------%>
                                <form action="/SeachController" class="header_search_form clearfix">
                                    <input name="keySeach" type="search" required="required" class="header_search_input"
                                           placeholder="Search for products...">
                                    <div class="custom_dropdown">
                                        <div class="custom_dropdown_list">
                                            <span class="custom_dropdown_placeholder clc">All Categories</span>
                                            <i class="fas fa-chevron-down"></i>
                                            <ul class="custom_list clc">
                                                <li><a class="clc" href="#">All Categories</a></li>
                                                <li><a class="clc" href="#">Computers</a></li>
                                                <li><a class="clc" href="#">Laptops</a></li>
                                                <li><a class="clc" href="#">Cameras</a></li>
                                                <li><a class="clc" href="#">Hardware</a></li>
                                                <li><a class="clc" href="#">Smartphones</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <button type="submit" class="header_search_button trans_300" value="Submit"><img
                                            src="https://preview.colorlib.com/theme/onetech/images/search.png.webp"
                                            alt=""></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
                    <div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
                        <div class="wishlist d-flex flex-row align-items-center justify-content-end">
                            <div class="wishlist_icon"><img
                                    src="https://preview.colorlib.com/theme/onetech/images/heart.png.webp" alt="">
                            </div>
                            <div class="wishlist_content">
                                <div class="wishlist_text"><a href="#">Wishlist</a></div>
                                <div class="wishlist_count">115</div>
                            </div>
                        </div>

                        <div class="cart">
                            <div class="cart_container d-flex flex-row align-items-center justify-content-end">
                                <div class="cart_icon">
                                    <img src="https://preview.colorlib.com/theme/onetech/images/cart.png.webp"
                                         alt="">
                                    <div class="cart_count"><span>10</span></div>
                                </div>
                                <div class="cart_content">
                                    <div class="cart_text"><a href="#">Cart</a></div>
                                    <div class="cart_price">$85</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="main_nav">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="main_nav_content d-flex flex-row">

                        <div class="cat_menu_container">
                            <div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
                                <div class="cat_burger"><span></span><span></span><span></span></div>
                                <div class="cat_menu_text">categories</div>
                            </div>
                            <ul class="cat_menu">
                                <li><a href="#">Computers & Laptops <i class="fas fa-chevron-right ml-auto"></i></a>
                                </li>
                                <li><a href="#">Cameras & Photos<i class="fas fa-chevron-right"></i></a></li>
                                <li class="hassubs">
                                    <a href="#">Hardware<i class="fas fa-chevron-right"></i></a>
                                    <ul>
                                        <li class="hassubs">
                                            <a href="#">Menu Item<i class="fas fa-chevron-right"></i></a>
                                            <ul>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a>
                                                </li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a>
                                                </li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a>
                                                </li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
                                        <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
                                        <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Smartphones & Tablets<i class="fas fa-chevron-right"></i></a></li>
                                <li><a href="#">TV & Audio<i class="fas fa-chevron-right"></i></a></li>
                                <li><a href="#">Gadgets<i class="fas fa-chevron-right"></i></a></li>
                                <li><a href="#">Car Electronics<i class="fas fa-chevron-right"></i></a></li>
                                <li><a href="#">Video Games & Consoles<i class="fas fa-chevron-right"></i></a></li>
                                <li><a href="#">Accessories<i class="fas fa-chevron-right"></i></a></li>
                            </ul>
                        </div>

                        <div class="main_nav_menu ml-auto">
                            <ul class="standard_dropdown main_nav_dropdown">
                                <li><a href="#">Home<i class="fas fa-chevron-down"></i></a></li>
                                <li class="hassubs">
                                    <a href="#">Super Deals<i class="fas fa-chevron-down"></i></a>
                                    <ul>
                                        <li>
                                            <a href="#">Menu Item<i class="fas fa-chevron-down"></i></a>
                                            <ul>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a>
                                                </li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a>
                                                </li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                    </ul>
                                </li>
                                <li class="hassubs">
                                    <a href="#">Featured Brands<i class="fas fa-chevron-down"></i></a>
                                    <ul>
                                        <li>
                                            <a href="#">Menu Item<i class="fas fa-chevron-down"></i></a>
                                            <ul>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a>
                                                </li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a>
                                                </li>
                                                <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                        <li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
                                    </ul>
                                </li>
                                <li class="hassubs">
                                    <a href="#">Pages<i class="fas fa-chevron-down"></i></a>
                                    <ul>
                                        <li><a href="shop.html">Shop<i class="fas fa-chevron-down"></i></a></li>
                                        <li><a href="product.html">Product<i class="fas fa-chevron-down"></i></a>
                                        </li>
                                        <li><a href="blog.html">Blog<i class="fas fa-chevron-down"></i></a></li>
                                        <li><a href="blog_single.html">Blog Post<i class="fas fa-chevron-down"></i></a>
                                        </li>
                                        <li><a href="regular.html">Regular Post<i
                                                class="fas fa-chevron-down"></i></a></li>
                                        <li><a href="cart.html">Cart<i class="fas fa-chevron-down"></i></a></li>
                                        <li><a href="contact.html">Contact<i class="fas fa-chevron-down"></i></a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="blog.html">Blog<i class="fas fa-chevron-down"></i></a></li>
                                <li><a href="contact.html">Contact<i class="fas fa-chevron-down"></i></a></li>
                            </ul>
                        </div>

                        <div class="menu_trigger_container ml-auto">
                            <div class="menu_trigger d-flex flex-row align-items-center justify-content-end">
                                <div class="menu_burger">
                                    <div class="menu_trigger_text">menu</div>
                                    <div class="cat_burger menu_burger_inner">
                                        <span></span><span></span><span></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <div class="page_menu">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="page_menu_content">
                        <div class="page_menu_search">
                            <form action="#">
                                <input type="search" required="required" class="page_menu_search_input"
                                       placeholder="Search for products...">
                            </form>
                        </div>
                        <ul class="page_menu_nav">
                            <li class="page_menu_item has-children">
                                <a href="#">Language<i class="fa fa-angle-down"></i></a>
                                <ul class="page_menu_selection">
                                    <li><a href="#">English<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">Italian<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">Spanish<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">Japanese<i class="fa fa-angle-down"></i></a></li>
                                </ul>
                            </li>
                            <li class="page_menu_item has-children">
                                <a href="#">Currency<i class="fa fa-angle-down"></i></a>
                                <ul class="page_menu_selection">
                                    <li><a href="#">US Dollar<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">EUR Euro<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">GBP British Pound<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">JPY Japanese Yen<i class="fa fa-angle-down"></i></a></li>
                                </ul>
                            </li>
                            <li class="page_menu_item">
                                <a href="#">Home<i class="fa fa-angle-down"></i></a>
                            </li>
                            <li class="page_menu_item has-children">
                                <a href="#">Super Deals<i class="fa fa-angle-down"></i></a>
                                <ul class="page_menu_selection">
                                    <li><a href="#">Super Deals<i class="fa fa-angle-down"></i></a></li>
                                    <li class="page_menu_item has-children">
                                        <a href="#">Menu Item<i class="fa fa-angle-down"></i></a>
                                        <ul class="page_menu_selection">
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                            <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                </ul>
                            </li>
                            <li class="page_menu_item has-children">
                                <a href="#">Featured Brands<i class="fa fa-angle-down"></i></a>
                                <ul class="page_menu_selection">
                                    <li><a href="#">Featured Brands<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                </ul>
                            </li>
                            <li class="page_menu_item has-children">
                                <a href="#">Trending Styles<i class="fa fa-angle-down"></i></a>
                                <ul class="page_menu_selection">
                                    <li><a href="#">Trending Styles<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                    <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                </ul>
                            </li>
                            <li class="page_menu_item"><a href="blog.html">blog<i class="fa fa-angle-down"></i></a>
                            </li>
                            <li class="page_menu_item"><a href="contact.html">contact<i
                                    class="fa fa-angle-down"></i></a></li>
                        </ul>
                        <div class="menu_contact">
                            <div class="menu_contact_item">
                                <div class="menu_contact_icon"><img
                                        src="https://preview.colorlib.com/theme/onetech/images/phone_white.png.webp"
                                        alt=""></div>
                                +38 068 005 3570
                            </div>
                            <div class="menu_contact_item">
                                <div class="menu_contact_icon"><img
                                        src="https://preview.colorlib.com/theme/onetech/https://preview.colorlib.com/theme/onetech/https://preview.colorlib.com/theme/onetech/https://preview.colorlib.com/theme/onetech/https://preview.colorlib.com/theme/onetech/images/mail_white.png.webp.webp.webp.webp.webp"
                                        alt=""></div>
                                <a href="/cdn-cgi/l/email-protection#b8ded9cbcccbd9d4ddcbf8dfd5d9d1d496dbd7d5"><span
                                        class="__cf_email__"
                                        data-cfemail="3b5d5a484f485a575e487b5c565a525715585456">[email&#160;protected]</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
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