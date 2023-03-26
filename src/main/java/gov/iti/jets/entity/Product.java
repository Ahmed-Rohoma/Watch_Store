package gov.iti.jets.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "productId", nullable = false)
    private Integer productId;

    @Column(name = "productName", length = 45)
    private String productName;

    @Column(name = "price", precision = 5, scale = 2)
    private BigDecimal price;

    @Column(name = "quantity")
    private Integer quantity;

    @Column(name = "description", length = 100)
    private String description;

    @Column(name = "brandId")
    private Integer brandId;

    @Column(name = "imagePath", length = 500)
    private String imagePath;

    // @OneToMany(mappedBy = "product")
    // private Set<OrderProduct> orderProducts = new LinkedHashSet<>();

    public Product() {
    }

    public Product(String productName, BigDecimal price, Integer quantity, String description,
            Integer brandId, String imagePath) {
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.brandId = brandId;
        this.imagePath = imagePath;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer id) {
        this.productId = id;
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

    // public Set<OrderProduct> getOrderProducts() {
    //     return orderProducts;
    // }

    // public void setOrderProducts(Set<OrderProduct> orderProducts) {
    //     this.orderProducts = orderProducts;
    // }

    @Override
    public String toString() {
        return "Product Name : " + productName + " | Product ID : " + productId;
    }

}