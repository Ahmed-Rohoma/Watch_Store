package gov.iti.jets.mapper;

import gov.iti.jets.entity.Product;
import gov.iti.jets.model.ProductModel;
import gov.iti.jets.service.ProductService;

public class ProductMapper {
    

    public ProductModel toModel(Product product) {
        ProductService service = new ProductService();
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
