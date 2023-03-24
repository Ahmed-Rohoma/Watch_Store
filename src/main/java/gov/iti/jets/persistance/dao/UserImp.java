package gov.iti.jets.persistance.dao;

import gov.iti.jets.entity.User;
import gov.iti.jets.mapper.UserMapper;
import gov.iti.jets.model.UserModel;
import gov.iti.jets.persistance.connection.DBMananger;
import jakarta.persistence.EntityManager;
import jakarta.persistence.criteria.*;

public class UserImp implements IUser {

    private EntityManager entityManager;
    UserMapper userMapper = new UserMapper();

    public UserImp() {
        entityManager = DBMananger.getInstance().createEntityManager();
    }

    @Override
    public UserModel getUser(int userId) {
        return entityManager.getReference(UserModel.class, userId);
    }

    @Override
    public boolean addUser(UserModel user) {
        if (user != null) {
            entityManager.getTransaction().begin();
            entityManager.persist(userMapper.modelToEntity(user));
            entityManager.getTransaction().commit();
            return true;
        }
        return false;
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
    public boolean updateUser(UserModel user) {
        if (user != null) {
            entityManager.getTransaction().begin();
            entityManager.merge(userMapper.modelToEntity(user));
            entityManager.getTransaction().commit();
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
            return userMapper.entityToModel(userResult);
        } catch (Exception e) {
            System.out.println("Invalid email || Password");
            return null;
        }

    }

}
