<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

<style>
    body {
        background-color: rgb(239 242 244 / 98%);
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
        background-image: url("./img/mobile-background.jpg");
        /*background-repeat: no-repeat;*/
        background-size: cover;
    }

    .login-box {
        position: relative;
        margin: 60px auto;
        width: 500px;
        height: 380px;
        background-color: #fff;
        padding: 10px;
        border-radius: 3px;
        -webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.33);
        -moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.33);
        box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.33);
    }

    .lb-header {
        position: relative;
        color: #00415d;
        margin: 5px 5px 10px 5px;
        padding-bottom: 10px;
        border-bottom: 1px solid #eee;
        text-align: center;
        height: 28px;
    }

    .lb-header a {
        margin: 0 25px;
        padding: 0 20px;
        text-decoration: none;
        color: #666;
        font-weight: bold;
        font-size: 20px;
        -webkit-transition: all 0.1s linear;
        -moz-transition: all 0.1s linear;
        transition: all 0.1s linear;
    }

    .lb-header .active {
        color: #029f5b;
        font-size: 25px;
    }

    .social-login {
        position: relative;
        float: left;
        width: 100%;
        height: auto;
        padding: 10px 0 15px 0;
        border-bottom: 1px solid #eee;
    }

    .social-login a {
        position: relative;
        float: left;
        width: calc(40% - 8px);
        text-decoration: none;
        color: #fff;
        border: 1px solid rgba(0, 0, 0, 0.05);
        padding: 12px;
        border-radius: 2px;
        font-size: 12px;
        text-transform: uppercase;
        margin: 0 3%;
        text-align: center;
    }

    .social-login a i {
        position: relative;
        float: left;
        width: 20px;
        top: 2px;
    }

    .social-login a:first-child {
        background-color: #49639F;
    }

    .social-login a:last-child {
        background-color: #DF4A32;
    }

    .email-login, .email-signup {
        position: relative;
        float: left;
        width: 100%;
        height: auto;
        margin-top: 20px;
        text-align: center;
    }

    .u-form-group {
        width: 100%;
        margin-bottom: 10px;
    }

    .u-form-group input[type="email"],
    .u-form-group input[type="password"] {
        width: calc(50% - 22px);
        height: 45px;
        outline: none;
        border: 1px solid #ddd;
        padding: 0 10px;
        border-radius: 2px;
        color: #333;
        font-size: 1rem;
        -webkit-transition: all 0.1s linear;
        -moz-transition: all 0.1s linear;
        transition: all 0.1s linear;
    }

    .u-form-group input:focus {
        border-color: #358efb;
    }

    .u-form-group button {
        width: 50%;
        background-color: #1CB94E;
        border: none;
        outline: none;
        color: #fff;
        font-size: 14px;
        font-weight: normal;
        padding: 14px 0;
        border-radius: 2px;
        text-transform: uppercase;
    }

    .forgot-password {
        width: 50%;
        text-align: left;
        text-decoration: underline;
        color: #888;
        font-size: 0.8rem;
    }
</style>

<section class="container">
    <div class="login-box">
        <div class="lb-header">
            <a href="#" class="active" id="login-box-link">Login</a>
            <a href="#" id="signup-box-link">Register</a>
        </div>
        <div class="social-login">
            <%--basic_flow && alter_flow_1 && alter_flow_2 : 1.chọn nút đăng nhập bằng Facebook--%>
            <a href="#" onclick="loginFacebook()">
                <i class="fa-brands fa-facebook"></i>
                Login with facebook
            </a>
            <a href="#">
                <i class="fa-brands fa-google"></i>
                Login with Google
            </a>
        </div>
        <form class="email-login">
            <div class="u-form-group">
                <input type="email" placeholder="Email"/>
            </div>
            <div class="u-form-group">
                <input type="password" placeholder="Password"/>
            </div>
            <div class="u-form-group">
                <button>Login</button>
            </div>
            <div class="u-form-group">
                <a href="#" class="forgot-password">Forgot password?</a>
            </div>
        </form>
        <form class="email-signup">
            <div class="u-form-group">
                <input type="email" placeholder="Email"/>
            </div>
            <div class="u-form-group">
                <input type="password" placeholder="Password"/>
            </div>
            <div class="u-form-group">
                <input type="password" placeholder="Retype password"/>
            </div>
            <div class="u-form-group">
                <button>Register</button>
            </div>
        </form>
    </div>
</section>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
        crossorigin="anonymous"></script>

<script>
    $(".email-signup").hide();
    $("#signup-box-link").click(function () {
        $(".email-login").fadeOut(100);
        $(".email-signup").delay(100).fadeIn(100);
        $("#login-box-link").removeClass("active");
        $("#signup-box-link").addClass("active");
    });
    $("#login-box-link").click(function () {
        $(".email-login").delay(100).fadeIn(100);
        ;
        $(".email-signup").fadeOut(100);
        $("#login-box-link").addClass("active");
        $("#signup-box-link").removeClass("active");
    });
</script>

<script>
    function loginFacebook() {
        <%--basic_flow && alter_flow_1 && alter_flow_2 : 2.chuyển đến trang xác thực tài khoản Fb--%>
        let clientId = "<%=request.getAttribute("clientIdFb")%>"
        let redirectUri = "<%=request.getAttribute("redirectUrlFb")%>"
        let linkAuthentication = 'https://www.facebook.com/dialog/oauth?client_id='
            + clientId + '&redirect_uri=' + redirectUri + '&scope=public_profile,email'
        window.location = linkAuthentication
    }
</script>
</html>