<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
        <!DOCTYPE html>
        <html>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />

            <title>HONO</title>

            <!-- ::::::::::::::Favicon icon::::::::::::::-->
            <link rel="shortcut icon" href="../assets/images/favicon.ico" type="image/png">

            <!-- ::::::::::::::All CSS Files here :::::::::::::: -->
            <!-- Vendor CSS -->
            <link rel="stylesheet" href="../assets/css/vendor/font-awesome.min.css">
            <link rel="stylesheet" href="../assets/css/vendor/ionicons.css">
            <link rel="stylesheet" href="../assets/css/vendor/simple-line-icons.css">
            <link rel="stylesheet" href="../assets/css/vendor/jquery-ui.min.css">

            <!-- Plugin CSS -->
            <link rel="stylesheet" href="../assets/css/plugins/swiper-bundle.min.css">
            <link rel="stylesheet" href="../assets/css/plugins/animate.min.css">
            <link rel="stylesheet" href="../assets/css/plugins/nice-select.css">
            <link rel="stylesheet" href="../assets/css/plugins/venobox.min.css">
            <link rel="stylesheet" href="../assets/css/plugins/jquery.lineProgressbar.css">
            <link rel="stylesheet" href="../assets/css/plugins/aos.min.css">

            <!-- Main CSS -->
            <link rel="stylesheet" href="../assets/css/style.css">

            <!-- Use the minified version files listed below for better performance and remove the files listed above -->
            <!-- <link rel="stylesheet" href="../../assets/css/vendor/vendor.min.css">
    <link rel="stylesheet" href="../../assets/css/plugins/plugins.min.css">
    <link rel="stylesheet" href="../../assets/css/style.min.css"> -->

        </head>

        <body>
            <!-- Start Header Area -->
            <header class="header-section d-none d-xl-block">
                <div class="header-wrapper">
                    <div
                        class="header-bottom header-bottom-color--black section-fluid sticky-header sticky-color--black">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-12 d-flex align-items-center justify-content-between">
                                    <!-- Start Header Logo -->
                                    <div class="header-logo">
                                        <div class="logo">
                                            <a href="/home"><img src="../assets/images/logo/logo_white.png"
                                                    alt=""></a>
                                        </div>
                                    </div>
                                    <!-- End Header Logo -->

                                    <!-- Start Header Main Menu -->
                                    <div class="main-menu menu-color--white menu-hover-color--pink">
                                        <nav>
                                            <ul>
                                                <li class="has-dropdown">
                                                    <a class="active main-menu-link" href="/home">Home</a>
                                                    <!-- Sub Menu -->
                                                </li>
                                                <li class="has-dropdown">
                                                    <a href="#">Shop <i class="fa fa-angle-down"></i></a>
                                                    <!-- Mega Menu -->
                                                    <div class="mega-menu">
                                                        <ul class="mega-menu-inner">
                                                            <!-- Mega Menu Sub Link -->
                                                            <li class="mega-menu-item">
                                                                <ul class="mega-menu-sub">
                                                                    <li><a href="/cart">Cart</a></li>
                                                                    <li><a href="/checkout">Checkout</a></li>
                                                                    <c:choose>
                                                                        <c:when test="${empty sessionScope.userData}">
                                                                            <li><a href="/login">Login</a></li>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <li><a href="/profile">My Account</a>
                                                                            </li>
                                                                            <li><a href="/logout">Logout</a></li>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="has-dropdown">
                                                    <a href="#">Brands <i class="fa fa-angle-down"></i></a>
                                                    <!-- Sub Menu -->
                                                    <ul class="sub-menu">
                                                        <c:forEach var="item" items="${brands}">
                                                            <li><a
                                                                    href="/brandproducts?brandId=${item.getId()}">${item.getBrandName()}</a>
                                                            </li>
                                                        </c:forEach>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <!-- End Header Main Menu Start -->

                                    <!-- Start Header Action Link -->
                                    <ul class="header-action-link action-color--white action-hover-color--pink">
                                        <li>
                                            <c:choose>
                                                <c:when test="${empty sessionScope.userData}">
                                                    <a href="/login">Login</a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="/profile">${sessionScope.userData.getUserName()}</a>
                                                </c:otherwise>
                                            </c:choose>
                                        </li>
                                        <li>
                                            <a href="/cart" class="offcanvas-toggle">
                                                <i class="icon-bag"></i>
                                                <c:if test="${not empty cart}">
                                                    <span class="item-count">${cart.size()}</span>
                                                </c:if>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#offcanvas-about" class="offacnvas offside-about offcanvas-toggle">
                                                <i class="icon-menu"></i>
                                            </a>
                                        </li>
                                    </ul>
                                    <!-- End Header Action Link -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Start Header Area -->

            <!-- Start Mobile Header -->
            <div class="mobile-header  mobile-header-bg-color--black section-fluid d-lg-block d-xl-none">
                <div class="container">
                    <div class="row">
                        <div class="col-12 d-flex align-items-center justify-content-between">
                            <!-- Start Mobile Left Side -->
                            <div class="mobile-header-left">
                                <ul class="mobile-menu-logo">
                                    <li>
                                        <a href="/home">
                                            <div class="logo">
                                                <img src="../assets/images/logo/logo_white.png" alt="">
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- End Mobile Left Side -->

                            <!-- Start Mobile Right Side -->
                            <div class="mobile-right-side">
                                <ul class="header-action-link action-color--white action-hover-color--pink">
                                    <li>
                                        <a href="/cart" class="offcanvas-toggle">
                                            <i class="icon-bag"></i>
                                            <c:if test="${not empty cart}">
                                                <span class="item-count">${cart.size()}</span>
                                            </c:if>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#mobile-menu-offcanvas"
                                            class="offcanvas-toggle offside-menu offside-menu-color--black">
                                            <i class="icon-menu"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- End Mobile Right Side -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Mobile Header -->

            <!--  Start Offcanvas Mobile Menu Section -->
            <div id="mobile-menu-offcanvas" class="offcanvas offcanvas-rightside offcanvas-mobile-menu-section">
                <!-- Start Offcanvas Header -->
                <div class="offcanvas-header text-right">
                    <button class="offcanvas-close"><i class="ion-android-close"></i></button>
                </div> <!-- End Offcanvas Header -->
                <!-- Start Offcanvas Mobile Menu Wrapper -->
                <div class="offcanvas-mobile-menu-wrapper">
                    <!-- Start Mobile Menu  -->
                    <div class="mobile-menu-bottom">
                        <!-- Start Mobile Menu Nav -->
                        <div class="offcanvas-menu">
                            <ul>
                                <li>
                                    <a href="/home"><span>Home</span></a>
                                </li>
                                <li>
                                    <a href="#"><span>Pages</span></a>
                                    <ul class="mobile-sub-menu">
                                        <li><a href="/cart">Cart</a></li>
                                        <li><a href="/checkout">Checkout</a></li>
                                        <c:choose>
                                            <c:when test="${empty sessionScope.userData}">
                                                <li><a href="/login">Login</a></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li><a href="/profile">My Account</a>
                                                </li>
                                                <li><a href="/logout">Logout</a></li>
                                            </c:otherwise>
                                        </c:choose>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#"><span>Brands</span></a>
                                    <ul class="mobile-sub-menu">
                                        <c:forEach var="item" items="${brands}">
                                            <li>
                                                <a href="/brandproducts?brandId=${item.getId()}">${item.getBrandName()}</a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </li>
                            </ul>
                        </div> <!-- End Mobile Menu Nav -->
                    </div> <!-- End Mobile Menu -->

                    <!-- Start Mobile contact Info -->
                    <div class="mobile-contact-info">
                        <div class="logo">
                            <a href="/home"><img src="../assets/images/logo/logo_white.png" alt=""></a>
                        </div>

                        <address class="address">
                            <span>Address: Your address goes here.</span>
                            <span>Call Us: 0123456789, 0123456789</span>
                            <span>Email: demo@example.com</span>
                        </address>

                        <ul class="social-link">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>

                        <ul class="user-link">
                            <li><a href="/cart">Cart</a></li>
                            <li><a href="/checkout">Checkout</a></li>
                        </ul>
                    </div>
                    <!-- End Mobile contact Info -->

                </div> <!-- End Offcanvas Mobile Menu Wrapper -->
            </div> <!-- ...:::: End Offcanvas Mobile Menu Section:::... -->

            <!-- Start Offcanvas Mobile Menu Section -->
            <div id="offcanvas-about" class="offcanvas offcanvas-rightside offcanvas-mobile-about-section">
                <!-- Start Offcanvas Header -->
                <div class="offcanvas-header text-right">
                    <button class="offcanvas-close"><i class="ion-android-close"></i></button>
                </div> <!-- End Offcanvas Header -->
                <!-- Start Offcanvas Mobile Menu Wrapper -->
                <!-- Start Mobile contact Info -->
                <div class="mobile-contact-info">
                    <div class="logo">
                        <a href="/home"><img src="../assets/images/logo/logo_white.png" alt=""></a>
                    </div>

                    <address class="address">
                        <span>Address: Your address goes here.</span>
                        <span>Call Us: 0123456789, 0123456789</span>
                        <span>Email: demo@example.com</span>
                    </address>

                    <ul class="social-link">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul>

                    <ul class="user-link">
                        <li><a href="/cart">Cart</a></li>
                        <li><a href="/checkout">Checkout</a></li>
                    </ul>
                </div>
                <!-- End Mobile contact Info -->
            </div> <!-- ...:::: End Offcanvas Mobile Menu Section:::... -->

            <!-- Start Offcanvas Addcart Section -->
            <div id="offcanvas-add-cart" class="offcanvas offcanvas-rightside offcanvas-add-cart-section">
                <!-- Start Offcanvas Header -->
                <div class="offcanvas-header text-right">
                    <button class="offcanvas-close"><i class="ion-android-close"></i></button>
                </div> <!-- End Offcanvas Header -->

            </div> <!-- End  Offcanvas Addcart Section -->

            <!-- Start Offcanvas Mobile Menu Section -->
            <div id="offcanvas-wishlish" class="offcanvas offcanvas-rightside offcanvas-add-cart-section">
                <!-- Start Offcanvas Header -->
                <div class="offcanvas-header text-right">
                    <button class="offcanvas-close"><i class="ion-android-close"></i></button>
                </div> <!-- ENd Offcanvas Header -->

            </div> <!-- End Offcanvas Mobile Menu Section -->

            <!-- Start Offcanvas Search Bar Section -->
            <div id="search" class="search-modal">
                <button type="button" class="close">×</button>
                <form>
                    <input type="search" placeholder="type keyword(s) here" />
                    <button type="submit" class="btn btn-lg btn-pink">Search</button>
                </form>
            </div>
            <!-- End Offcanvas Search Bar Section -->

            <!-- Offcanvas Overlay -->
            <div class="offcanvas-overlay"></div>



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
                                                        src="../assets/images/product/default/home-3/default-1.jpg"
                                                        alt="">
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="modal-add-cart-info"><i class="fa fa-check-square"></i>Added
                                                    to cart
                                                    successfully!</div>
                                                <div class="modal-add-cart-product-cart-buttons">
                                                    <a href="/cart">View Cart</a>
                                                    <a href="/checkout">Checkout</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5 modal-border">
                                        <ul class="modal-add-cart-product-shipping-info">
                                            <li> <strong><i class="icon-shopping-cart"></i>
                                                    <div id="ItemsNo">
                                                        There Are ${cart.size()}
                                                        Items In Your
                                                        Cart.
                                                    </div>
                                                </strong></li>
                                            <li> <strong>TOTAL PRICE: </strong> <span
                                                    id="TotalPrice">${cartTotal}</span></li>
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
                                                        <img src="../assets/images/product/default/home-3/default-1.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-large-image swiper-slide img-responsive">
                                                        <img src="../assets/images/product/default/home-3/default-2.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-large-image swiper-slide img-responsive">
                                                        <img src="../assets/images/product/default/home-3/default-3.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-large-image swiper-slide img-responsive">
                                                        <img src="../assets/images/product/default/home-3/default-4.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-large-image swiper-slide img-responsive">
                                                        <img src="../assets/images/product/default/home-3/default-5.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-large-image swiper-slide img-responsive">
                                                        <img src="../assets/images/product/default/home-3/default-6.jpg"
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
                                                            src="../assets/images/product/default/home-3/default-1.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-thumb-single swiper-slide">
                                                        <img class="img-fluid"
                                                            src="../assets/images/product/default/home-3/default-2.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-thumb-single swiper-slide">
                                                        <img class="img-fluid"
                                                            src="../assets/images/product/default/home-3/default-3.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-thumb-single swiper-slide">
                                                        <img class="img-fluid"
                                                            src="../assets/images/product/default/home-3/default-4.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-thumb-single swiper-slide">
                                                        <img class="img-fluid"
                                                            src="../assets/images/product/default/home-3/default-5.jpg"
                                                            alt="">
                                                    </div>
                                                    <div class="product-image-thumb-single swiper-slide">
                                                        <img class="img-fluid"
                                                            src="../assets/images/product/default/home-3/default-6.jpg"
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

            <!-- Use the minified version files listed below for better performance and remove the files listed above -->
            <script src="../assets/js/vendor/vendor.min.js"></script>
            <script src="../assets/js/plugins/plugins.min.js"></script>

            <!-- Main JS -->
            <script src="../assets/js/main.js"></script>
        </body>
        <script>
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
        </script>

        </html>