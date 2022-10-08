<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />

        <link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
        <meta name="apple-mobile-web-app-title" content="CodePen" />

        <link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

        <link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <title>Login Page</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css" />

        <style>
            /* Please ❤ this if you like it! */

            @import url("https://fonts.googleapis.com/css?family=Poppins:400,500,600,700,800,900");
            body {
                font-family: "Poppins", sans-serif;
                font-weight: 300;
                font-size: 15px;
                line-height: 1.7;
                color: #c4c3ca;
                background-color: #1f2029;
                overflow-x: hidden;
            }

            a {
                cursor: pointer;
                transition: all 200ms linear;
            }

            a:hover {
                text-decoration: none;
            }

            .link {
                color: #c4c3ca;
            }

            .link:hover {
                color: #ffeba7;
            }

            p {
                font-weight: 500;
                font-size: 14px;
                line-height: 1.7;
            }

            h4 {
                font-weight: 600;
            }

            h6 span {
                padding: 0 20px;
                text-transform: uppercase;
                font-weight: 700;
            }

            .section {
                position: relative;
                width: 100%;
                display: block;
            }

            .full-height {
                min-height: 100vh;
            }

            [type="checkbox"]:checked,
            [type="checkbox"]:not(:checked) {
                position: absolute;
                left: -9999px;
            }

            .checkbox:checked+label,
            .checkbox:not(:checked)+label {
                position: relative;
                display: block;
                text-align: center;
                width: 60px;
                height: 16px;
                border-radius: 8px;
                padding: 0;
                margin: 10px auto;
                cursor: pointer;
                background-color: #ffeba7;
            }

            .checkbox:checked+label:before,
            .checkbox:not(:checked)+label:before {
                position: absolute;
                display: block;
                width: 36px;
                height: 36px;
                border-radius: 50%;
                color: #ffeba7;
                background-color: #102770;
                font-family: "unicons";
                content: "\eb4f";
                z-index: 20;
                top: -10px;
                left: -10px;
                line-height: 36px;
                text-align: center;
                font-size: 24px;
                transition: all 0.5s ease;
            }

            .checkbox:checked+label:before {
                transform: translateX(44px) rotate(-270deg);
            }

            .card-3d-wrap {
                position: relative;
                width: 440px;
                max-width: 100%;
                height: 400px;
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
                perspective: 800px;
                margin-top: 60px;
            }

            .card-3d-wrapper {
                width: 100%;
                height: 100%;
                position: absolute;
                top: 0;
                left: 0;
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
                transition: all 600ms ease-out;
            }

            .card-front,
            .card-back {
                width: 100%;
                height: 100%;
                background-color: #2a2b38;
                background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/1462889/pat.svg");
                background-position: bottom center;
                background-repeat: no-repeat;
                background-size: 300%;
                position: absolute;
                border-radius: 6px;
                left: 0;
                top: 0;
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
                -webkit-backface-visibility: hidden;
                -moz-backface-visibility: hidden;
                -o-backface-visibility: hidden;
                backface-visibility: hidden;
            }

            .card-back {
                transform: rotateY(180deg);
            }

            .checkbox:checked~.card-3d-wrap .card-3d-wrapper {
                transform: rotateY(180deg);
            }

            .center-wrap {
                position: absolute;
                width: 100%;
                padding: 0 35px;
                top: 50%;
                left: 0;
                transform: translate3d(0, -50%, 35px) perspective(100px);
                z-index: 20;
                display: block;
            }

            .form-group {
                position: relative;
                display: block;
                margin: 0;
                padding: 0;
            }

            .form-style {
                padding: 13px 20px;
                padding-left: 55px;
                height: 48px;
                width: 100%;
                font-weight: 500;
                border-radius: 4px;
                font-size: 14px;
                line-height: 22px;
                letter-spacing: 0.5px;
                outline: none;
                color: #c4c3ca;
                background-color: #1f2029;
                border: none;
                -webkit-transition: all 200ms linear;
                transition: all 200ms linear;
                box-shadow: 0 4px 8px 0 rgba(21, 21, 21, 0.2);
            }

            .form-style:focus,
            .form-style:active {
                border: none;
                outline: none;
                box-shadow: 0 4px 8px 0 rgba(21, 21, 21, 0.2);
            }

            .input-icon {
                position: absolute;
                top: 10;
                left: 18px;
                height: 45px;
                font-size: 24px;
                line-height: 48px;
                text-align: left;
                color: #ffeba7;
                -webkit-transition: all 200ms linear;
                transition: all 200ms linear;
            }

            .form-group input:-ms-input-placeholder {
                color: #c4c3ca;
                opacity: 0.7;
                -webkit-transition: all 200ms linear;
                transition: all 200ms linear;
            }

            .form-group input::-moz-placeholder {
                color: #c4c3ca;
                opacity: 0.7;
                -webkit-transition: all 200ms linear;
                transition: all 200ms linear;
            }

            .form-group input:-moz-placeholder {
                color: #c4c3ca;
                opacity: 0.7;
                -webkit-transition: all 200ms linear;
                transition: all 200ms linear;
            }

            .form-group input::-webkit-input-placeholder {
                color: #c4c3ca;
                opacity: 0.7;
                -webkit-transition: all 200ms linear;
                transition: all 200ms linear;
            }

            .form-group input:focus:-ms-input-placeholder {
                opacity: 0;
                -webkit-transition: all 200ms linear;
                transition: all 200ms linear;
            }

            .form-group input:focus::-moz-placeholder {
                opacity: 0;
                -webkit-transition: all 200ms linear;
                transition: all 200ms linear;
            }

            .form-group input:focus:-moz-placeholder {
                opacity: 0;
                -webkit-transition: all 200ms linear;
                transition: all 200ms linear;
            }

            .form-group input:focus::-webkit-input-placeholder {
                opacity: 0;
                -webkit-transition: all 200ms linear;
                transition: all 200ms linear;
            }

            .btn {
                border-radius: 4px;
                height: 44px;
                font-size: 13px;
                font-weight: 600;
                text-transform: uppercase;
                -webkit-transition: all 200ms linear;
                transition: all 200ms linear;
                padding: 0 30px;
                letter-spacing: 1px;
                display: -webkit-inline-flex;
                display: -ms-inline-flexbox;
                display: inline-flex;
                -webkit-align-items: center;
                -moz-align-items: center;
                -ms-align-items: center;
                align-items: center;
                -webkit-justify-content: center;
                -moz-justify-content: center;
                -ms-justify-content: center;
                justify-content: center;
                -ms-flex-pack: center;
                text-align: center;
                border: none;
                background-color: #ffeba7;
                color: #102770;
                box-shadow: 0 8px 24px 0 rgba(255, 235, 167, 0.2);
            }

            .btn:active,
            .btn:focus {
                background-color: #102770;
                color: #ffeba7;
                box-shadow: 0 8px 24px 0 rgba(16, 39, 112, 0.2);
            }

            .btn:hover {
                background-color: #102770;
                color: #ffeba7;
                box-shadow: 0 8px 24px 0 rgba(16, 39, 112, 0.2);
            }

            .logo {
                position: absolute;
                top: 30px;
                right: 30px;
                display: block;
                z-index: 100;
                transition: all 250ms linear;
            }

            .logo img {
                height: 26px;
                width: auto;
                display: block;
            }
        </style>

        <script>
            window.console = window.console || function (t) {};
        </script>

        <script>
            if (document.location.search.match(/type=embed/gi)) {
                window.parent.postMessage("resize", "*");
            }
        </script>
    </head>

    <body translate="no" data-new-gr-c-s-check-loaded="14.1082.0" data-gr-ext-installed="">

        <%
            String uname = "", pass = "", check = "";
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie c : cookies) {
                    if (c.getName().equals("cookieName")) {
                        uname = c.getValue();
                    } else if (c.getName().equals("cookiePass")) {
                        pass = c.getValue();
                    } else if (c.getName().equals("remember")) {
                        check = c.getValue();
                    }
                }
            }
        %>

        <div class="section">
            <div class="container">
                <div class="row full-height justify-content-center">
                    <div class="col-12 text-center align-self-center py-5">
                        <div class="section pb-5 pt-5 pt-sm-2 text-center">
                            <h6 class="mb-0 pb-3">
                                <span>Log In </span><span>Sign Up</span>
                            </h6>
                            <input class="checkbox" type="checkbox" id="reg-log" name="reg-log" />
                            <label for="reg-log"></label>
                            <div class="card-3d-wrap mx-auto">
                                <div class="card-3d-wrapper">
                                    <div class="card-front">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mb-4 pb-3">Log In</h4>
                                                <form action="LoginServlet" method="post">
                                                    <div class="form-group">
                                                        <input type="text" name="username" class="form-style" placeholder="Your Username" value="<%=uname%>"/>
                                                        <i class="input-icon uil uil-user-circle"></i>
                                                    </div>
                                                    <div class="form-group mt-2">
                                                        <input type="password" name="pass" class="form-style" placeholder="Your Password" value="<%=pass%>"/>
                                                        <i class="input-icon uil uil-lock-alt"></i>
                                                    </div>
                                                    <div class="form-group form-check mt-2">
                                                        <input type="checkbox" class="form-check" name="check" value="1" <%= "1".equals(check) ? "checked='/checked'" : ""%>>
                                                        <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                                                    </div>
                                                    <a class="btn mt-4"><button style="padding: 0;
                                                                                border: none;
                                                                                background: none;">Login</button></a>
                                                </form>

                                                <p class="mb-0 mt-4 text-center">
                                                    <a href="#" class="link">Forgot your password?</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-back">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mt-3 mb-3 pb-3">Sign Up</h4>
                                                <form action="SignupServlet" method="post">
                                                    <div class="form-group">
                                                        <input type="text" name="username" class="form-style" placeholder="Your Username"/>
                                                        <i class="input-icon uil uil-user-circle"></i>
                                                    </div>
                                                    <div class="form-group mt-1">
                                                        <input type="password" name="pass" class="form-style" placeholder="Your Pass"/>
                                                        <i class="input-icon uil uil-lock-alt"></i>
                                                    </div>
                                                    <div class="form-group mt-1">
                                                        <input type="email" name="email" class="form-style" placeholder="Your Email"/>
                                                        <i class="input-icon uil uil-at"></i>
                                                    </div>
                                                    <div class="form-group mt-1">
                                                        <input type="text" name="name" class="form-style" placeholder="Your Full Name"/>
                                                        <i class="input-icon uil uil-user"></i>
                                                    </div>
                                                    <div class="form-group mt-1">
                                                        <input type="text" name="phone" class="form-style" placeholder="Your Phone"/>
                                                        <i class="input-icon uil uil-phone-alt"></i>
                                                    </div>
                                                    <div class="form-group mt-1">
                                                        <p class="text-danger">${Error}</p>
                                                    </div>
                                                    <a class="btn mt-2"><button style="padding: 0;border: none;background: none;">Sign up</button></a>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>

    </body>
    <grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration>

</html>