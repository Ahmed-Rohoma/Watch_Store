<%@ page contentType="text/html" pageEncoding="UTF-8" %>

    <%@taglib prefix="c" uri="jakarta.tags.core" %>

        <%@ page isELIgnored="false" %>

            <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />

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

                <!-- ...:::: Start Breadcrumb Section:::... -->
                <div class="breadcrumb-section breadcrumb-bg-color--golden">
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <div class="row">
                                <div class="col-12">
                                    <h3 class="breadcrumb-title">My Account</h3>
                                    <div
                                        class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
                                        <nav aria-label="breadcrumb">
                                            <ul>
                                                <li><a href="index.html">Home</a></li>
                                                <li><a href="shop-grid-sidebar-left.html">Shop</a></li>
                                                <li class="active" aria-current="page">My Account</li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- ...:::: End Breadcrumb Section:::... -->

                <!-- ...:::: Start Account Dashboard Section:::... -->
                <div class="account-dashboard">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-3 col-lg-3">
                                <!-- Nav tabs -->
                                <div class="dashboard_tab_button" data-aos="fade-up" data-aos-delay="0">
                                    <ul role="tablist" class="nav flex-column dashboard-list">
                                        <li> <a href="#orders" data-bs-toggle="tab"
                                                class="nav-link btn btn-block btn-md btn-black-default-hover">Orders</a>
                                        </li>
                                        <li><a href="#account-details" data-bs-toggle="tab"
                                                class="nav-link btn btn-block btn-md btn-black-default-hover">Account
                                                details</a>
                                        </li>
                                        <li><a href="/logout"
                                                class="nav-link btn btn-block btn-md btn-black-default-hover">logout</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-9 col-lg-9">
                                <!-- Tab panes -->
                                <div class="tab-content dashboard_content" data-aos="fade-up" data-aos-delay="200">

                                    <div class="tab-pane fade" id="orders">
                                        <h4>Orders</h4>
                                        <div class="table_page table-responsive">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th>Order</th>
                                                        <th>Date</th>
                                                        <th>Status</th>
                                                        <th>Total</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>May 10, 2018</td>
                                                        <td><span class="success">Completed</span></td>
                                                        <td>$25.00 for 1 item </td>
                                                        <td><a href="cart.html" class="view">view</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>May 10, 2018</td>
                                                        <td>Processing</td>
                                                        <td>$17.00 for 1 item </td>
                                                        <td><a href="cart.html" class="view">view</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="account-details">
                                        <h3>Account details </h3>
                                        <div class="login">
                                            <div class="login_form_container">
                                                <div class="account_login_form">


                                                    <div class="default-form-box mb-20">
                                                        <label>Name</label>
                                                        <input type="text" id="txtName"
                                                            value="${sessionScope.userData.getUserName()}" name="name">
                                                        <h6 id="validatename"
                                                            style="margin-top:10px;margin-left:10px; color: red;">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Email</label>
                                                        <input type="email" id="txtEmail"
                                                            value="${sessionScope.userData.getEmail()}"
                                                            name="email-name">
                                                        <h6 id="validateemail"
                                                            style="margin-top:10px;margin-left:10px; color: red;">
                                                            <span id="msgtxt"></span><br>
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Password</label>
                                                        <input type="password" id="txtPassword"
                                                            value="${sessionScope.userData.getPassword()}"
                                                            name="user-password">
                                                        <h6 id="validatepassword"
                                                            style="margin-top:10px;margin-left:10px; color: red;">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Job</label>
                                                        <input type="text" id="txtJob"
                                                            value="${sessionScope.userData.getJob()}" name="user-job">
                                                        <h6 id="validatejob"
                                                            style="margin-top:10px;margin-left:10px; color: red;">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Birthdate</label>
                                                        <input type="date" id="txtBirthday"
                                                            value="${sessionScope.userData.getBirthdate()}"
                                                            name="birthday">
                                                        <h6 id="validatebirthday"
                                                            style="margin-top:10px;margin-left:10px; color: red;">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Address</label>
                                                        <input type="text" id="txtAddress"
                                                            value="${sessionScope.userData.getAddress()}"
                                                            name="user-address">
                                                        <h6 id="validateaddress"
                                                            style="margin-top:10px;margin-left:10px; color:red;">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Interests</label>
                                                        <input type="text" id="txtInterests"
                                                            value="${sessionScope.userData.getInterests()}"
                                                            name="user-interests">
                                                        <h6 id="validateinterests"
                                                            style="margin-top:10px;margin-left:10px; color: red;">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Credit Limit</label>
                                                        <input type="number" id="txtCreditLimit"
                                                            value="${sessionScope.userData.getCreditLimit()}"
                                                            name="user-creditlimit">
                                                        <h6 id="validatecreditLimit"
                                                            style="margin-top:10px;margin-left:10px; color: red;">
                                                    </div>

                                                    <div class="save_button mt-3">
                                                        <div style="display: flex;">
                                                            <button class="btn btn-md btn-black-default-hover"
                                                                type="button" id="update">Update</button>
                                                            <h6 id="done"
                                                                style="margin-top:10px;margin-left:10px; color: green;">
                                                            </h6>
                                                        </div>
                                                        <br><br>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- ...:::: End Account Dashboard Section:::... -->

                <script src="../assets/js/vendor/vendor.min.js"></script>
                <script src="../assets/js/plugins/plugins.min.js"></script>

                <!-- Main JS -->
                <script src="../assets/js/main.js"></script>
                <script src="views/loginscript.js"></script>

                <script>
                    $(document).ready(function () {

                        const emailRegex = new RegExp(/^[A-Za-z0-9_!#$%&'*+\/=?`{|}~^.-]+@[A-Za-z0-9.-]+$/, "gm");
                        const nameRegex = new RegExp("^[A-Za-z]\\w{3,29}$");

                        $("#update").click(function () {
                            var name = $('#txtName').val();
                            var email = $('#txtEmail').val();
                            var password = $('#txtPassword').val();
                            var job = $('#txtJob').val();
                            var birthday = $('#txtBirthday').val();
                            var address = $('#txtAddress').val();
                            var interests = $('#txtInterests').val();
                            var creditLimit = $('#txtCreditLimit').val();

                            if (!name || !nameRegex.test(name) || !email || !emailRegex.test(email) || !password || !job || !birthday || !address || !interests || !creditLimit) {
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
                                $.post('http://localhost:8090/updateProfile', { name: name, email: email, password: password, job: job, birthday: birthday, address: address, interests: interests, creditlimit: creditLimit })
                                    .done(function (response) {
                                        // Handle the response from the server
                                        console.log(response + "/////////////////////Updated Successfully");

                                        if (response == "updated") {
                                            console.log("/////////////////////Updated Successfully");
                                            $('#done').html("Updated Successfully");
                                            setTimeout(function () {
                                                $('#done').html("");
                                            }, 5000);
                                        }
                                    })
                                    .fail(function (xhr, status, error) {
                                        // Handle errors
                                        console.log(error + "mmmmmmmmmmmmm" + status);
                                    });
                            }
                        });
                    });
                </script>

            </body>

            </html>