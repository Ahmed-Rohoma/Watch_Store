package gov.iti.jets.persistance.dao;
import java.util.List;
import gov.iti.jets.entity.Product;
import gov.iti.jets.model.ProductModel;

public interface IProduct {
    public List<ProductModel> getAllProducts();
    public Product getProductByID(int productID);
    public boolean addProduct(Product product);
    public boolean deleteProductById(int productID);
    public boolean updateProduct(Product product);
}
