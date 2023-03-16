package gov.iti.jets.repository.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "product")
public class Product {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "productId")
    private int productId;
    
    @Column(name = "productName")
    private String productName;
    
    @Column(name = "price")
    private Double price;
    
    @Column(name = "quantity")
    private Integer quantity;
    
    @Column(name = "description")
    private String description;
    
    @Column(name = "brandId")
    private Integer brandId;
    
    @Column(name = "imagePath")
    private String imagePath;
        
    public Product() {
    }

    public Product(String productName, Double price, Integer quantity, String description, Integer brandId, String imagePath) {
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.brandId = brandId;
        this.imagePath = imagePath;
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

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
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

    @Override
    public String toString() {
        return "Product [productId=" + productId + ", productName=" + productName + ", price=" + price + ", quantity="
                + quantity + ", description=" + description + ", brandId=" + brandId + ", imagePath=" + imagePath
                + "]";
    }

}
