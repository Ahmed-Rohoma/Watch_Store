package persistance.dao;


import model.UserModel;

public interface IUser {

    public UserModel getUser(int userId);

    public UserModel getUser(String email, String password);

    public boolean addUser(UserModel user);

    public boolean emailIsExists(String email);

    public boolean updateUser(UserModel brand);
}
