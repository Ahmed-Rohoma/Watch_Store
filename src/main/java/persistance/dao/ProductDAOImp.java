package persistance.dao;

import java.util.List;

import persistance.connection.DBMananger;
import jakarta.persistence.*;
import entity.Product;

public class ProductDAOImp implements ProductDaoInterface {
    private EntityManager entityManager;

    public ProductDAOImp() {
        entityManager = DBMananger.getInstance().createEntityManager();
    }

    @Override
    public List<Product> getAllProducts() {
        Query query = entityManager.createQuery("SELECT p FROM Product p");
        return query.getResultList();
    }

    @Override
    public Product getProductByID(int productID) {
        Product pro = entityManager.find(Product.class, productID); 
        System.out.println(pro.getImagePath());
        pro.setImagePath(pro.getImagePath().replace("\\\\", "\\"));
        System.out.println(pro.getImagePath());
        return pro;
    }

    @Override
    public boolean addProduct(Product product) {
        if (product != null) {
            entityManager.getTransaction().begin();
            entityManager.persist(product);
            entityManager.getTransaction().commit();
            return true;
        }
        return false;
    }

    @Override
    public boolean deleteProductById(int productID) {
        Product product = entityManager.find(Product.class, productID);
        if (product != null) {
            entityManager.getTransaction().begin();
            entityManager.remove(product);
            entityManager.getTransaction().commit();
            return true;
        }
        return false;
    }

    @Override
    public boolean updateProduct(Product product) {
        if (product != null) {
            entityManager.getTransaction().begin();
            entityManager.merge(product);
            entityManager.getTransaction().commit();
            return true;
        }
        return false;
    }
}
