package Dao;

import java.util.List;

import jakarta.persistence.*;
import model.Product;

public class ProductDAOImp implements ProductDaoInterface {
    private EntityManager entityManager;
    private EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("myPersistenceUnit");

    public ProductDAOImp() {
        entityManager = entityManagerFactory.createEntityManager();
    }

    @Override
    public List<Product> getAllProducts() {
        Query query = entityManager.createQuery("SELECT p FROM Product p");
        return query.getResultList();
    }

    @Override
    public Product getProductByID(int productID) {
        return entityManager.find(Product.class, productID);
    }

    @Override
    public boolean addProduct(Product product) {
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(product);
            entityManager.getTransaction().commit();
            return true;
        } catch (Exception e) {
            return false;
        }
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
        try {
            entityManager.getTransaction().begin();
            entityManager.merge(product);
            entityManager.getTransaction().commit();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
