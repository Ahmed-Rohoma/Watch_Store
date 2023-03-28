<!DOCTYPE html>
<html>


<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>HONO - Multi Purpose HTML Template</title>

    <!-- ::::::::::::::Favicon icon::::::::::::::-->
    <link rel="shortcut icon" href="../assets/images/favicon.ico" type="image/png">

    <!-- Main CSS -->
    <!-- <link rel="stylesheet" href="../assets/sass/style.css"> -->

    <!-- Use the minified version files listed below for better performance and remove the files listed above -->
    <link rel="stylesheet" href="../assets/css/vendor/vendor.min.css">
    <link rel="stylesheet" href="../assets/css/plugins/plugins.min.css">
    <link rel="stylesheet" href="../assets/css/style.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page import="java.lang.Math" %>
            <%@ page isELIgnored="false" %>

</head>

<body>
    <%@ include file="header.jsp" %>

        <!-- Offcanvas Overlay -->
        <div class="offcanvas-overlay"></div>

        <!-- ...:::: Start Breadcrumb Section:::... -->
        <div class="breadcrumb-section breadcrumb-bg-color--golden">
            <div class="breadcrumb-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h3 class="breadcrumb-title">Cart</h3>
                            <div class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
                                <nav aria-label="breadcrumb">
                                    <ul>
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="shop-grid-sidebar-left.html">Shop</a>
                                        </li>
                                        <li class="active" aria-current="page">Cart</li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ...:::: End Breadcrumb Section:::... -->
        <div id="cartItemsDiv">
            <c:choose>
                <c:when test="${empty cart || cart.size() == 0 }">
                    <c:import url="empty-cart.jsp" />
                </c:when>
                <c:otherwise>
                    <!-- ...:::: Start Cart Section:::... -->
                    <div class="cart-section">
                        <!-- Start Cart Table -->
                        <div class="cart-table-wrapper" data-aos="fade-up" data-aos-delay="0">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="table_desc">
                                            <div class="table_page table-responsive">
                                                <table>
                                                    <!-- Start Cart Table Head -->
                                                    <thead>
                                                        <tr>
                                                            <th class="product_remove">
                                                                Delete</th>
                                                            <th class="product_thumb">Image
                                                            </th>
                                                            <th class="product_name">Product
                                                            </th>
                                                            <th class="product-price">Price
                                                            </th>
                                                            <th class="product_quantity">
                                                                Quantity</th>
                                                            <th class="product_total">Total
                                                            </th>
                                                        </tr>
                                                    </thead> <!-- End Cart Table Head -->
                                                    <tbody>
                                                        <!-- Display Cart Items -->
                                                        <c:forEach var="item" items="${cart}">
                                                            <!-- Start Cart Single Item-->

                                                            <tr>
                                                                <!-- Handel Remove item here -->
                                                                <td class="product_remove">
                                                                    <a href=""
                                                                        onclick="removeFromCart('${item.key}',event)"><i
                                                                            class="fa fa-trash-o"></i></a>
                                                                </td>
                                                                <td class="product_thumb">
                                                                    <a  href="/product-details?productId=${item.key}"><img
                                                                            src="../assets/images/product/default/home-1/default-1.jpg"
                                                                            alt=""></a>
                                                                </td>
                                                                <td class="product_name"><a href="/product-details?productId=${item.key}">
                                                                        ${item.value.getProductName()}
                                                                    </a></td>
                                                                <td class="product-price">
                                                                    $${item.value.getPrice()}</td>
                                                                <!-- Ajax of change quantity --- lead to change total price -->
                                                                <td class="product_quantity">
                                                                    <label>Quantity</label>
                                                                    <input min="1" max="100"
                                                                        value=${item.value.getitemQuantity()}
                                                                        type="number"
                                                                        onblur="addToCart('${item.key}',this.value,'${item.value.getPrice()}',event)">
                                                                </td>
                                                                <td class="product_total">
                                                                    <div id="${item.key}">$${item.value.getTotal()}
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <!-- End Cart Single Item-->
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- End Cart Table -->

                        <!-- Start Coupon Start -->
                        <div class="coupon_area">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="coupon_code right" data-aos="fade-up" data-aos-delay="400">
                                            <h3>Cart Totals</h3>
                                            <div class="coupon_inner">
                                                <div class="cart_subtotal">
                                                    <p>Total</p>
                                                    <p class="cart_amount">$${cartTotal}0</p>
                                                </div>
                                                <div class="checkout_btn">
                                                    <c:if test="${empty userData}">
                                                        <a href="/login" class="btn btn-md btn-golden">Proceed
                                                            to
                                                            Checkout</a>
                                                    </c:if>
                                                    <c:if test="${not empty userData}">
                                                        <a href="#" class="btn btn-md btn-golden"
                                                            onclick="processToCheckout('${cartTotal}','${userData.getCreditLimit()}')">Proceed
                                                            to
                                                            Checkout</a>
                                                    </c:if>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- End Coupon Start -->
                    </div> <!-- ...:::: End Cart Section:::... -->
                </c:otherwise>
            </c:choose>
        </div>

        <!-- Modal popup for warning message -->
        <div class="modal fade" id="warningModal" tabindex="-1" role="dialog" aria-labelledby="warningModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="warningModalLabel">Warning!</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>This is a warning message.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>


        <!-- material-scrolltop button -->
        <button class="material-scrolltop" type="button"></button>
        <%@ include file="footer.jsp" %>
            <script src="../assets/js/vendor/vendor.min.js"></script>
            <script src="../assets/js/plugins/plugins.min.js"></script>

            <!-- Main JS -->
            <script src="../assets/js/main.js"></script>
            <script>
                function removeFromCart(productId, e) {
                    // Prevent default link behavior
                    e.preventDefault();
                    // Make an AJAX request
                    $.ajax({
                        url: "/add-to-cart",
                        type: "GET",
                        data: { action: 'remove', productId: productId },
                        success: function (response) {
                            console.log("Remove from cart successfully!");
                            refreshCartItemsDiv();
                            return false;
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            // handle error response
                            console.log(textStatus, errorThrown);
                        }
                    });
                }
                function refreshCartItemsDiv() {
                    $.ajax({
                        url: "views/cart_items.jsp",
                        success: function (result) {
                            // console.log("successfully!");
                            console.log(result);
                            $("#cartItemsDiv").html(result);
                            console.log("successfully!");
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            // handle error response
                            console.log(textStatus, errorThrown);
                        }
                    });
                }
                function updateQuantity(productId, e) {
                    // Prevent default link behavior
                    e.preventDefault();
                    // Make an AJAX request
                    $.ajax({
                        url: "/add-to-cart",
                        type: "GET",
                        data: { action: 'add', productId: productId },
                        success: function (response) {

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            // handle error response
                            console.log(textStatus, errorThrown);
                        }
                    });
                }
                function addToCart(ProductId, Quantity, Price, e) {
                    console.log("Add Item to Cart productId = " + ProductId);
                    // Prevent default link behavior
                    e.preventDefault();
                    // Make an AJAX request
                    $.ajax({
                        url: "/add-to-cart",
                        type: "GET",
                        data: { action: 'add', productId: ProductId, quantity: Quantity },
                        success: function (response) {
                            // handle successful response
                            $("#content").html(response);
                            $("#" + ProductId).html("$" + Price * Quantity);
                            console.log("total: " + response);
                            $(".cart_amount").html("$" + response + 0);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            // handle error response
                            console.log(textStatus, errorThrown);
                        }
                    });
                }
                function checkout() {
                    console.log("checkout ------");
                    $.ajax({
                        url: "/checkout",
                        type: "GET",
                        success: function (response) {
                            console.log("checkout success ------");
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log("checkout error ------");

                        }
                    });
                    $('#modalAddcart').modal('toggle');

                }
                function processToCheckout(total, userLimit) {
                    // e.preventDefault();
                    if (total > userLimit) {
                        console.log("warningModal");
                        $('#warningModal').modal('show');
                    } else {
                        console.log("modalAddcart");
                        $('#modalAddcart').modal('toggle');
                    }
                }
            </script>
</body>

</html>