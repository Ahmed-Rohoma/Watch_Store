package gov.iti.jets.persistance.dao;


import gov.iti.jets.model.UserModel;

import java.util.List;

public interface IUser {

    public UserModel getUser(int userId);
    public List<UserModel> getAllUsers();

    public UserModel getUser(String email, String password);

    public UserModel addUser(UserModel user);

    public boolean emailIsExists(String email);

    public boolean updateUser(UserModel userModel);
}
