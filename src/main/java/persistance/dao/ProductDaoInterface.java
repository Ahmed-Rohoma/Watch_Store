package persistance.dao;

import java.util.List;
import entity.Product;

public interface ProductDaoInterface {
    public List<Product> getAllProducts();
    public Product getProductByID(int productID);
    public boolean addProduct(Product product);
    public boolean deleteProductById(int productID);
    public boolean updateProduct(Product product);
}
