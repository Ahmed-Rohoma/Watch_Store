<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        </head>

        <body>
            <%@ include file="header.jsp" %>
                <%@ page isELIgnored="false" %>

                    <c:choose>
                        <c:when test="${empty ProductModel}">
                            <c:import url="unavailable-product.jsp" />
                        </c:when>
                        <c:otherwise>
                            <!-- ...:::: Start Breadcrumb Section:::... -->
                            <div class="breadcrumb-section breadcrumb-bg-color--golden">
                                <div class="breadcrumb-wrapper">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-12">
                                                <h3 class="breadcrumb-title">Product Details - Variable</h3>
                                                <div
                                                    class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
                                                    <nav aria-label="breadcrumb">
                                                        <ul>
                                                            <li><a href="index.html">Home</a></li>
                                                            <li><a href="shop-grid-sidebar-left.html">Shop</a></li>
                                                            <li class="active" aria-current="page">Product Details
                                                                Variable</li>
                                                        </ul>
                                                    </nav>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- ...:::: End Breadcrumb Section:::... -->
                            <!-- Start Product Details Section -->
                            <div class="product-details-section">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-5 col-lg-6">
                                            <div class="product-details-gallery-area" data-aos="fade-up"
                                                data-aos-delay="0">
                                                <!-- Start Large Image -->
                                                <div
                                                    class="product-large-image product-large-image-horaizontal swiper-container">
                                                    <div class="swiper-wrapper">
                                                        <div
                                                            class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
                                                            <img src="../assets/images/product/default/home-1/default-1.jpg"
                                                                alt="">
                                                        </div>
                                                        <div
                                                            class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
                                                            <img src="../assets/images/product/default/home-1/default-2.jpg"
                                                                alt="">
                                                        </div>
                                                        <div
                                                            class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
                                                            <img src="../assets/images/product/default/home-1/default-3.jpg"
                                                                alt="">
                                                        </div>
                                                        <div
                                                            class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
                                                            <img src="../assets/images/product/default/home-1/default-4.jpg"
                                                                alt="">
                                                        </div>
                                                        <div
                                                            class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
                                                            <img src="../assets/images/product/default/home-1/default-5.jpg"
                                                                alt="">
                                                        </div>
                                                        <div
                                                            class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
                                                            <img src="../assets/images/product/default/home-1/default-6.jpg"
                                                                alt="">
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-xl-7 col-lg-6">
                                            <div class="product-details-content-area product-details--golden"
                                                data-aos="fade-up" data-aos-delay="200">
                                                <!-- Start  Product Details Text Area-->
                                                <div class="product-details-text">
                                                    <h4 class="title">
                                                        ${ProductModel.getProductName()}
                                                    </h4>
                                                    <div class="d-flex align-items-center">
                                                        <ul class="review-star">
                                                            <li class="fill"><i class="ion-android-star"></i></li>
                                                            <li class="fill"><i class="ion-android-star"></i></li>
                                                            <li class="fill"><i class="ion-android-star"></i></li>
                                                            <li class="fill"><i class="ion-android-star"></i></li>
                                                            <li class="empty"><i class="ion-android-star"></i></li>
                                                        </ul>
                                                        <a href="#" class="customer-review ml-2">(customer review
                                                            )</a>
                                                    </div>
                                                    <div class="price">$${ProductModel.getPrice()}
                                                    </div>
                                                    <p>
                                                        ${ProductModel.getDescription()}
                                                    </p>
                                                </div> <!-- End  Product Details Text Area-->
                                                <!-- Start Product Variable Area -->
                                                <div class="product-details-variable">
                                                    <h4 class="title">Available Options</h4>
                                                    <!-- Product Variable Single Item -->
                                                    <div class="variable-single-item">
                                                        <div class="product-stock"> <span class="product-stock-in"><i
                                                                    class="ion-checkmark-circled"></i></span>
                                                            ${ProductModel.getQuantity()} IN
                                                            STOCK
                                                        </div>
                                                    </div>
                                                    <!-- Product Variable Single Item -->
                                                    <div class="d-flex align-items-center ">
                                                        <div class="variable-single-item ">
                                                            <span>Quantity</span>
                                                            <div class="product-variable-quantity">
                                                                <c:choose>
                                                                    <c:when test="${product.getQuantity() lt 20}">
                                                                        <input min="1"
                                                                            max="${ProductModel.getQuantity()}"
                                                                            value="1" type="number" id="quantity">
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <input min="1" max='20'
                                                                            value="${empty ProductModel.getitemQuantity() ? '1' : ProductModel.getitemQuantity()}"
                                                                            type="number" id="quantity">
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </div>
                                                        </div>

                                                        <div class="product-add-to-cart-btn"
                                                            onclick="addToCart('${ProductModel.getProductId()}')">
                                                            <a href="#">+
                                                                Add To Cart</a>
                                                        </div>
                                                    </div>
                                                    <!-- Start  Product Details Meta Area-->
                                                    <div class="product-details-meta mb-20">
                                                        <a href="wishlist.html" class="icon-space-right"><i
                                                                class="icon-heart"></i>Add to
                                                            wishlist</a>
                                                        <a href="compare.html" class="icon-space-right"><i
                                                                class="icon-refresh"></i>Compare</a>
                                                    </div> <!-- End  Product Details Meta Area-->
                                                </div> <!-- End Product Variable Area -->

                                                <!-- Start  Product Details Catagories Area-->
                                                <div class="product-details-catagory mb-2">
                                                    <span class="title">CATEGORIES:</span>
                                                    <ul>
                                                        <li><a href="#">BAR STOOL</a></li>
                                                        <li><a href="#">KITCHEN UTENSILS</a></li>
                                                        <li><a href="#">TENNIS</a></li>
                                                    </ul>
                                                </div> <!-- End  Product Details Catagories Area-->


                                                <!-- Start  Product Details Social Area-->
                                                <div class="product-details-social">
                                                    <span class="title">SHARE THIS PRODUCT:</span>
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                    </ul>
                                                </div> <!-- End  Product Details Social Area-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- End Product Details Section -->
                        </c:otherwise>
                    </c:choose>
                    <%@ include file="footer.jsp" %>

                        <!-- Use the minified version files listed below for better performance and remove the files listed above -->
                        <script src="../assets/js/vendor/vendor.min.js"></script>
                        <script src="../assets/js/plugins/plugins.min.js"></script>

                        <!-- Main JS -->
                        <script src="../assets/js/main.js"></script>
                        <script>
                            function addToCart(productId) {
                                var quantity = $("#quantity").val();
                                console.log("productId : " + productId);
                                console.log("quantity : " + quantity);
                                // Make an AJAX request
                                $.ajax({
                                    url: "/add-to-cart",
                                    type: "GET",
                                    data: { action: 'add', productId: productId, quantity: quantity },
                                    success: function (response) {
                                        console.log("Added to cart successfully!");
                                        var myArray = response.split("/");
                                        console.log(myArray);
                                        $('#ItemsNo').html("There Are " + myArray[0] + " Items In Your Cart.");
                                        $('#TotalPrice').html(myArray[1]);
                                        $('#modalAddcart').modal('toggle');
                                    },
                                    error: function (jqXHR, textStatus, errorThrown) {
                                        // handle error response
                                        console.log(textStatus, errorThrown);
                                    }
                                });
                            }
                        </script>
        </body>

        </html>