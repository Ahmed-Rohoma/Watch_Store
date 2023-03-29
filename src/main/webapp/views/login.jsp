<%@ page contentType="text/html" pageEncoding="UTF-8" %>

         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@ page isELIgnored="false" %>


                <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

                    <title>HONO - Multi Purpose HTML Template</title>

                        <!-- ::::::::::::::Favicon icon::::::::::::::-->
                        <link rel="shortcut icon" href="../assets/images/favicon.ico" type="image/png">

                        <!-- Use the minified version files listed below for better performance and remove the files listed above -->
                        <link rel="stylesheet" href="../assets/css/vendor/vendor.min.css">
                        <link rel="stylesheet" href="../assets/css/plugins/plugins.min.css">
                        <link rel="stylesheet" href="../assets/css/style.min.css">

                </head>

                <body>

                    <%@ include file="header.jsp" %>

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
                                            <div class="default-form-box">
                                                <label>Email <span>*</span></label>
                                                <input type="text" id="email">
                                                <h6 id="emailmsg" style="margin-top:10px;margin-left:10px; color: red;">
                                                </h6>
                                            </div>
                                            <div class="default-form-box">
                                                <label>Passwords <span>*</span></label>
                                                <input type="password" id="password">
                                                <h6 id="passmsg" style="margin-top:10px;margin-left:10px; color: red;">
                                                </h6>
                                            </div>
                                            <div class="login_submit">
                                                <div style="display: flex;">
                                                    <button class="btn btn-md btn-black-default-hover mb-4"
                                                        type="button" id="loginbtn">login</button>
                                                    <h6 id="error"
                                                        style="margin-top:10px;margin-left:10px; color: red;">
                                                    </h6>
                                                </div>

                                                <label class="checkbox-default mb-4" for="offer">
                                                    <input type="checkbox" name="remember" id="offer">
                                                    <span>Remember me</span>
                                                </label>
                                                <!-- <a href="#">Lost your password?</a> -->
                                            </div>
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
                                                    <h6 id="validatename"
                                                        style="margin-top:10px;margin-left:10px; color: red;">
                                                </div>
                                                <div class="default-form-box">
                                                    <label>Email <span>*</span></label>
                                                    <input type="text" name="email" id="txtEmail"
                                                        onblur="checkEmail();">
                                                    <h6 id="validateemail"
                                                        style="margin-top:10px;margin-left:10px; color: red;">
                                                        <span id="msgtxt"></span><br>
                                                </div>
                                                <div class="default-form-box">
                                                    <label>Password <span>*</span></label>
                                                    <input type="password" name="password" id="txtPassword">
                                                    <h6 id="validatepassword"
                                                        style="margin-top:10px;margin-left:10px; color: red;">
                                                </div>
                                                <div class="default-form-box">
                                                    <label>Confirm Password <span>*</span></label>
                                                    <input type="password" id="txtConfirmPassword">
                                                    <h6 id="validateConPassword"
                                                        style="margin-top:10px;margin-left:10px; color: red;">
                                                </div>
                                                <div class="default-form-box">
                                                    <label>Job <span>*</span></label>
                                                    <input type="text" name="job" id="txtJob">
                                                    <h6 id="validatejob"
                                                        style="margin-top:10px;margin-left:10px; color: red;">
                                                </div>
                                                <div class="default-form-box">
                                                    <label>Birthday <span>*</span></label>
                                                    <input type="date" name="birthday" id="txtBirthday">
                                                    <h6 id="validatebirthday"
                                                        style="margin-top:10px;margin-left:10px; color: red;">
                                                </div>
                                                <div class="default-form-box">
                                                    <label>Address <span>*</span></label>
                                                    <input type="text" name="address" id="txtAddress">
                                                    <h6 id="validateaddress"
                                                        style="margin-top:10px;margin-left:10px; color:red;">
                                                </div>
                                                <div class="default-form-box">
                                                    <label>Interests <span>*</span></label>
                                                    <input type="text" name="interests" id="txtInterests">
                                                    <h6 id="validateinterests"
                                                        style="margin-top:10px;margin-left:10px; color: red;">
                                                </div>
                                                <div class="default-form-box">
                                                    <label>Credit Limit<span>*</span></label>
                                                    <input type="number" name="creditLimit" id="txtCreditLimit">
                                                    <h6 id="validatecreditLimit"
                                                        style="margin-top:10px;margin-left:10px; color: red;">
                                                </div>
                                                <div class="login_submit">
                                                    <button class="btn btn-md btn-black-default-hover" type="button"
                                                        id="regbtn">Register</button>
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
                        <script>

                            $(document).ready(function () {

                                const emailRegex = new RegExp(/^[A-Za-z0-9_!#$%&'*+\/=?`{|}~^.-]+@[A-Za-z0-9.-]+$/, "gm");
                                const nameRegex = new RegExp("^[A-Za-z]\\w{3,29}$");

                                $("#loginbtn").click(function () {
                                    console.log("Login Page");
                                    var email = $('#email').val();
                                    var password = $('#password').val();

                                    if (!email || !emailRegex.test(email) || !password) {

                                        if (!email)
                                            $("#emailmsg").html("Email is required");
                                        else if (!emailRegex.test(email))
                                            $("#emailmsg").html("Invalid Email");
                                        else
                                            $("#emailmsg").html("");
                                        if (!password)
                                            $("#passmsg").html("Password is required");
                                        else
                                            $("#passmsg").html("");
                                    } else {
                                        $("#emailmsg").html("");
                                        $("#passmsg").html("");
                                        $.post('auth', { email: email, password: password })
                                            .done(function (response) {
                                                // Handle the response from the server
                                                console.log("RESPONSE " + response);

                                                if (response[0] == "V") {
                                                    $("#error").html("");
                                                    if (response[1] == "A")
                                                        window.location = "/Admin?path=index";

                                                    if (response[1] == "U") {
                                                        console.log(".... " + response[2]);
                                                        window.location = "/profile";
                                                    }

                                                } else {
                                                    console.log(email + password);
                                                    $("#error").html("  Invalid email or Password");
                                                    console.log(" Invalid email or Password");
                                                }
                                            })
                                            .fail(function (xhr, status, error) {
                                                // Handle errors
                                                console.log(error);
                                            });
                                    }
                                });

                                $("#regbtn").click(function () {
                                    var name = $('#txtName').val();
                                    var email = $('#txtEmail').val();
                                    var password = $('#txtPassword').val();
                                    var confirmPassword = $('#txtConfirmPassword').val();
                                    var job = $('#txtJob').val();
                                    var birthday = $('#txtBirthday').val();
                                    var address = $('#txtAddress').val();
                                    var interests = $('#txtInterests').val();
                                    var creditLimit = $('#txtCreditLimit').val();

                                    if (!name || !nameRegex.test(name) || !email || !emailRegex.test(email) || !password || !confirmPassword || password != confirmPassword || !job || !birthday || !address || !interests || !creditLimit) {
                                        if (!name)
                                            $("#validatename").html("Name is required");
                                        else if (!nameRegex.test(name))
                                            $("#validatename").html("Invalid Name");
                                        else
                                            $("#validatename").html("");


                                        if (!email)
                                            $("#validateemail").html("Email is required");
                                        else if (!emailRegex.test(email))
                                            $("#validateemail").html("Invalid Email");
                                        else
                                            $("#validateemail").html("");


                                        if (!password)
                                            $("#validatepassword").html("Password is required");
                                        else
                                            $("#validatepassword").html("");


                                        if (!confirmPassword)
                                            $("#validateConPassword").html("Confirm Password is required");
                                        else if (password != confirmPassword)
                                            $("#validateConPassword").html("Password and Confirm Password must be Same");
                                        else
                                            $("#validateConPassword").html("");


                                        if (!job)
                                            $("#validatejob").html("Job is required");
                                        else
                                            $("#validatejob").html("");


                                        if (!birthday)
                                            $("#validatebirthday").html("Birthday is required");
                                        else
                                            $("#validatebirthday").html("");


                                        if (!address)
                                            $("#validateaddress").html("Address is required");
                                        else
                                            $("#validateaddress").html("");


                                        if (!interests)
                                            $("#validateinterests").html("Interests is required");
                                        else
                                            $("#validateinterests").html("");


                                        if (!creditLimit)
                                            $("#validatecreditLimit").html("criditLimit is required");
                                        else
                                            $("#validatecreditLimit").html("");

                                    } else {

                                        $.post('register', { name: name, email: email, password: password, job: job, birthday: birthday, address: address, interests: interests, creditlimit: creditLimit })
                                            .done(function (response) {
                                                // Handle the response from the server
                                                console.log(response + "/////////////////////");

                                                if (response == "done") {
                                                    window.location.href = "views/index.jsp";
                                                }
                                            })
                                            .fail(function (xhr, status, error) {
                                                // Handle errors
                                                console.log(error + "mmmmmmmmmmmmm");
                                            });
                                    }
                                });

                            });
                        </script>
                </body>


                </html>