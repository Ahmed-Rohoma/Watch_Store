$(document).ready(function () {

    console.log("welcome....");

    $.get("admin/products", function (data) {
       var prod = JSON.parse(data);

        console.log(prod);
        var products = '';
        $.each(prod, function (key, val) {

            products += `<div class="product-default-single-item product-color--pink swiper-slide">
            <div class="image-box">
                <a href="product-details.jsp" class="image-link">
                    <img src="../assets/images/product/default/home-3/`+ val.images + `"
                        alt="">
                    <img src="../assets/images/product/default/home-3/default-2.jpg"
                        alt="">
                </a>
                <div class="tag">
                    <span>sale</span>
                </div>
                <div class="action-link">
                <div class="action-link-left">
                        <a href="`+ 'http://localhost:9090/add-to-cart?action=add&productId='+val.productId

                        +`&action=add"
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
                            href="product-details.jsp">`+ val.productName + `</a></h6>
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
        $('#newproducts').html(products);
    });
});

// ${pageContext.request.contentPath}