package gov.iti.jets.persistance.dao;


import gov.iti.jets.model.UserModel;

public interface IUser {

    public UserModel getUser(int userId);

    public UserModel getUser(String email, String password);

    public UserModel addUser(UserModel user);

    public boolean emailIsExists(String email);

    public boolean updateUser(UserModel userModel);
}
