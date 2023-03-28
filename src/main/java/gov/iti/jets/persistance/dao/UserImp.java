package gov.iti.jets.persistance.dao;

import gov.iti.jets.entity.Product;
import gov.iti.jets.entity.User;
import gov.iti.jets.mapper.UserMapper;
import gov.iti.jets.model.ProductModel;
import gov.iti.jets.model.UserModel;
import gov.iti.jets.persistance.connection.DBMananger;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import jakarta.persistence.criteria.*;

import java.util.ArrayList;
import java.util.List;

public class UserImp implements IUser {

    private EntityManager entityManager;
    UserMapper userMapper = new UserMapper();

    public UserImp() {
        entityManager = DBMananger.getInstance().createEntityManager();
    }

    @Override
    public UserModel getUser(int userId) {
        UserModel user = entityManager.find(UserModel.class, userId);
        entityManager.clear();
        return user;
    }

    @Override
    public List<UserModel> getAllUsers() {
        System.out.println("1");
        Query query = entityManager.createQuery("SELECT s FROM User s");
        System.out.println("2");
        List<User> users = query.getResultList();
        System.out.println("3");
        List<UserModel> result = new ArrayList<>();
        System.out.println("4");
        for (User user : users) {
            result.add(userMapper.entityToModel(user));
        }
        System.out.println("5");
        entityManager.clear();
        return result;
    }

    @Override
    public UserModel addUser(UserModel userModel) {
        if (userModel != null) {
            User user = userMapper.modelToEntity(userModel);
            entityManager.getTransaction().begin();
            entityManager.persist(user);
            entityManager.getTransaction().commit();
            entityManager.clear();
            return userMapper.entityToModel(user);
        }
        return null;
    }

    @Override
    public boolean emailIsExists(String email) {

        // if(entityManager.getReference(User.class, email) != null)
        // return true;
        // return false;

        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<User> userCriteriaQuery = criteriaBuilder.createQuery(User.class);
        Root<User> userRoot = userCriteriaQuery.from(User.class);
        userCriteriaQuery.select(userRoot)
                .where(criteriaBuilder.equal(userRoot.get("email"), email));
        User userResult = null;
        try {
            userResult = entityManager.createQuery(userCriteriaQuery).getSingleResult();
            return true;
        } catch (Exception e) {
            System.out.println("Invalid email || Password");
            return false;
        }
    }

    @Override
    public boolean updateUser(UserModel userModel) {
        if (userModel != null) {
            System.out.println(userModel.toString() + "/////////////////////////////");
            entityManager.getTransaction().begin();
            User user = entityManager.find(User.class, userModel.getUserId());
            user = userMapper.modelToEntity(userModel);
            entityManager.merge(user);
            entityManager.getTransaction().commit();
            entityManager.clear();
            return true;
        }
        return false;
    }

    @Override
    public UserModel getUser(String email, String password) {

        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<User> userCriteriaQuery = criteriaBuilder.createQuery(User.class);
        Root<User> userRoot = userCriteriaQuery.from(User.class);
        userCriteriaQuery.select(userRoot)
                .where(criteriaBuilder.and(criteriaBuilder.equal(userRoot.get("email"), email),
                        criteriaBuilder.equal(userRoot.get("password"), password)));
        User userResult = null;
        try {
            userResult = entityManager.createQuery(userCriteriaQuery).getSingleResult();
            System.out.println("valid email & Password from dao");
            return userMapper.entityToModel(userResult);
        } catch (Exception e) {
            System.out.println("Invalid email || Password from dao");
            return null;
        }

    }

}
