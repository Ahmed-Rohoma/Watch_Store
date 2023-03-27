package gov.iti.jets.model;


import gov.iti.jets.service.ProductService;

public class CartItemModel extends ProductModel {
    private Integer itemQuantity;
    public CartItemModel(Integer productId, Integer quantity) {
        ProductService productService = new ProductService();
        ProductModel productModel= productService.getProductByID(productId);
        this.itemQuantity = quantity;
        this.setProductModel(productModel);
    }
    public Integer getitemQuantity() {
        return itemQuantity;
    }
    public void setitemQuantity(Integer quantity) {
        this.itemQuantity = quantity;
    }
    public double getTotal(){
        System.out.println("no: " + itemQuantity +"    --- price" + getPrice());
        return itemQuantity * getPrice().doubleValue();
    }

}
