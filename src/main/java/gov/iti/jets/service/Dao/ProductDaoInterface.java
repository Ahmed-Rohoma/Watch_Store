package gov.iti.jets.service.Dao;
import java.util.List;
import gov.iti.jets.repository.entity.Product;

public interface ProductDaoInterface {
    public List<Product> getAllProducts();
    public Product getProductByID(int productID);
    public boolean addProduct(Product product);
    public boolean deleteProductById(int productID);
    public boolean updateProduct(Product product);
}
