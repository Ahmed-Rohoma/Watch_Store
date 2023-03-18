package gov.iti.jets.model;


public class Item {
    private ProductModel productModel;
    private Integer quantity;
    public Item(ProductModel productModel, Integer quantity) {
        this.productModel = productModel;
        this.quantity = quantity;
    }
    public ProductModel getProduct() {
        return productModel;
    }
    public void setProduct(ProductModel productModel) {
        this.productModel = productModel;
    }
    public Integer getQuantity() {
        return quantity;
    }
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
}
