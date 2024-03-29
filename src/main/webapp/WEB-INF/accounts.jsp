<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <title>Accounts - Dashboard </title>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
            <!-- https://fonts.google.com/specimen/Roboto -->
            <link rel="stylesheet" href="css/fontawesome.min.css">
            <!-- https://fontawesome.com/ -->
            <link rel="stylesheet" href="css/bootstrap.min.css">
            <!-- https://getbootstrap.com/ -->
            <link rel="stylesheet" href="css/templatemo-style.css">
            <!--
	Watch Store CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
        </head>

        <body id="accPage" onload="getCustomers()">
            <div class="" id="home">
                <nav class="navbar navbar-expand-xl">
                    <div class="container h-100">
                        <a class="navbar-brand" href="${request.contextPath}/Admin?path=products">
                            <h1 class="tm-site-title mb-0">Tick Tock</h1>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-bars tm-nav-icon"></i>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto h-100">
                                <li class="nav-item">
                                    <a class="nav-link" href="${request.contextPath}/Admin?path=products">
                                        <i class="fas fa-shopping-cart"></i>
                                        Products
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active" href="${request.contextPath}/Admin?path=accounts">
                                        <i class="far fa-user"></i>
                                        Accounts
                                    </a>
                                </li>
                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link d-block" href="${request.contextPath}/Admin?path=logout">
                                        Admin, <b>Logout</b>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="container">
                    <div class="row">
                        <div class="col">
                            <p class="text-white mt-5 mb-5">Welcome back, <b>Admin</b></p>
                        </div>
                    </div>

                    <div class="col-12 tm-block-col">
                        <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
                            <h2 class="tm-block-title">Customers Data</h2>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Customer Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Job</th>
                                        <th scope="col">Credit</th>
                                        <th scope="col">Age</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">Interests</th>
                                    </tr>
                                </thead>
                                <tbody id="cusotmers_table_tbody">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="tm-footer row tm-mt-small">
                <div class="col-12 font-weight-light">
                    <p class="text-center text-white mb-0 px-4 small">
                        Copyright &copy; <b>2023</b> All rights reserved.
                    </p>
                </div>
            </footer>
            </div>

            <script src="js/jquery-3.3.1.min.js"></script>
            <!-- https://jquery.com/download/ -->
            <script src="js/moment.min.js"></script>
            <!-- https://momentjs.com/ -->
            <script src="js/Chart.min.js"></script>
            <!-- http://www.chartjs.org/docs/latest/ -->
            <script src="js/bootstrap.min.js"></script>
            <!-- https://getbootstrap.com/ -->
            <script src="js/tooplate-scripts.js"></script>
            <script>

                function getCustomers() {

                    $.get("/getAllCustomers", function (data) {
                        console.log("back from servlet");
                        var customers = JSON.parse(data);
                        console.log(customers);

                        var tbodyData = '';

                        // Loop through the products array and add a row for each product
                        $.each(customers, function (index, customer) {
                            // <th scope="row"><input type="checkbox" /></th>
                            tbodyData += `<tr>
                                <td>` + customer.userName + `</td>
                                <td>
                                    <div class="tm-status-circle moving"></div>
                                    ` + customer.email + `
                                </td>
                                <td><b>` + customer.job + `</b></td>
                                <td><b>` + customer.creditLimit + `</b></td>
                                <td><b>` + customer.birthdate + `</b></td>
                                <td><b>` + customer.address + `</b></td>
                                <td><b>` + customer.interests + `</b></td>
                                
                            </tr>`
                        });

                        $('#cusotmers_table_tbody').html(tbodyData);

                    });

                }
            </script>
        </body>

        </html>