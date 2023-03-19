package gov.iti.jets.model;


import gov.iti.jets.service.ProductService;

public class CartItemModel {
    public ProductModel productModel;
    public Integer quantity;
    public CartItemModel(Integer productId, Integer quantity) {
        ProductService productService = new ProductService();
        this.productModel = productService.getProductByID(productId);
        this.quantity = quantity;
    }
    public Integer getQuantity() {
        return quantity;
    }
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

}
