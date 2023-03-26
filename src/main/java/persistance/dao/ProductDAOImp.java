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
        entityManager.clear();
        return query.getResultList();
    }

    @Override
    public Product getProductByID(int productID) {
        Product pro = entityManager.find(Product.class, productID);
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
    public boolean updateProduct(Product updatedproduct, int id) {
        if (updatedproduct != null) {
            entityManager.getTransaction().begin();
            Product product = entityManager.find(Product.class, id);
            System.out.println("before : " + product);
            applyNewDataIntoProductEntity(product, updatedproduct);
            System.out.println("after  : " + product);
            entityManager.merge(product);
            entityManager.getTransaction().commit();
            entityManager.clear();
            return true;
        }
        return false;
    }

    private void applyNewDataIntoProductEntity(Product entityPro, Product newPro) {

        entityPro.setProductName(newPro.getProductName());
        entityPro.setDescription(newPro.getDescription());
        entityPro.setPrice(newPro.getPrice());
        entityPro.setQuantity(newPro.getQuantity());
        entityPro.setBrandId(newPro.getBrandId());
        entityPro.setImagePath(newPro.getImagePath());

    }
}
