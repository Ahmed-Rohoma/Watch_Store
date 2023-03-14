$(document).ready(function () {

    console.log("welcome....");

    $.get("getnews", function (data) {
        var prod = JSON.parse(data);
        console.log(prod);
        var products = '';

        // var products = `<div class="product-wrapper" data-aos="fade-up" data-aos-delay="200">
        //             <div class="container">
        //                 <div class="row">
        //                     <div class="col-12">
        //                         <div class="product-slider-default-2rows default-slider-nav-arrow">
        //                             <!-- Slider main container -->
        //                             <div class="swiper-container product-default-slider-4grid-2row">
        //                                 <!-- Additional required wrapper -->
        //                                 <div class="swiper-wrapper">`;

        $.each(prod, function (key, val) {

            products += `<div class="product-default-single-item product-color--pink swiper-slide">
            <div class="image-box">
                <a href="product-details-default.html" class="image-link">
                    <img src="assets/images/product/default/home-3/`+ val.images + `"
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
                    <h6 class="title"><a
                            href="product-details-default.html">`+ val.productName + `</a></h6>
                    <ul class="review-star">
                        <li class="fill"><i class="ion-android-star"></i></li>
                        <li class="fill"><i class="ion-android-star"></i></li>
                        <li class="fill"><i class="ion-android-star"></i></li>
                        <li class="fill"><i class="ion-android-star"></i></li>
                        <li class="empty"><i class="ion-android-star"></i></li>
                    </ul>
                </div>
                <div class="content-right">
                    <span class="price">`+ val.price + `</span>
                </div>

            </div>
        </div>`;
        });

//         products += `</div>
//     </div>
//     <!-- If we need navigation buttons -->
//     <div class="swiper-button-prev"></div>
//     <div class="swiper-button-next"></div>
// </div>
// </div>
// </div>
// </div>
// </div>
// </div>`;
        $('#newproducts').html(products);
    });
});

