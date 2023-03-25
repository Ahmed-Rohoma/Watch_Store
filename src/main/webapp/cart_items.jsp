<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<c:choose>
            <c:when test="${empty cart || cart.size() == 0 }">
                <c:import url="WEB-INF/views/empty-cart.jsp" />
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
                                                                <a href=""  onclick="removeFromCart('${item.key}',event)" ><i class="fa fa-trash-o"></i></a>
                                                            </td>
                                                            <td class="product_thumb"><a
                                                                    href="product-details-default.html"><img
                                                                        src="../assets/images/product/default/home-1/default-1.jpg"
                                                                        alt=""></a></td>
                                                            <td class="product_name"><a
                                                                    href="product-details-default.html">
                                                                    ${item.value.getProductName()}
                                                                </a></td>
                                                            <td class="product-price">
                                                                $${item.value.getPrice()}</td>
                                                            <!-- Ajax of change quantity --- lead to change total price -->
                                                            <td class="product_quantity">
                                                                <label>Quantity</label>
                                                                <input min="1" max="100" value=${item.value.getitemQuantity()} type="number" onblur="addToCart('${item.key}',this.value,event)">
                                                            </td>
                                                            <td class="product_total">
                                                                $${item.value.getTotal()}</td>
                                                        </tr>
                                                        <!-- End Cart Single Item-->
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="cart_submit">
                                            <button class="btn btn-md btn-golden" type="submit">update
                                                cart</button>
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
                                            <!-- <div class="cart_subtotal">
                                                <p>Subtotal</p>
                                                <p class="cart_amount">$215.00</p>
                                            </div>
                                            <div class="cart_subtotal ">
                                                <p>Shipping</p>
                                                <p class="cart_amount"><span>Flat
                                                        Rate:</span>
                                                    $255.00
                                                </p>
                                            </div>
                                            <a href="#">Calculate shipping</a> -->

                                            <div class="cart_subtotal">
                                                <p>Total</p>
                                                <p class="cart_amount">$${cartTotal}0</p>
                                            </div>
                                            <div class="checkout_btn">
                                                <a href="#" class="btn btn-md btn-golden">Proceed
                                                    to
                                                    Checkout</a>
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