<%@ page contentType="text/html" pageEncoding="UTF-8" %>

    <%@taglib prefix="c" uri="jakarta.tags.core" %>

        <%@ page isELIgnored="false" %>

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
                                        <li><a href="#dashboard" data-bs-toggle="tab"
                                                class="nav-link btn btn-block btn-md btn-black-default-hover active">Dashboard</a>
                                        </li>
                                        <li> <a href="#orders" data-bs-toggle="tab"
                                                class="nav-link btn btn-block btn-md btn-black-default-hover">Orders</a>
                                        </li>
                                        <li><a href="#downloads" data-bs-toggle="tab"
                                                class="nav-link btn btn-block btn-md btn-black-default-hover">Downloads</a>
                                        </li>
                                        <li><a href="#address" data-bs-toggle="tab"
                                                class="nav-link btn btn-block btn-md btn-black-default-hover">Addresses</a>
                                        </li>
                                        <li><a href="#account-details" data-bs-toggle="tab"
                                                class="nav-link btn btn-block btn-md btn-black-default-hover">Account
                                                details</a>
                                        </li>
                                        <li><a href="login.jsp"
                                                class="nav-link btn btn-block btn-md btn-black-default-hover">logout</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-9 col-lg-9">
                                <!-- Tab panes -->
                                <div class="tab-content dashboard_content" data-aos="fade-up" data-aos-delay="200">
                                    <div class="tab-pane fade show active" id="dashboard">
                                        <h4>Dashboard </h4>
                                        <p>From your account dashboard. you can easily check &amp; view your <a
                                                href="#">recent
                                                orders</a>, manage your <a href="#">shipping and billing addresses</a>
                                            and
                                            <a href="#">Edit your password and account details.</a>
                                        </p>
                                    </div>
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
                                    <div class="tab-pane fade" id="downloads">
                                        <h4>Downloads</h4>
                                        <div class="table_page table-responsive">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th>Product</th>
                                                        <th>Downloads</th>
                                                        <th>Expires</th>
                                                        <th>Download</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Shopnovilla - Free Real Estate PSD Template</td>
                                                        <td>May 10, 2018</td>
                                                        <td><span class="danger">Expired</span></td>
                                                        <td><a href="#" class="view">Click Here To Download Your
                                                                File</a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Organic - ecommerce html template</td>
                                                        <td>Sep 11, 2018</td>
                                                        <td>Never</td>
                                                        <td><a href="#" class="view">Click Here To Download Your
                                                                File</a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="address">
                                        <p>The following addresses will be used on the checkout page by default.</p>
                                        <h5 class="billing-address">Billing address</h5>
                                        <a href="#" class="view">Edit</a>
                                        <p><strong>Bobby Jackson</strong></p>
                                        <address>
                                            Address: Your address goes here.
                                        </address>
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
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Email</label>
                                                        <input type="email" id="txtEmail"
                                                            value="${sessionScope.userData.getEmail()}"
                                                            name="email-name">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Password</label>
                                                        <input type="password" id="txtPassword"
                                                            value="${sessionScope.userData.getPassword()}"
                                                            name="user-password">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Job</label>
                                                        <input type="text" id="txtJob"
                                                            value="${sessionScope.userData.getJob()}" name="user-job">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Birthdate</label>
                                                        <input type="date" id="txtBirthday"
                                                            value="${sessionScope.userData.getBirthdate()}"
                                                            name="birthday">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Address</label>
                                                        <input type="text" id="txtAddress"
                                                            value="${sessionScope.userData.getAddress()}"
                                                            name="user-address">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Interests</label>
                                                        <input type="text" id="txtInterests"
                                                            value="${sessionScope.userData.getInterests()}"
                                                            name="user-interests">
                                                    </div>
                                                    <div class="default-form-box mb-20">
                                                        <label>Credit Limit</label>
                                                        <input type="number" id="txtCreditLimit"
                                                            value="${sessionScope.userData.getCreditLimit()}"
                                                            name="user-creditlimit">
                                                    </div>

                                                    <div class="save_button mt-3">
                                                        <div style="display: flex;">
                                                            <button class="btn btn-md btn-black-default-hover"
                                                                type="button" id="update">Update</button>
                                                            <h6 id="done"
                                                                style="margin-top:10px;margin-left:10px; color: green;">
                                                            </h6>
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
                </div> <!-- ...:::: End Account Dashboard Section:::... -->

                <script src="../assets/js/vendor/vendor.min.js"></script>
                <script src="../assets/js/plugins/plugins.min.js"></script>

                <!-- Main JS -->
                <script src="../assets/js/main.js"></script>

                <script>
                    $(document).ready(function () {

                        $("#update").click(function () {
                            console.log("register/////////////////////");
                            var name = $('#txtName').val();
                            var email = $('#txtEmail').val();
                            var password = $('#txtPassword').val();
                            var job = $('#txtJob').val();
                            var birthday = $('#txtBirthday').val();
                            var address = $('#txtAddress').val();
                            var interests = $('#txtInterests').val();
                            var creditLimit = $('#txtCreditLimit').val();

                            console.log(name + "   " + email + "   " + password + "   " + job + "   " + birthday + "   " + address + "   " + interests + "   " + creditLimit);
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
                        });
                    });
                </script>

            </body>

            </html>