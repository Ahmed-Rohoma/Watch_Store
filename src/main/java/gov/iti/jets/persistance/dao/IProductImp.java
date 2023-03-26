package gov.iti.jets.persistance.dao;

import java.util.ArrayList;
import java.util.List;

import gov.iti.jets.model.ProductModel;
import jakarta.persistence.*;
import gov.iti.jets.persistance.connection.DBMananger;
import gov.iti.jets.entity.Product;

public class IProductImp implements IProduct {
    private EntityManager entityManager;

    public IProductImp() {
        entityManager = DBMananger.getInstance().createEntityManager();
    }

    @Override
    public List<ProductModel> getAllProducts() {
        Query query = entityManager.createQuery("SELECT p FROM Product p");
        System.out.println("dao 2");
        List<Product> pro = query.getResultList();
        List<ProductModel> result = new ArrayList<>();
        for (Product p:pro) {
            result.add(new ProductModel(p.getProductId(),p.getProductName(),p.getPrice()
            ,p.getQuantity(),p.getDescription(),p.getBrandId(),p.getImagePath()));
        }
        return result;
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
