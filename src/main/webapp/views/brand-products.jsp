<!DOCTYPE html>
<html lang="zxx">


<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- ::::::::::::::Favicon icon::::::::::::::-->
    <link rel="shortcut icon" href="assets/images/favicon.ico" type="image/png">

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
    <link rel="stylesheet" href="assets/css/vendor/vendor.min.css">
    <link rel="stylesheet" href="assets/css/plugins/plugins.min.css">
    <link rel="stylesheet" href="assets/css/style.min.css">

</head>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>


        <body>
            <!-- Offcanvas Overlay -->
            <div class="offcanvas-overlay"></div>

            <!-- ...:::: Start Breadcrumb Section:::... -->
            <div class="breadcrumb-section breadcrumb-bg-color--golden">
                <div class="breadcrumb-wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <h3 class="breadcrumb-title">Shop - Full Width</h3>
                                <div
                                    class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
                                    <nav aria-label="breadcrumb">
                                        <ul>
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="shop-grid-sidebar-left.html">Shop</a></li>
                                            <li class="active" aria-current="page">Shop Full Width</li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- ...:::: End Breadcrumb Section:::... -->

            <!-- ...:::: Start Shop Section:::... -->
            <div class="shop-section">
                <div class="container">
                    <div class="row flex-column-reverse flex-lg-row">
                        <div class="col-lg-12">
                            <!-- Start Shop Product Sorting Section -->
                            <div class="shop-sort-section">
                                <div class="container">
                                    <div class="row">
                                        <!-- Start Sort Wrapper Box -->
                                        <div class="sort-box d-flex justify-content-between align-items-md-center align-items-start flex-md-row flex-column"
                                            data-aos="fade-up" data-aos-delay="0">
                                            <!-- Start Sort tab Button -->
                                            <div class="sort-tablist d-flex align-items-center">
                                                <ul class="tablist nav sort-tab-btn">
                                                    <li><a class="nav-link active" data-bs-toggle="tab"
                                                            href="#layout-4-grid"><img
                                                                src="assets/images/icons/bkg_grid.png" alt=""></a></li>
                                                    <li><a class="nav-link" data-bs-toggle="tab"
                                                            href="#layout-list"><img
                                                                src="assets/images/icons/bkg_list.png" alt=""></a></li>
                                                </ul>

                                                <!-- Start Page Amount -->
                                                <div class="page-amount ml-2">
                                                    <span>Showing 1–9 of 21 results</span>
                                                </div> <!-- End Page Amount -->
                                            </div> <!-- End Sort tab Button -->

                                            <!-- Start Sort Select Option -->
                                            <div class="sort-select-list d-flex align-items-center">
                                                <label class="mr-2">Sort By:</label>
                                                <form action="#">
                                                    <fieldset>
                                                        <select name="speed" id="speed">
                                                            <option>Sort by average rating</option>
                                                            <option>Sort by popularity</option>
                                                            <option selected="selected">Sort by newness</option>
                                                            <option>Sort by price: low to high</option>
                                                            <option>Sort by price: high to low</option>
                                                            <option>Product Name: Z</option>
                                                        </select>
                                                    </fieldset>
                                                </form>
                                            </div> <!-- End Sort Select Option -->



                                        </div> <!-- Start Sort Wrapper Box -->
                                    </div>
                                </div>
                            </div> <!-- End Section Content -->

                            <!-- Start Tab Wrapper -->
                            <div class="sort-product-tab-wrapper">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="tab-content">
                                                <!-- Start Grid View Product -->
                                                <div class="tab-pane active show sort-layout-single" id="layout-4-grid">
                                                    <div class="row">
                                                        <c:forEach var="item" items="${allpros}">

                                                            <div class="col-xl-3 col-lg-4 col-sm-6 col-12">
                                                                <!-- Start Product Default Single Item -->
                                                                <div class="product-default-single-item product-color--golden"
                                                                    data-aos="fade-up" data-aos-delay="0">
                                                                    <div class="image-box">
                                                                        <a href="/product-details?productId=${item.getProductId()}"
                                                                            class="image-link">
                                                                            <img src="../productsImage/${item.getImagePath()}"
                                                                                alt="">
                                                                        </a>
                                                                        <div class="action-link">
                                                                            <div class="action-link-left">
                                                                                <a href="#"
                                                                                    onclick="myFunction('${item.getProductId()}',event)"
                                                                                    data-bs-toggle="modal"
                                                                                    data-bs-target="#modalAddcart">Add
                                                                                    to
                                                                                    Cart</a>
                                                                            </div>
                                                                            <div class="action-link-right">
                                                                                <a href="#" data-bs-toggle="modal"
                                                                                    data-bs-target="#modalQuickview"><i
                                                                                        class="icon-magnifier"></i></a>
                                                                                <a href="wishlist.html"><i
                                                                                        class="icon-heart"></i></a>
                                                                                <a href="compare.html"><i
                                                                                        class="icon-shuffle"></i></a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="content">
                                                                        <div class="content-left">
                                                                            <h6 class="title"><a
                                                                                    href="product-details.jsp">${item.getProductName()}</a>
                                                                            </h6>
                                                                            <ul class="review-star">
                                                                                <li class="fill"><i
                                                                                        class="ion-android-star"></i>
                                                                                </li>
                                                                                <li class="fill"><i
                                                                                        class="ion-android-star"></i>
                                                                                </li>
                                                                                <li class="fill"><i
                                                                                        class="ion-android-star"></i>
                                                                                </li>
                                                                                <li class="fill"><i
                                                                                        class="ion-android-star"></i>
                                                                                </li>
                                                                                <li class="empty"><i
                                                                                        class="ion-android-star"></i>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="content-right">
                                                                            <span
                                                                                class="price">$${item.getPrice()}</span>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <!-- End Product Default Single Item -->
                                                            </div>

                                                        </c:forEach>
                                                    </div>
                                                </div> <!-- End Grid View Product -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- End Tab Wrapper -->

                            <!-- Start Pagination -->
                            <div class="page-pagination text-center" data-aos="fade-up" data-aos-delay="0">
                                <ul>
                                    <li><a class="active" href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#"><i class="ion-ios-skipforward"></i></a></li>
                                </ul>
                            </div> <!-- End Pagination -->
                        </div> <!-- End Shop Product Sorting Section  -->
                    </div>
                </div>
            </div> <!-- ...:::: End Shop Section:::... -->





            <!-- material-scrolltop button -->
            <button class="material-scrolltop" type="button"></button>

            <!-- Start Modal Add cart -->
            <div class="modal fade" id="modalAddcart" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog  modal-dialog-centered modal-xl" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col text-right">
                                        <button type="button" class="close modal-close" data-bs-dismiss="modal"
                                            aria-label="Close">
                                            <span aria-hidden="true"> <i class="fa fa-times"></i></span>
                                        </button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-7">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="modal-add-cart-product-img">
                                                    <img class="img-fluid"
                                                        src="assets/images/product/default/home-1/default-1.jpg" alt="">
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="modal-add-cart-info"><i class="fa fa-check-square"></i>Added
                                                    to cart
                                                    successfully!</div>
                                                <div class="modal-add-cart-product-cart-buttons">
                                                    <a href="cart.html">View Cart</a>
                                                    <a href="checkout.html">Checkout</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5 modal-border">
                                        <ul class="modal-add-cart-product-shipping-info">
                                            <li> <strong><i class="icon-shopping-cart"></i> There Are 5 Items In Your
                                                    Cart.</strong></li>
                                            <li> <strong>TOTAL PRICE: </strong> <span>$187.00</span></li>
                                            <li class="modal-continue-button"><a href="#"
                                                    data-bs-dismiss="modal">CONTINUE
                                                    SHOPPING</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- End Modal Add cart -->

            <!-- Start Modal Quickview cart -->
            <div class="modal fade" id="modalQuickview" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog  modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col text-right">
                                        <button type="button" class="close modal-close" data-bs-dismiss="modal"
                                            aria-label="Close">
                                            <span aria-hidden="true"> <i class="fa fa-times"></i></span>
                                        </button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="product-details-gallery-area mb-7">
                                            <!-- Start Large Image -->
                                            <div class="product-large-image modal-product-image-large swiper-container">
                                                <div class="swiper-wrapper">
                                                    <div class="product-image-large-image swiper-slide img-responsive">
                                                        <img src="assets/images/product/default/home-1/default-1.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-large-image swiper-slide img-responsive">
                                                        <img src="assets/images/product/default/home-1/default-2.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-large-image swiper-slide img-responsive">
                                                        <img src="assets/images/product/default/home-1/default-3.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-large-image swiper-slide img-responsive">
                                                        <img src="assets/images/product/default/home-1/default-4.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-large-image swiper-slide img-responsive">
                                                        <img src="assets/images/product/default/home-1/default-5.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-large-image swiper-slide img-responsive">
                                                        <img src="assets/images/product/default/home-1/default-6.jpg"
                                                            alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- End Large Image -->
                                            <!-- Start Thumbnail Image -->
                                            <div
                                                class="product-image-thumb modal-product-image-thumb swiper-container pos-relative mt-5">
                                                <div class="swiper-wrapper">
                                                    <div class="product-image-thumb-single swiper-slide">
                                                        <img class="img-fluid"
                                                            src="assets/images/product/default/home-1/default-1.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-thumb-single swiper-slide">
                                                        <img class="img-fluid"
                                                            src="assets/images/product/default/home-1/default-2.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-thumb-single swiper-slide">
                                                        <img class="img-fluid"
                                                            src="assets/images/product/default/home-1/default-3.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-thumb-single swiper-slide">
                                                        <img class="img-fluid"
                                                            src="assets/images/product/default/home-1/default-4.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-thumb-single swiper-slide">
                                                        <img class="img-fluid"
                                                            src="assets/images/product/default/home-1/default-5.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-thumb-single swiper-slide">
                                                        <img class="img-fluid"
                                                            src="assets/images/product/default/home-1/default-6.jpg"
                                                            alt="">
                                                    </div>
                                                </div>
                                                <!-- Add Arrows -->
                                                <div class="gallery-thumb-arrow swiper-button-next"></div>
                                                <div class="gallery-thumb-arrow swiper-button-prev"></div>
                                            </div>
                                            <!-- End Thumbnail Image -->
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="modal-product-details-content-area">
                                            <!-- Start  Product Details Text Area-->
                                            <div class="product-details-text">
                                                <h4 class="title">Nonstick Dishwasher PFOA</h4>
                                                <div class="price"><del>$70.00</del>$80.00</div>
                                            </div> <!-- End  Product Details Text Area-->
                                            <!-- Start Product Variable Area -->
                                            <div class="product-details-variable">
                                                <!-- Product Variable Single Item -->
                                                <div class="variable-single-item">
                                                    <span>Color</span>
                                                    <div class="product-variable-color">
                                                        <label for="modal-product-color-red">
                                                            <input name="modal-product-color"
                                                                id="modal-product-color-red" class="color-select"
                                                                type="radio" checked>
                                                            <span class="product-color-red"></span>
                                                        </label>
                                                        <label for="modal-product-color-tomato">
                                                            <input name="modal-product-color"
                                                                id="modal-product-color-tomato" class="color-select"
                                                                type="radio">
                                                            <span class="product-color-tomato"></span>
                                                        </label>
                                                        <label for="modal-product-color-green">
                                                            <input name="modal-product-color"
                                                                id="modal-product-color-green" class="color-select"
                                                                type="radio">
                                                            <span class="product-color-green"></span>
                                                        </label>
                                                        <label for="modal-product-color-light-green">
                                                            <input name="modal-product-color"
                                                                id="modal-product-color-light-green"
                                                                class="color-select" type="radio">
                                                            <span class="product-color-light-green"></span>
                                                        </label>
                                                        <label for="modal-product-color-blue">
                                                            <input name="modal-product-color"
                                                                id="modal-product-color-blue" class="color-select"
                                                                type="radio">
                                                            <span class="product-color-blue"></span>
                                                        </label>
                                                        <label for="modal-product-color-light-blue">
                                                            <input name="modal-product-color"
                                                                id="modal-product-color-light-blue" class="color-select"
                                                                type="radio">
                                                            <span class="product-color-light-blue"></span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <!-- Product Variable Single Item -->
                                                <div class="d-flex align-items-center flex-wrap">
                                                    <div class="variable-single-item ">
                                                        <span>Quantity</span>
                                                        <div class="product-variable-quantity">
                                                            <input min="1" max="100" value="1" type="number">
                                                        </div>
                                                    </div>

                                                    <div class="product-add-to-cart-btn">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalAddcart">Add To
                                                            Cart</a>
                                                    </div>
                                                </div>
                                            </div> <!-- End Product Variable Area -->
                                            <div class="modal-product-about-text">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia
                                                    iste
                                                    laborum ad impedit pariatur esse optio tempora sint ullam autem
                                                    deleniti nam
                                                    in quos qui nemo ipsum numquam, reiciendis maiores quidem aperiam,
                                                    rerum vel
                                                    recusandae</p>
                                            </div>
                                            <!-- Start  Product Details Social Area-->
                                            <div class="modal-product-details-social">
                                                <span class="title">SHARE THIS PRODUCT</span>
                                                <ul>
                                                    <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                                                    </li>
                                                    <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                                                    </li>
                                                    <li><a href="#" class="pinterest"><i
                                                                class="fa fa-pinterest"></i></a></li>
                                                    <li><a href="#" class="google-plus"><i
                                                                class="fa fa-google-plus"></i></a>
                                                    </li>
                                                    <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                                                    </li>
                                                </ul>

                                            </div> <!-- End  Product Details Social Area-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- End Modal Quickview cart -->

            <!-- ::::::::::::::All JS Files here :::::::::::::: -->
            <!-- Global Vendor, plugins JS -->
            <!-- <script src="assets/js/vendor/modernizr-3.11.2.min.js"></script>
    <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
    <script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
    <script src="assets/js/vendor/popper.min.js"></script>
    <script src="assets/js/vendor/bootstrap.min.js"></script>
    <script src="assets/js/vendor/jquery-ui.min.js"></script>  -->

            <!--Plugins JS-->
            <!-- <script src="assets/js/plugins/swiper-bundle.min.js"></script>
    <script src="assets/js/plugins/material-scrolltop.js"></script>
    <script src="assets/js/plugins/jquery.nice-select.min.js"></script>
    <script src="assets/js/plugins/jquery.zoom.min.js"></script>
    <script src="assets/js/plugins/venobox.min.js"></script>
    <script src="assets/js/plugins/jquery.waypoints.js"></script>
    <script src="assets/js/plugins/jquery.lineProgressbar.js"></script>
    <script src="assets/js/plugins/aos.min.js"></script>
    <script src="assets/js/plugins/jquery.instagramFeed.js"></script>
    <script src="assets/js/plugins/ajax-mail.js"></script> -->

            <!-- Use the minified version files listed below for better performance and remove the files listed above -->
            <script src="assets/js/vendor/vendor.min.js"></script>
            <script src="assets/js/plugins/plugins.min.js"></script>

            <!-- Main JS -->
            <script src="assets/js/main.js"></script>

            <script>
                function myFunction(ProductId, e) {
                    console.log("Add Item to Cart productId = " + ProductId);
                    // Prevent default link behavior
                    e.preventDefault();
                    // Make an AJAX request
                    $.ajax({
                        url: "/add-to-cart",
                        type: "GET",
                        data: { action: 'add', productId: ProductId, quantity: "1" },
                        success: function (response) {
                            // handle successful response
                            $("#content").html(response);
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