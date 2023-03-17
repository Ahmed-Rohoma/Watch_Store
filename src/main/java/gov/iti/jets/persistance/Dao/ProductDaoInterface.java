package gov.iti.jets.persistance.Dao;
import java.util.List;
import gov.iti.jets.repository.entity.Product;

public interface ProductDaoInterface {
    public List<gov.iti.jets.presentation.dtos.Product> getAllProducts();
    public Product getProductByID(int productID);
    public boolean addProduct(Product product);
    public boolean deleteProductById(int productID);
    public boolean updateProduct(Product product);
}
