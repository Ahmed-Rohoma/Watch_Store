package gov.iti.jets.mapper;

import gov.iti.jets.model.UserModel;
import gov.iti.jets.entity.User;

public class UserMapper {

    public User modelToEntity(UserModel userModel) {

        return new User(userModel.getUserName(), userModel.getEmail(), userModel.getPassword(), userModel.getJob(),
                userModel.getCreditLimit(), userModel.getBirthdate(), userModel.getAddress(), userModel.getInterests(),
                userModel.getIsAdmin());
    }

    public UserModel entityToModel(User user) {
        return new UserModel(user.getUserId(), user.getUserName(), user.getEmail(), user.getPassword(), user.getJob(),
                user.getCreditLimit(), user.getBirthdate(), user.getAddress(), user.getInterests(),
                user.getIsAdmin());
    }
}
