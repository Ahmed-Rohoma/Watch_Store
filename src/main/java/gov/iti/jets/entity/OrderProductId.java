package gov.iti.jets.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class OrderProductId implements Serializable {
    @Column(name = "orderId", nullable = false)
    private Integer orderId;

    @Column(name = "productId", nullable = false)
    private Integer productId;

    public OrderProductId() {
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    @Override
    public String toString() {
        return "orderProductID ( " + orderId + "," + productId + ")";
    }

}