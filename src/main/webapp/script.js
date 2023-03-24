$(document).ready(function () {
    var prod;
    $.when($.get("http://localhost:9090/admin/products", function (data) {
        prod = JSON.parse(data);
        console.log(prod);
        // <c:set var="products" value='${prod}' />
    })).done(function (d) {
        console.log(d);
        prod = JSON.parse(d);
        var products = '';
        $.each(prod, function (key, val) {
            products += `<div class="product-default-single-item product-color--pink swiper-slide">
           <div class="image-box">
               <a href="http://localhost:9090/product-details?productId=`+val.productId+`" class="image-link">
                   <img src="../assets/images/product/default/home-3/default-2.jpg"
                       alt="">
                   <img src="../assets/images/product/default/home-3/default-2.jpg"
                       alt="">
               </a>
               <div class="tag">
                   <span>sale</span>
               </div>
               <div class="action-link">
               <div class="action-link-left">
                       <a id="ajax-link"  href="#" onclick="myFunction(`+ val.productId + `,event) "
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
                           href="product-details.jsp?product="`+val+`">`+ val.productName + `</a></h6>
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
        // Display the products on the page
        $("#newproducts").html(products);
        $("#newproducts").html(products);

        console.log("end");
    });

    // console.log("welcome....");
    // $.get("http://localhost:9090/admin/products", function (data) {
    //    var prod = JSON.parse(data);
    //     console.log(prod);
    //     <c:set var="products" value='${prod}'/>
    // });

    
});
function myFunction(ProductId) {
    console.log("Add Item to Cart productId = " +ProductId);
     // Make an AJAX request
           $.ajax({
             url: "/add-to-cart",
             type: "GET",
             data: { action: 'add' ,productId: ProductId},
             success: function(response) {
               // handle successful response
               $("#content").html(response);
             },
             error: function(jqXHR, textStatus, errorThrown) {
               // handle error response
               console.log(textStatus, errorThrown);
             }
           });
}
// $("#ajax-link").click(function (event) {

//     console.log("Add Item to Cart");
//     // Prevent default link behavior
//     // event.preventDefault();

//     // Get the link's href attribute
//     var href = $(this).attr("href");

//     // Make an AJAX request
//     //        $.ajax({
//     //          url: "/add-to-cart",
//     //          type: "GET",
//     //          data: { action: 'add' ,productId: '1'},
//     //          success: function(response) {
//     //            // handle successful response
//     //            $("#content").html(response);
//     //          },
//     //          error: function(jqXHR, textStatus, errorThrown) {
//     //            // handle error response
//     //            console.log(textStatus, errorThrown);
//     //          }
//     //        });
// });


//   <a href="`+ 'http://localhost:9090/add-to-cart?action=add&productId='+val.productId

//                         +`&action=add"
//                             data-bs-target="#modalAddcart">Add to Cart</a>

