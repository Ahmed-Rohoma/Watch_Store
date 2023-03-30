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
        entityManager.clear();
        return query.getResultList();
    }

    @Override
    public Brand getCategoryByID(int categoryID) {
        return entityManager.getReference(Brand.class, categoryID); // null if not found
        // return entityManager.find(Product.class, productID); // exception if not
        // found
    }

    @Override
    public boolean addCategory(String brandName) {
        if (brandName != null) {
            try {
                Brand brand = new Brand(brandName);
                entityManager.getTransaction().begin();
                entityManager.persist(brand);
                entityManager.getTransaction().commit();
                return true;
            } catch (Exception e) {
                entityManager.getTransaction().rollback();
            }
        }
        return false;
    }

    @Override
    public boolean deleteCategoryById(int categoryID) {
        Brand brand = entityManager.find(Brand.class, categoryID);
        if (brand != null) {
            try {
                entityManager.getTransaction().begin();
                entityManager.remove(brand);
                entityManager.getTransaction().commit();
                return true;
            } catch (Exception e) {
                entityManager.getTransaction().rollback();
            }
        }
        return false;
    }

    @Override
    public boolean updateCategory(Integer id, String newName) {
        Brand brand = getCategoryByID(id);
        if (brand != null) {
            try{
                brand.setBrandName(newName);
                entityManager.getTransaction().begin();
                entityManager.merge(brand);
                entityManager.getTransaction().commit();
                return true;
            }
            catch (Exception e) {
                entityManager.getTransaction().rollback();
            }
        }
        return false;
    }
}
