package gov.iti.jets.model;

import lombok.Builder;

import java.math.BigDecimal;

@Builder
public class ProductModel {
    private int productId;
    private String productName;
    private BigDecimal price;
    private Integer quantity;
    private String description;
    private Integer brandId;
    private String imagePath;

    public ProductModel() {
    }

    public ProductModel(int productId, String productName, BigDecimal price, Integer quantity, String description,
            Integer brandId, String imagePath) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.brandId = brandId;
        this.imagePath = imagePath;
    }
    public void setProductModel(ProductModel p) {
        this.productId = p.productId;
        this.productName = p.productName;
        this.price = p.price;
        this.quantity = p.quantity;
        this.description = p.description;
        this.brandId = p.brandId;
        this.imagePath = p.imagePath;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
}
