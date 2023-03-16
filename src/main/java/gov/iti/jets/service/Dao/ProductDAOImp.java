package gov.iti.jets.service.Dao;

import java.util.List;

import gov.iti.jets.service.DataBase.Connection;
import jakarta.persistence.*;
import gov.iti.jets.repository.entity.Product;

public class ProductDAOImp implements ProductDaoInterface {
    private EntityManager entityManager;

    public ProductDAOImp() {
        entityManager = Connection.getInstance().createEntityManager();
    }

    @Override
    public List<Product> getAllProducts() {
        Query query = entityManager.createQuery("SELECT p FROM Product p");
        System.out.println("dao 2");
        List<Product> pro = query.getResultList();        
        return pro;
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
