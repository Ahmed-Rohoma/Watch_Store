package gov.iti.jets.mapper;

import gov.iti.jets.model.UserModel;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import gov.iti.jets.entity.User;

public class UserMapper {

    public User modelToEntity(UserModel userModel) {

        Date birthdate = null;
        try {
            birthdate = new SimpleDateFormat("yyyy-MM-dd").parse(userModel.getBirthdate());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return new User(userModel.getUserName(), userModel.getEmail(), userModel.getPassword(), userModel.getJob(),
                userModel.getCreditLimit(), birthdate, userModel.getAddress(), userModel.getInterests(),
                userModel.getIsAdmin());
    }

    public UserModel entityToModel(User user) {

        String[] date = user.getBirthdate().toString().split(" ");
        return new UserModel(user.getUserId(), user.getUserName(), user.getEmail(), user.getPassword(), user.getJob(),
                user.getCreditLimit(), date[0], user.getAddress(), user.getInterests(),
                user.getIsAdmin());
    }
}
