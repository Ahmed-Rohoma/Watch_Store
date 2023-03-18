package gov.iti.jets.persistance.dao;
import java.util.List;
import gov.iti.jets.entity.Product;

public interface IProduct {
    public List<gov.iti.jets.model.Product> getAllProducts();
    public Product getProductByID(int productID);
    public boolean addProduct(Product product);
    public boolean deleteProductById(int productID);
    public boolean updateProduct(Product product);
}
