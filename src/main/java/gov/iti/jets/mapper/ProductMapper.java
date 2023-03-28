package gov.iti.jets.mapper;

import gov.iti.jets.entity.Product;
import gov.iti.jets.model.ProductModel;

public class ProductMapper {
    

    public ProductModel toModel(Product product) {
        ProductModel model = ProductModel.builder()
                .productId(product.getProductId())
                .productName(product.getProductName())
                .price(product.getPrice())
                .quantity(product.getQuantity())
                .description(product.getDescription())
                .brandId(product.getBrandId())
                .imagePath(product.getImagePath())
                .build();
        // try {
        //     dto.setImage(service.getProductImage(model));
        // } catch (IOException e) {
        //     e.printStackTrace();
        // }
        return model;
    }
}
