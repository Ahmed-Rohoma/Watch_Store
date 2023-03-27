package gov.iti.jets.service;

import gov.iti.jets.entity.Product;
import gov.iti.jets.mapper.ProductMapper;
import gov.iti.jets.model.ProductModel;
import gov.iti.jets.persistance.dao.IProductImp;

public class ProductService {
    ProductMapper productMapper = new ProductMapper();
    IProductImp productDAO = new IProductImp();

    
    public ProductModel getProductByID(Integer productId){
        return productMapper.toModel(productDAO.getProductByID(productId));
    }
    
}
