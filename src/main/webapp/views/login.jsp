<%@ page contentType="text/html" pageEncoding="UTF-8" %>

    <%@taglib prefix="c" uri="jakarta.tags.core" %>

        <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />

            <title>HONO - Multi Purpose HTML Template</title>

            <!-- ::::::::::::::Favicon icon::::::::::::::-->
            <link rel="shortcut icon" href="../assets/images/favicon.ico" type="image/png">

            <!-- ::::::::::::::All CSS Files here :::::::::::::: -->
            <!-- Vendor CSS -->
            <!-- <link rel="stylesheet" href="assets/css/vendor/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/vendor/ionicons.css">
    <link rel="stylesheet" href="assets/css/vendor/simple-line-icons.css">
    <link rel="stylesheet" href="assets/css/vendor/jquery-ui.min.css"> -->

            <!-- Plugin CSS -->
            <!-- <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css">
    <link rel="stylesheet" href="assets/css/plugins/animate.min.css">
    <link rel="stylesheet" href="assets/css/plugins/nice-select.css">
    <link rel="stylesheet" href="assets/css/plugins/venobox.min.css">
    <link rel="stylesheet" href="assets/css/plugins/jquery.lineProgressbar.css">
    <link rel="stylesheet" href="assets/css/plugins/aos.min.css"> -->

            <!-- Main CSS -->
            <!-- <link rel="stylesheet" href="assets/sass/style.css"> -->

            <!-- Use the minified version files listed below for better performance and remove the files listed above -->
            <link rel="stylesheet" href="../assets/css/vendor/vendor.min.css">
            <link rel="stylesheet" href="../assets/css/plugins/plugins.min.css">
            <link rel="stylesheet" href="../assets/css/style.min.css">

        </head>

        <body>

            <!-- Offcanvas Overlay -->
            <!-- <div class="offcanvas-overlay"></div> -->

            <!-- ...:::: Start Breadcrumb Section:::... -->
            <div class="breadcrumb-section breadcrumb-bg-color--golden">
                <div class="breadcrumb-wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <h3 class="breadcrumb-title">Login</h3>
                                <div
                                    class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
                                    <nav aria-label="breadcrumb">
                                        <ul>
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="shop-grid-sidebar-left.html">Shop</a></li>
                                            <li class="active" aria-current="page">Login</li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- ...:::: End Breadcrumb Section:::... -->

            <!-- ...:::: Start Customer Login Section :::... -->
            <div class="customer-login">
                <div class="container">
                    <div class="row">
                        <!--login area start-->
                        <div class="col-lg-6 col-md-6">
                            <div class="account_form" data-aos="fade-up" data-aos-delay="0">
                                <h3>login</h3>
                                <form action="auth" method="POST">
                                    <div class="default-form-box">
                                        <label>Email <span>*</span></label>
                                        <input type="text" name="email">
                                    </div>
                                    <div class="default-form-box">
                                        <label>Passwords <span>*</span></label>
                                        <input type="password" name="password">
                                    </div>
                                    <div class="login_submit">
                                        <div style="display: flex;">
                                            <button class="btn btn-md btn-black-default-hover mb-4"
                                                type="submit">login</button>
                                            <c:if test="${error}">
                                                <h6 style="color: red;">Invalid email or Password</h6>
                                            </c:if>
                                        </div>

                                        <label class="checkbox-default mb-4" for="offer">
                                            <input type="checkbox" name="remember" id="offer">
                                            <span>Remember me</span>
                                        </label>
                                        <!-- <a href="#">Lost your password?</a> -->
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!--login area start-->

                        <!--register area start-->
                        <div class="col-lg-6 col-md-6">
                            <div class="account_form register" data-aos="fade-up" data-aos-delay="200">
                                <h3>Register</h3>
                                <form action="register" method="POST">

                                    <div class="default-form-box">
                                        <label>Name <span>*</span></label>
                                        <input type="text" name="name" id="txtName">
                                    </div>
                                    <div class="default-form-box">
                                        <label>Email <span>*</span></label>
                                        <input type="text" name="email" id="txtEmail" onblur="checkEmail();">
                                    </div>
                                    <span id="msgtxt"></span><br>
                                    <div class="default-form-box">
                                        <label>Password <span>*</span></label>
                                        <input type="password" name="password" id="txtPassword">
                                    </div>
                                    <div class="default-form-box">
                                        <label>Confirm Password <span>*</span></label>
                                        <input type="password" id="txtConfirmPassword">
                                    </div>
                                    <div class="default-form-box">
                                        <label>Job <span>*</span></label>
                                        <input type="text" name="job" id="txtJob">
                                    </div>
                                    <div class="default-form-box">
                                        <label>Birthday <span>*</span></label>
                                        <input type="date" name="birthday" id="txtBirthday">
                                    </div>
                                    <div class="default-form-box">
                                        <label>Address <span>*</span></label>
                                        <input type="text" name="address" id="txtAddress">
                                    </div>
                                    <div class="default-form-box">
                                        <label>Interests <span>*</span></label>
                                        <input type="text" name="interests" id="txtInterests">
                                    </div>
                                    <div class="default-form-box">
                                        <label>Credit Limit<span>*</span></label>
                                        <input type="text" name="creditLimit" id="txtCreditLimit">
                                    </div>
                                    <div class="login_submit">
                                        <button class="btn btn-md btn-black-default-hover" type="submit" id="regsubmit"
                                            disabled>Register</button>
                                    </div>
                                    <br>
                                </form>
                            </div>
                        </div>
                        <!--register area end-->
                    </div>
                </div>
            </div> <!-- ...:::: End Customer Login Section :::... -->



            <!-- material-scrolltop button -->
            <!-- <button class="material-scrolltop" type="button"></button> -->


            <!-- ::::::::::::::All JS Files here :::::::::::::: -->
            <!-- Global Vendor, plugins JS -->
            <!-- <script src="../assets/js/vendor/modernizr-3.11.2.min.js"></script>
    <script src="../assets/js/vendor/jquery-3.5.1.min.js"></script>
    <script src="../assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
    <script src="../assets/js/vendor/popper.min.js"></script>
    <script src="../assets/js/vendor/bootstrap.min.js"></script>
    <script src="../assets/js/vendor/jquery-ui.min.js"></script>  -->

            <!--Plugins JS-->
            <!-- <script src="../assets/js/plugins/swiper-bundle.min.js"></script>
    <script src="../assets/js/plugins/material-scrolltop.js"></script>
    <script src="../assets/js/plugins/jquery.nice-select.min.js"></script>
    <script src="../assets/js/plugins/jquery.zoom.min.js"></script>
    <script src="../assets/js/plugins/venobox.min.js"></script>
    <script src="../assets/js/plugins/jquery.waypoints.js"></script>
    <script src="../assets/js/plugins/jquery.lineProgressbar.js"></script>
    <script src="../assets/js/plugins/aos.min.js"></script>
    <script src="../assets/js/plugins/jquery.instagramFeed.js"></script>
    <script src="../assets/js/plugins/ajax-mail.js"></script> -->

            <!-- Use the minified version files listed below for better performance and remove the files listed above -->
            <script src="../assets/js/vendor/vendor.min.js"></script>
            <script src="../assets/js/plugins/plugins.min.js"></script>

            <!-- Main JS -->
            <script src="../assets/js/main.js"></script>
            <script src="views/loginscript.js"></script>

        </body>


        </html>