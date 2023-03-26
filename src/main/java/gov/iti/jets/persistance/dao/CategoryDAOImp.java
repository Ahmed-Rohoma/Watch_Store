package gov.iti.jets.persistance.dao;


import java.util.List;

import gov.iti.jets.persistance.connection.DBMananger;
import jakarta.persistence.*;
import gov.iti.jets.entity.*;

public class CategoryDAOImp implements CategoryDaoInterface {
    private EntityManager entityManager;

    public CategoryDAOImp() {
        entityManager = DBMananger.getInstance().createEntityManager();
    }

    @Override
    public List<Brand> getAllCategories() {
        Query query = entityManager.createQuery("SELECT p FROM Brand p");
        return query.getResultList();
    }

    @Override
    public Brand getCategoryByID(int categoryID) {
        return entityManager.getReference(Brand.class, categoryID);  // null if not found 
        // return entityManager.find(Product.class, productID);     // exception if not found 
    }

    @Override
    public boolean addCategory(Brand brand) {
        if (brand != null) {
            entityManager.getTransaction().begin();
            entityManager.persist(brand);
            entityManager.getTransaction().commit();
            return true;
        }
        return false;
    }

    @Override
    public boolean deleteCategoryById(int categoryID) {
        Product category = entityManager.find(Product.class, categoryID);
        if (category != null) {
            entityManager.getTransaction().begin();
            entityManager.remove(category);
            entityManager.getTransaction().commit();
            return true;
        }
        return false;
    }

    @Override
    public boolean updateCategory(Brand brand) {
        if (brand != null) {
            entityManager.getTransaction().begin();
            entityManager.merge(brand);
            entityManager.getTransaction().commit();
            return true;
        }
        return false;
    }
}
