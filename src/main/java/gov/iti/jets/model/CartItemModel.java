package gov.iti.jets.model;


import gov.iti.jets.service.ProductService;

public class CartItemModel {
    private Integer productId;
    private Integer quantity;
    public CartItemModel(Integer productId, Integer quantity) {
//        ProductService productService = new ProductService();
//        this.productModel = productService.getProductByID(productId);
        this.productId = productId;
        this.quantity = quantity;
    }
    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getQuantity() {
        return quantity;
    }
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

}
