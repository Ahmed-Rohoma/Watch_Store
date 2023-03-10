package gov.iti.jets;

public class Product {
    
    private int productId;
    private String productName;
    private String images;
    private float price;
    private int quantity;
    private boolean isAvailable;
    private int brandId;
    private String description;

    public Product(int productId, String productName, String images, float price, int quantity, boolean isAvailable,
            int brandId, String description) {
        this.productId = productId;
        this.productName = productName;
        this.images = images;
        this.price = price;
        this.quantity = quantity;
        this.isAvailable = isAvailable;
        this.brandId = brandId;
        this.description = description;
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

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean isAvailable() {
        return isAvailable;
    }

    public void setAvailable(boolean available) {
        isAvailable = available;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}