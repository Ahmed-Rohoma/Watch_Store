<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- ::::::::::::::Favicon icon::::::::::::::-->
    <link rel="shortcut icon" href="assets/images/favicon.ico" type="image/png">

    <!-- ::::::::::::::All CSS Files here :::::::::::::: -->

    <link rel="stylesheet" href="assets/css/style.css">

    <!-- Use the minified version files listed below for better performance and remove the files listed above -->
    <link rel="stylesheet" href="assets/css/vendor/vendor.min.css">
    <link rel="stylesheet" href="assets/css/plugins/plugins.min.css">
    <link rel="stylesheet" href="assets/css/style.min.css">

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>
</head>

<body>
    <%@ include file="header.jsp" %>
        <!-- Offcanvas Overlay -->
        <div class="offcanvas-overlay"></div>

        <!-- Start Hero Slider Section-->
        <div class="hero-slider-section">
            <!-- Slider main container -->
            <div class="hero-slider-active swiper-container">
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                    <!-- Start Hero Single Slider Item -->
                    <div class="hero-single-slider-item swiper-slide">
                        <!-- Hero Slider Image -->
                        <div class="hero-slider-bg">
                            <img src="assets/images/hero-slider/home-3/hero-slider-1.jpg" alt="">
                        </div>
                        <!-- Hero Slider Content -->
                        <div class="hero-slider-wrapper">
                            <div class="container">
                                <div class="row">
                                    <div class="col-auto">
                                        <div class="hero-slider-content">
                                            <h4 class="subtitle">New collection</h4>
                                            <h1 class="title">New Series of <br> Degital Watch </h1>
                                            <a href="product-details-default.html" class="btn btn-lg btn-pink">shop now
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- End Hero Single Slider Item -->
                    <!-- Start Hero Single Slider Item -->
                    <div class="hero-single-slider-item swiper-slide">
                        <!-- Hero Slider Image -->
                        <div class="hero-slider-bg">
                            <img src="assets/images/hero-slider/home-3/hero-slider-2.jpg" alt="">
                        </div>
                        <!-- Hero Slider Content -->
                        <div class="hero-slider-wrapper">
                            <div class="container">
                                <div class="row">
                                    <div class="col-auto">
                                        <div class="hero-slider-content">
                                            <h4 class="subtitle">New collection</h4>
                                            <h1 class="title">Best Of HiFi <br> Loud Speaker</h1>
                                            <a href="product-details-default.html" class="btn btn-lg btn-pink">shop now
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- End Hero Single Slider Item -->
                </div>

                <!-- If we need pagination -->
                <div class="swiper-pagination active-color-pink"></div>

                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev d-none d-lg-block"></div>
                <div class="swiper-button-next d-none d-lg-block"></div>
            </div>
        </div>
        <!-- End Hero Slider Section-->

        <!-- Start Service Section -->
        <div class="service-promo-section section-top-gap-100">
            <div class="service-wrapper">
                <div class="container">
                    <div class="row">
                        <!-- Start Service Promo Single Item -->
                        <div class="col-lg-3 col-sm-6 col-12">
                            <div class="service-promo-single-item" data-aos="fade-up" data-aos-delay="0">
                                <div class="image">
                                    <img src="assets/images/icons/service-promo-5.png" alt="">
                                </div>
                                <div class="content">
                                    <h6 class="title">FREE SHIPPING</h6>
                                    <p>Get 10% cash back, free shipping, free returns, and more at 1000+ top retailers!
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- End Service Promo Single Item -->
                        <!-- Start Service Promo Single Item -->
                        <div class="col-lg-3 col-sm-6 col-12">
                            <div class="service-promo-single-item" data-aos="fade-up" data-aos-delay="200">
                                <div class="image">
                                    <img src="assets/images/icons/service-promo-6.png" alt="">
                                </div>
                                <div class="content">
                                    <h6 class="title">30 DAYS MONEY BACK</h6>
                                    <p>100% satisfaction guaranteed, or get your money back within 30 days!</p>
                                </div>
                            </div>
                        </div>
                        <!-- End Service Promo Single Item -->
                        <!-- Start Service Promo Single Item -->
                        <div class="col-lg-3 col-sm-6 col-12">
                            <div class="service-promo-single-item" data-aos="fade-up" data-aos-delay="400">
                                <div class="image">
                                    <img src="assets/images/icons/service-promo-7.png" alt="">
                                </div>
                                <div class="content">
                                    <h6 class="title">SAFE PAYMENT</h6>
                                    <p>Pay with the world’s most popular and secure payment methods.</p>
                                </div>
                            </div>
                        </div>
                        <!-- End Service Promo Single Item -->
                        <!-- Start Service Promo Single Item -->
                        <div class="col-lg-3 col-sm-6 col-12">
                            <div class="service-promo-single-item" data-aos="fade-up" data-aos-delay="600">
                                <div class="image">
                                    <img src="assets/images/icons/service-promo-8.png" alt="">
                                </div>
                                <div class="content">
                                    <h6 class="title">LOYALTY CUSTOMER</h6>
                                    <p>Card for the other 30% of their purchases at a rate of 1% cash back.</p>
                                </div>
                            </div>
                        </div>
                        <!-- End Service Promo Single Item -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End Service Section -->

        <!-- Start Banner Section -->
        <div class="banner-section section-top-gap-100">
            <div class="banner-wrapper clearfix">
                <!-- Start Banner Single Item -->
                <c:forEach var="item" items="${brands}">
                    <a href="/brandproducts?brandId=${item.getId()}">
                        <div class="banner-single-item banner-style-7 banner-animation banner-color--green float-left"
                            data-aos="fade-up" data-aos-delay="0">
                            <div class="image">
                                <img style="height: 300px;width: 600px;" class="img-fluid"
                                    src="../brandsImage/${item.getBrandName()}.png" alt="">
                            </div>
                        </div>
                    </a>
                </c:forEach>
            </div>
        </div>
        <!-- End Banner Section -->

        <!-- Start Product Default Slider Section -->
        <div class="product-default-slider-section section-top-gap-100 section-fluid">
            <!-- Start Section Content Text Area -->
            <div class="section-title-wrapper" data-aos="fade-up" data-aos-delay="0">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-content-gap">
                                <div class="secton-content">
                                    <h3 class="section-title">Products</h3>
                                    <p>Preorder now to receive exclusive deals & gifts</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Start Section Content Text Area -->
            <div class="product-wrapper" data-aos="fade-up" data-aos-delay="200">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="product-slider-default-2rows default-slider-nav-arrow">
                                <!-- Slider main container -->
                                <div class="swiper-container product-default-slider-4grid-2row">
                                    <!-- Additional required wrapper -->
                                    <div class="swiper-wrapper">
                                        <!-- Start Product Default Single Item -->
                                        <c:forEach var="item" items="${allpros}">
                                            <div class="product-default-single-item product-color--pink swiper-slide">
                                                <div class="image-box">
                                                    <a href="/product-details?productId=${item.getProductId()}"
                                                        class="image-link">
                                                        <img style="height: 350px;"
                                                            src="../productsImage/${item.getImagePath()}" alt="">

                                                            <c:forEach var="brand" items="${brands}">
                                                                <c:if test="${brand.getId() eq item.getBrandId()}">
                                                                    <img style="height: 350px;" src="../brandsImage/${brand.getBrandName()}.png" alt="">
                                                                </c:if>
                                                            </c:forEach>
                                                    </a>
                                                    <div class="tag">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="action-link">
                                                        <div class="action-link-left">
                                                            <a id="ajax-link" href="#"
                                                                onclick="myFunction('${item.getProductId()}',event)"
                                                                data-bs-target="#modalAddcart">Add to
                                                                Cart</a>
                                                        </div>
                                                        <div class="action-link-right">
                                                            <a href="#" data-bs-toggle="modal"
                                                                data-bs-target="#modalQuickview"><i
                                                                    class="icon-magnifier"></i></a>
                                                            <a href="wishlist.html"><i class="icon-heart"></i></a>
                                                            <a href="compare.html"><i class="icon-shuffle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="content">
                                                    <div class="content-left">
                                                        <h6 class="title"><a
                                                                href="/product-details?productId=${item.getProductId()}">${item.getProductName()}</a>
                                                            <ul class="review-star">
                                                                <li class="fill"><i class="ion-android-star"></i></li>
                                                                <li class="fill"><i class="ion-android-star"></i></li>
                                                                <li class="fill"><i class="ion-android-star"></i></li>
                                                                <li class="fill"><i class="ion-android-star"></i></li>
                                                                <li class="empty"><i class="ion-android-star"></i></li>
                                                            </ul>
                                                    </div>
                                                    <div class="content-right">
                                                        <span class="price">${item.getPrice()}</span>
                                                    </div>

                                                </div>
                                            </div>
                                        </c:forEach>

                                        <!-- End Product Default Single Item -->
                                    </div>
                                </div>
                                <!-- If we need navigation buttons -->
                                <div class="swiper-button-prev"></div>
                                <div class="swiper-button-next"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Product Default Slider Section -->

        <!-- Start Banner Section -->
        <div class="banner-section section-top-gap-100">
            <div class="banner-wrapper clearfix">
                <!-- Start Banner Single Item -->
                <a href="product-details-default.html">
                    <div class="banner-single-item banner-style-8 banner-animation banner-color--green float-left"
                        data-aos="fade-up" data-aos-delay="0">
                        <div class="image">
                            <img class="img-fluid" src="assets/images/banner/banner-style-8-img-1.jpg" alt="">
                        </div>
                    </div>
                </a>
                <!-- End Banner Single Item -->
                <!-- Start Banner Single Item -->
                <a href="product-details-default.html">
                    <div class="banner-single-item banner-style-8 banner-animation banner-color--green float-left"
                        data-aos="fade-up" data-aos-delay="200">
                        <div class="image">
                            <img class="img-fluid" src="assets/images/banner/banner-style-8-img-2.jpg" alt="">
                        </div>
                    </div>
                </a>
                <!-- End Banner Single Item -->
            </div>
        </div>
        <!-- End Banner Section -->

        <!-- Start Product Default Slider Section -->
        <div class="product-default-slider-section section-fluid section-inner-bg">
            <!-- Start Section Content Text Area -->
            <div class="section-title-wrapper" data-aos="fade-up" data-aos-delay="0">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-content-gap">
                                <div class="secton-content">
                                    <h3 class="section-title">BEST SELLERS</h3>
                                    <p>Add our best sellers to your weekly lineup.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Start Section Content Text Area -->
            <div class="product-wrapper" data-aos="fade-up" data-aos-delay="0">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="product-slider-default-1row default-slider-nav-arrow">
                                <!-- Slider main container -->
                                <div class="swiper-container product-default-slider-4grid-1row">
                                    <!-- Additional required wrapper -->
                                    <div class="swiper-wrapper">
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="product-default-single-item product-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="product-details-default.html" class="image-link">
                                                    <img src="assets/images/product/default/home-3/default-9.jpg"
                                                        alt="">
                                                    <img src="assets/images/product/default/home-3/default-10.jpg"
                                                        alt="">
                                                </a>
                                                <div class="action-link">
                                                    <div class="action-link-left">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalAddcart">Add to Cart</a>
                                                    </div>
                                                    <div class="action-link-right">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalQuickview"><i
                                                                class="icon-magnifier"></i></a>
                                                        <a href="wishlist.html"><i class="icon-heart"></i></a>
                                                        <a href="compare.html"><i class="icon-shuffle"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="content-left">
                                                    <h6 class="title"><a href="product-details-default.html">Epicuri per
                                                            lobortis</a></h6>
                                                    <ul class="review-star">
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="empty"><i class="ion-android-star"></i></li>
                                                    </ul>
                                                </div>
                                                <div class="content-right">
                                                    <span class="price">$68</span>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="product-default-single-item product-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="product-details-default.html" class="image-link">
                                                    <img src="assets/images/product/default/home-3/default-11.jpg"
                                                        alt="">
                                                    <img src="assets/images/product/default/home-3/default-3.jpg"
                                                        alt="">
                                                </a>
                                                <div class="action-link">
                                                    <div class="action-link-left">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalAddcart">Add to Cart</a>
                                                    </div>
                                                    <div class="action-link-right">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalQuickview"><i
                                                                class="icon-magnifier"></i></a>
                                                        <a href="wishlist.html"><i class="icon-heart"></i></a>
                                                        <a href="compare.html"><i class="icon-shuffle"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="content-left">
                                                    <h6 class="title"><a href="product-details-default.html">Kaoreet
                                                            lobortis sagit</a></h6>
                                                    <ul class="review-star">
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="empty"><i class="ion-android-star"></i></li>
                                                    </ul>
                                                </div>
                                                <div class="content-right">
                                                    <span class="price">$95.00</span>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="product-default-single-item product-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="product-details-default.html" class="image-link">
                                                    <img src="assets/images/product/default/home-3/default-5.jpg"
                                                        alt="">
                                                    <img src="assets/images/product/default/home-3/default-7.jpg"
                                                        alt="">
                                                </a>
                                                <div class="action-link">
                                                    <div class="action-link-left">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalAddcart">Add to Cart</a>
                                                    </div>
                                                    <div class="action-link-right">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalQuickview"><i
                                                                class="icon-magnifier"></i></a>
                                                        <a href="wishlist.html"><i class="icon-heart"></i></a>
                                                        <a href="compare.html"><i class="icon-shuffle"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="content-left">
                                                    <h6 class="title"><a href="product-details-default.html">Condimentum
                                                            posuere</a></h6>
                                                    <ul class="review-star">
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="empty"><i class="ion-android-star"></i></li>
                                                    </ul>
                                                </div>
                                                <div class="content-right">
                                                    <span class="price">$115.00</span>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="product-default-single-item product-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="product-details-default.html" class="image-link">
                                                    <img src="assets/images/product/default/home-3/default-6.jpg"
                                                        alt="">
                                                    <img src="assets/images/product/default/home-3/default-9.jpg"
                                                        alt="">
                                                </a>
                                                <div class="action-link">
                                                    <div class="action-link-left">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalAddcart">Add to Cart</a>
                                                    </div>
                                                    <div class="action-link-right">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalQuickview"><i
                                                                class="icon-magnifier"></i></a>
                                                        <a href="wishlist.html"><i class="icon-heart"></i></a>
                                                        <a href="compare.html"><i class="icon-shuffle"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="content-left">
                                                    <h6 class="title"><a href="product-details-default.html">Convallis
                                                            quam
                                                            sit</a></h6>
                                                    <ul class="review-star">
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="empty"><i class="ion-android-star"></i></li>
                                                    </ul>
                                                </div>
                                                <div class="content-right">
                                                    <span class="price">$75.00 - $85.00</span>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="product-default-single-item product-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="product-details-default.html" class="image-link">
                                                    <img src="assets/images/product/default/home-3/default-1.jpg"
                                                        alt="">
                                                    <img src="assets/images/product/default/home-3/default-2.jpg"
                                                        alt="">
                                                </a>
                                                <div class="tag">
                                                    <span>sale</span>
                                                </div>
                                                <div class="action-link">
                                                    <div class="action-link-left">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalAddcart">Add to Cart</a>
                                                    </div>
                                                    <div class="action-link-right">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalQuickview"><i
                                                                class="icon-magnifier"></i></a>
                                                        <a href="wishlist.html"><i class="icon-heart"></i></a>
                                                        <a href="compare.html"><i class="icon-shuffle"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="content-left">
                                                    <h6 class="title"><a href="product-details-default.html">Aliquam
                                                            lobortis</a></h6>
                                                    <ul class="review-star">
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="empty"><i class="ion-android-star"></i></li>
                                                    </ul>
                                                </div>
                                                <div class="content-right">
                                                    <span class="price">$75.00 - $85.00</span>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="product-default-single-item product-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="product-details-default.html" class="image-link">
                                                    <img src="assets/images/product/default/home-3/default-3.jpg"
                                                        alt="">
                                                    <img src="assets/images/product/default/home-3/default-4.jpg"
                                                        alt="">
                                                </a>
                                                <div class="tag">
                                                    <span>sale</span>
                                                </div>
                                                <div class="action-link">
                                                    <div class="action-link-left">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalAddcart">Add to Cart</a>
                                                    </div>
                                                    <div class="action-link-right">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalQuickview"><i
                                                                class="icon-magnifier"></i></a>
                                                        <a href="wishlist.html"><i class="icon-heart"></i></a>
                                                        <a href="compare.html"><i class="icon-shuffle"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="content-left">
                                                    <h6 class="title"><a href="product-details-default.html">Condimentum
                                                            posuere</a></h6>
                                                    <ul class="review-star">
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="empty"><i class="ion-android-star"></i></li>
                                                    </ul>
                                                </div>
                                                <div class="content-right">
                                                    <span class="price"><del>$89.00</del> $80.00</span>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="product-default-single-item product-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="product-details-default.html" class="image-link">
                                                    <img src="assets/images/product/default/home-3/default-5.jpg"
                                                        alt="">
                                                    <img src="assets/images/product/default/home-3/default-6.jpg"
                                                        alt="">
                                                </a>
                                                <div class="tag">
                                                    <span>sale</span>
                                                </div>
                                                <div class="action-link">
                                                    <div class="action-link-left">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalAddcart">Add to Cart</a>
                                                    </div>
                                                    <div class="action-link-right">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalQuickview"><i
                                                                class="icon-magnifier"></i></a>
                                                        <a href="wishlist.html"><i class="icon-heart"></i></a>
                                                        <a href="compare.html"><i class="icon-shuffle"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="content-left">
                                                    <h6 class="title"><a href="product-details-default.html">Cras neque
                                                            metus</a></h6>
                                                    <ul class="review-star">
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="empty"><i class="ion-android-star"></i></li>
                                                    </ul>
                                                </div>
                                                <div class="content-right">
                                                    <span class="price"><del>$70.00</del> $60.00</span>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="product-default-single-item product-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="product-details-default.html" class="image-link">
                                                    <img src="assets/images/product/default/home-3/default-7.jpg"
                                                        alt="">
                                                    <img src="assets/images/product/default/home-3/default-8.jpg"
                                                        alt="">
                                                </a>
                                                <div class="action-link">
                                                    <div class="action-link-left">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalAddcart">Add to Cart</a>
                                                    </div>
                                                    <div class="action-link-right">
                                                        <a href="#" data-bs-toggle="modal"
                                                            data-bs-target="#modalQuickview"><i
                                                                class="icon-magnifier"></i></a>
                                                        <a href="wishlist.html"><i class="icon-heart"></i></a>
                                                        <a href="compare.html"><i class="icon-shuffle"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="content-left">
                                                    <h6 class="title"><a href="product-details-default.html">Donec eu
                                                            libero
                                                            ac</a></h6>
                                                    <ul class="review-star">
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="fill"><i class="ion-android-star"></i></li>
                                                        <li class="empty"><i class="ion-android-star"></i></li>
                                                    </ul>
                                                </div>
                                                <div class="content-right">
                                                    <span class="price">$74</span>
                                                </div>

                                            </div>
                                        </div> <!-- End Product Default Single Item -->
                                    </div>
                                </div>
                                <!-- If we need navigation buttons -->
                                <div class="swiper-button-prev"></div>
                                <div class="swiper-button-next"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Product Default Slider Section -->

        <!-- Start Blog Slider Section -->
        <div class="blog-default-slider-section section-top-gap-100 section-fluid">
            <!-- Start Section Content Text Area -->
            <div class="section-title-wrapper" data-aos="fade-up" data-aos-delay="0">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-content-gap">
                                <div class="secton-content">
                                    <h3 class="section-title">THE LATEST BLOGS</h3>
                                    <p>Present posts in a best way to highlight interesting moments of your blog.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Start Section Content Text Area -->
            <div class="blog-wrapper" data-aos="fade-up" data-aos-delay="200">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="blog-default-slider default-slider-nav-arrow">
                                <!-- Slider main container -->
                                <div class="swiper-container blog-slider">
                                    <!-- Additional required wrapper -->
                                    <div class="swiper-wrapper">
                                        <!-- Start Product Default Single Item -->
                                        <div class="blog-default-single-item blog-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="blog-single-sidebar-left.html" class="image-link">
                                                    <img class="img-fluid"
                                                        src="assets/images/blog/blog-grid-home-1-img-1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="content">
                                                <h6 class="title"><a href="blog-single-sidebar-left.html">Blog Post
                                                        One</a>
                                                </h6>
                                                <p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu
                                                    ex.
                                                    Aenean posuere libero eu augue condimentum rhoncus. Praesent</p>
                                                <div class="inner">
                                                    <a href="blog-single-sidebar-left.html"
                                                        class="read-more-btn icon-space-left">Read More <span><i
                                                                class="ion-ios-arrow-thin-right"></i></span></a>
                                                    <div class="post-meta">
                                                        <a href="#" class="date">24 Apr</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="blog-default-single-item blog-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="blog-single-sidebar-left.html" class="image-link">
                                                    <img class="img-fluid"
                                                        src="assets/images/blog/blog-grid-home-1-img-2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="content">
                                                <h6 class="title"><a href="blog-single-sidebar-left.html">Blog Post
                                                        Two</a>
                                                </h6>
                                                <p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu
                                                    ex.
                                                    Aenean posuere libero eu augue condimentum rhoncus. Praesent</p>
                                                <div class="inner">
                                                    <a href="#" class="read-more-btn icon-space-left">Read More <span><i
                                                                class="ion-ios-arrow-thin-right"></i></span></a>
                                                    <div class="post-meta">
                                                        <a href="blog-single-sidebar-left.html" class="date">24 Apr</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="blog-default-single-item blog-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="blog-single-sidebar-left.html" class="image-link">
                                                    <img class="img-fluid"
                                                        src="assets/images/blog/blog-grid-home-1-img-3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="content">
                                                <h6 class="title"><a href="blog-single-sidebar-left.html">Blog Post
                                                        Three</a></h6>
                                                <p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu
                                                    ex.
                                                    Aenean posuere libero eu augue condimentum rhoncus. Praesent</p>
                                                <div class="inner">
                                                    <a href="blog-single-sidebar-left.html"
                                                        class="read-more-btn icon-space-left">Read More <span><i
                                                                class="ion-ios-arrow-thin-right"></i></span></a>
                                                    <div class="post-meta">
                                                        <a href="#" class="date">24 Apr</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="blog-default-single-item blog-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="blog-single-sidebar-left.html" class="image-link">
                                                    <img class="img-fluid"
                                                        src="assets/images/blog/blog-grid-home-1-img-4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="content">
                                                <h6 class="title"><a href="blog-single-sidebar-left.html">Blog Post
                                                        Four</a>
                                                </h6>
                                                <p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu
                                                    ex.
                                                    Aenean posuere libero eu augue condimentum rhoncus. Praesent</p>
                                                <div class="inner">
                                                    <a href="blog-single-sidebar-left.html"
                                                        class="read-more-btn icon-space-left">Read More <span><i
                                                                class="ion-ios-arrow-thin-right"></i></span></a>
                                                    <div class="post-meta">
                                                        <a href="#" class="date">24 Apr</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="blog-default-single-item blog-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="blog-single-sidebar-left.html" class="image-link">
                                                    <img class="img-fluid"
                                                        src="assets/images/blog/blog-grid-home-1-img-5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="content">
                                                <h6 class="title"><a href="blog-single-sidebar-left.html">Blog Post
                                                        Five</a>
                                                </h6>
                                                <p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu
                                                    ex.
                                                    Aenean posuere libero eu augue condimentum rhoncus. Praesent</p>
                                                <div class="inner">
                                                    <a href="blog-single-sidebar-left.html"
                                                        class="read-more-btn icon-space-left">Read More <span><i
                                                                class="ion-ios-arrow-thin-right"></i></span></a>
                                                    <div class="post-meta">
                                                        <a href="#" class="date">24 Apr</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                        <!-- Start Product Default Single Item -->
                                        <div class="blog-default-single-item blog-color--pink swiper-slide">
                                            <div class="image-box">
                                                <a href="blog-single-sidebar-left.html" class="image-link">
                                                    <img class="img-fluid"
                                                        src="assets/images/blog/blog-grid-home-1-img-6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="content">
                                                <h6 class="title"><a href="blog-single-sidebar-left.html">Blog Post
                                                        Six</a>
                                                </h6>
                                                <p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu
                                                    ex.
                                                    Aenean posuere libero eu augue condimentum rhoncus. Praesent</p>
                                                <div class="inner">
                                                    <a href="blog-single-sidebar-left.html"
                                                        class="read-more-btn icon-space-left">Read More <span><i
                                                                class="ion-ios-arrow-thin-right"></i></span></a>
                                                    <div class="post-meta">
                                                        <a href="#" class="date">24 Apr</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Product Default Single Item -->
                                    </div>
                                </div>
                                <!-- If we need navigation buttons -->
                                <div class="swiper-button-prev"></div>
                                <div class="swiper-button-next"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Blog Slider Section -->

        <!-- Start Company Logo Section -->
        <div class="company-logo-section section-top-gap-100 section-fluid">
            <div class="company-logo-wrapper" data-aos="fade-up" data-aos-delay="0">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="company-logo-slider default-slider-nav-arrow">
                                <!-- Slider main container -->
                                <div class="swiper-container company-logo-slider">
                                    <!-- Additional required wrapper -->
                                    <div class="swiper-wrapper">
                                        <!-- Start Company Logo Single Item -->
                                        <div class="company-logo-single-item swiper-slide">
                                            <div class="image"><img class="img-fluid"
                                                    src="assets/images/company-logo/company-logo-1.png" alt=""></div>
                                        </div>
                                        <!-- End Company Logo Single Item -->
                                        <!-- Start Company Logo Single Item -->
                                        <div class="company-logo-single-item swiper-slide">
                                            <div class="image"><img class="img-fluid"
                                                    src="assets/images/company-logo/company-logo-2.png" alt=""></div>
                                        </div>
                                        <!-- End Company Logo Single Item -->
                                        <!-- Start Company Logo Single Item -->
                                        <div class="company-logo-single-item swiper-slide">
                                            <div class="image"><img class="img-fluid"
                                                    src="assets/images/company-logo/company-logo-3.png" alt=""></div>
                                        </div>
                                        <!-- End Company Logo Single Item -->
                                        <!-- Start Company Logo Single Item -->
                                        <div class="company-logo-single-item swiper-slide">
                                            <div class="image"><img class="img-fluid"
                                                    src="assets/images/company-logo/company-logo-4.png" alt=""></div>
                                        </div>
                                        <!-- End Company Logo Single Item -->
                                        <!-- Start Company Logo Single Item -->
                                        <div class="company-logo-single-item swiper-slide">
                                            <div class="image"><img class="img-fluid"
                                                    src="assets/images/company-logo/company-logo-5.png" alt=""></div>
                                        </div>
                                        <!-- End Company Logo Single Item -->
                                        <!-- Start Company Logo Single Item -->
                                        <div class="company-logo-single-item swiper-slide">
                                            <div class="image"><img class="img-fluid"
                                                    src="assets/images/company-logo/company-logo-6.png" alt=""></div>
                                        </div>
                                        <!-- End Company Logo Single Item -->
                                        <!-- Start Company Logo Single Item -->
                                        <div class="company-logo-single-item swiper-slide">
                                            <div class="image"><img class="img-fluid"
                                                    src="assets/images/company-logo/company-logo-7.png" alt=""></div>
                                        </div>
                                        <!-- End Company Logo Single Item -->
                                        <!-- Start Company Logo Single Item -->
                                        <div class="company-logo-single-item swiper-slide">
                                            <div class="image"><img class="img-fluid"
                                                    src="assets/images/company-logo/company-logo-8.png" alt=""></div>
                                        </div>
                                        <!-- End Company Logo Single Item -->
                                    </div>
                                </div>
                                <!-- If we need navigation buttons -->
                                <div class="swiper-button-prev d-none d-md-block"></div>
                                <div class="swiper-button-next d-none d-md-block"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Company Logo Section -->

        <!-- Start Footer Section -->
        <footer class="footer-section footer-bg section-top-gap-100">
            <div class="footer-wrapper">
                <!-- Start Footer Top -->
                <div class="footer-top">
                    <div class="container">
                        <div class="row mb-n6">
                            <div class="col-lg-3 col-sm-6 mb-6">
                                <!-- Start Footer Single Item -->
                                <div class="footer-widget-single-item footer-widget-color--pink" data-aos="fade-up"
                                    data-aos-delay="0">
                                    <h5 class="title">INFORMATION</h5>
                                    <ul class="footer-nav">
                                        <li><a href="#">Delivery Information</a></li>
                                        <li><a href="#">Terms & Conditions</a></li>
                                        <li><a href="contact-us.html">Contact</a></li>
                                        <li><a href="#">Returns</a></li>
                                    </ul>
                                </div>
                                <!-- End Footer Single Item -->
                            </div>
                            <div class="col-lg-3 col-sm-6 mb-6">
                                <!-- Start Footer Single Item -->
                                <div class="footer-widget-single-item footer-widget-color--pink" data-aos="fade-up"
                                    data-aos-delay="200">
                                    <h5 class="title">MY ACCOUNT</h5>
                                    <ul class="footer-nav">
                                        <li><a href="my-account.html">My account</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="privacy-policy.html">Privacy Policy</a></li>
                                        <li><a href="faq.html">Frequently Questions</a></li>
                                        <li><a href="#">Order History</a></li>
                                    </ul>
                                </div>
                                <!-- End Footer Single Item -->
                            </div>
                            <div class="col-lg-3 col-sm-6 mb-6">
                                <!-- Start Footer Single Item -->
                                <div class="footer-widget-single-item footer-widget-color--pink" data-aos="fade-up"
                                    data-aos-delay="400">
                                    <h5 class="title">CATEGORIES</h5>
                                    <ul class="footer-nav">
                                        <li><a href="#">Decorative</a></li>
                                        <li><a href="#">Kitchen utensils</a></li>
                                        <li><a href="#">Chair & Bar stools</a></li>
                                        <li><a href="#">Sofas and Armchairs</a></li>
                                        <li><a href="#">Interior lighting</a></li>
                                    </ul>
                                </div>
                                <!-- End Footer Single Item -->
                            </div>
                            <div class="col-lg-3 col-sm-6 mb-6">
                                <!-- Start Footer Single Item -->
                                <div class="footer-widget-single-item footer-widget-color--pink" data-aos="fade-up"
                                    data-aos-delay="600">
                                    <h5 class="title">ABOUT US</h5>
                                    <div class="footer-about">
                                        <p>We are a team of designers and developers that create high quality Magento,
                                            Prestashop, Opencart.</p>

                                        <address>
                                            <span>Address: Your address goes here.</span>
                                            <span>Email: demo@example.com</span>
                                        </address>
                                    </div>
                                </div>
                                <!-- End Footer Single Item -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Footer Top -->

                <!-- Start Footer Center -->
                <div class="footer-center">
                    <div class="container">
                        <div class="row mb-n6">
                            <div class="col-xl-3 col-lg-4 col-md-6 mb-6">
                                <div class="footer-social" data-aos="fade-up" data-aos-delay="0">
                                    <h4 class="title">FOLLOW US</h4>
                                    <ul class="footer-social-link">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-7 col-lg-6 col-md-6 mb-6">
                                <div class="footer-newsletter" data-aos="fade-up" data-aos-delay="200">
                                    <h4 class="title">DON'T MISS OUT ON THE LATEST</h4>
                                    <div class="form-newsletter">
                                        <form action="#" method="post">
                                            <div class="form-fild-newsletter-single-item input-color--pink">
                                                <input type="email" placeholder="Your email address..." required>
                                                <button type="submit">SUBSCRIBE!</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Start Footer Center -->

                <!-- Start Footer Bottom -->
                <div class="footer-bottom">
                    <div class="container">
                        <div
                            class="row justify-content-between align-items-center align-items-center flex-column flex-md-row mb-n6">
                            <div class="col-auto mb-6">
                                <div class="footer-copyright">
                                    <p class="copyright-text">&copy; 2021 <a href="index.html">therankme</a>. Made with
                                        <i class="fa fa-heart text-danger"></i> by <a href="https://therankme.com/"
                                            target="_blank">therankme</a>
                                    </p>

                                </div>
                            </div>
                            <div class="col-auto mb-6">
                                <div class="footer-payment">
                                    <div class="image">
                                        <img src="assets/images/company-logo/payment.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Start Footer Bottom -->
            </div>
        </footer>
        <!-- End Footer Section -->

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
                                                    src="assets/images/product/default/home-3/default-1.jpg" alt="">
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="modal-add-cart-info"><i class="fa fa-check-square"></i>Added to
                                                cart
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
                                        <li class="modal-continue-button"><a href="#" data-bs-dismiss="modal">CONTINUE
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
                                                    <img src="assets/images/product/default/home-3/default-1.jpg"
                                                        alt="">
                                                </div>
                                                <div class="product-image-large-image swiper-slide img-responsive">
                                                    <img src="assets/images/product/default/home-3/default-2.jpg"
                                                        alt="">
                                                </div>
                                                <div class="product-image-large-image swiper-slide img-responsive">
                                                    <img src="assets/images/product/default/home-3/default-3.jpg"
                                                        alt="">
                                                </div>
                                                <div class="product-image-large-image swiper-slide img-responsive">
                                                    <img src="assets/images/product/default/home-3/default-4.jpg"
                                                        alt="">
                                                </div>
                                                <div class="product-image-large-image swiper-slide img-responsive">
                                                    <img src="assets/images/product/default/home-3/default-5.jpg"
                                                        alt="">
                                                </div>
                                                <div class="product-image-large-image swiper-slide img-responsive">
                                                    <img src="assets/images/product/default/home-3/default-6.jpg"
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
                                                        src="assets/images/product/default/home-3/default-1.jpg" alt="">
                                                </div>
                                                <div class="product-image-thumb-single swiper-slide">
                                                    <img class="img-fluid"
                                                        src="assets/images/product/default/home-3/default-2.jpg" alt="">
                                                </div>
                                                <div class="product-image-thumb-single swiper-slide">
                                                    <img class="img-fluid"
                                                        src="assets/images/product/default/home-3/default-3.jpg" alt="">
                                                </div>
                                                <div class="product-image-thumb-single swiper-slide">
                                                    <img class="img-fluid"
                                                        src="assets/images/product/default/home-3/default-4.jpg" alt="">
                                                </div>
                                                <div class="product-image-thumb-single swiper-slide">
                                                    <img class="img-fluid"
                                                        src="assets/images/product/default/home-3/default-5.jpg" alt="">
                                                </div>
                                                <div class="product-image-thumb-single swiper-slide">
                                                    <img class="img-fluid"
                                                        src="assets/images/product/default/home-3/default-6.jpg" alt="">
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
                                                        <input name="modal-product-color" id="modal-product-color-red"
                                                            class="color-select" type="radio" checked>
                                                        <span class="product-color-red"></span>
                                                    </label>
                                                    <label for="modal-product-color-tomato">
                                                        <input name="modal-product-color"
                                                            id="modal-product-color-tomato" class="color-select"
                                                            type="radio">
                                                        <span class="product-color-tomato"></span>
                                                    </label>
                                                    <label for="modal-product-color-green">
                                                        <input name="modal-product-color" id="modal-product-color-green"
                                                            class="color-select" type="radio">
                                                        <span class="product-color-green"></span>
                                                    </label>
                                                    <label for="modal-product-color-light-green">
                                                        <input name="modal-product-color"
                                                            id="modal-product-color-light-green" class="color-select"
                                                            type="radio">
                                                        <span class="product-color-light-green"></span>
                                                    </label>
                                                    <label for="modal-product-color-blue">
                                                        <input name="modal-product-color" id="modal-product-color-blue"
                                                            class="color-select" type="radio">
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
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste
                                                laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti
                                                nam
                                                in quos qui nemo ipsum numquam, reiciendis maiores quidem aperiam, rerum
                                                vel
                                                recusandae</p>
                                        </div>
                                        <!-- Start  Product Details Social Area-->
                                        <div class="modal-product-details-social">
                                            <span class="title">SHARE THIS PRODUCT</span>
                                            <ul>
                                                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a>
                                                </li>
                                                <li><a href="#" class="google-plus"><i
                                                            class="fa fa-google-plus"></i></a>
                                                </li>
                                                <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
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
        <script src="assets/js/vendor/modernizr-3.11.2.min.js"></script>
        <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
        <script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
        <script src="assets/js/vendor/popper.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>
        <script src="assets/js/vendor/jquery-ui.min.js"></script>

        <!--Plugins JS-->
        <script src="assets/js/plugins/swiper-bundle.min.js"></script>
        <script src="assets/js/plugins/material-scrolltop.js"></script>
        <script src="assets/js/plugins/jquery.nice-select.min.js"></script>
        <script src="assets/js/plugins/jquery.zoom.min.js"></script>
        <script src="assets/js/plugins/venobox.min.js"></script>
        <script src="assets/js/plugins/jquery.waypoints.js"></script>
        <script src="assets/js/plugins/jquery.lineProgressbar.js"></script>
        <script src="assets/js/plugins/aos.min.js"></script>
        <script src="assets/js/plugins/jquery.instagramFeed.js"></script>
        <script src="assets/js/plugins/ajax-mail.js"></script>

        <!-- Use the minified version files listed below for better performance and remove the files listed above -->
        <!-- <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script> -->

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>
        <script src="script.js"></script>
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