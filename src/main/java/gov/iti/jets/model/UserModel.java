package gov.iti.jets.model;

import java.io.Serializable;


public class UserModel implements Serializable {

    private Integer userId;

    private String userName;
    private String email;
    private String password;
    private String job;
    private double creditLimit;
    private String birthdate;
    private String address;
    private String interests;
    private int isAdmin;

    public UserModel(String userName, String email, String password, String job, double creditLimit, String birthdate, String address,
            String interests, int isAdmin) {
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.job = job;
        this.creditLimit = creditLimit;
        this.birthdate = birthdate;
        this.address = address;
        this.interests = interests;
        this.isAdmin = isAdmin;
    }
    public UserModel(Integer userId, String userName, String email, String password, String job, double creditLimit, String birthdate,
            String address, String interests, int isAdmin) {
        this.userId = userId;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.job = job;
        this.creditLimit = creditLimit;
        this.birthdate = birthdate;
        this.address = address;
        this.interests = interests;
        this.isAdmin = isAdmin;
    }
    public Integer getUserId() {
        return userId;
    }
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getJob() {
        return job;
    }
    public void setJob(String job) {
        this.job = job;
    }
    public double getCreditLimit() {
        return creditLimit;
    }
    public void setCreditLimit(double creditLimit) {
        this.creditLimit = creditLimit;
    }
    public String getBirthdate() {
        return birthdate;
    }
    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getInterests() {
        return interests;
    }
    public void setInterests(String interests) {
        this.interests = interests;
    }
    public int getIsAdmin() {
        return isAdmin;
    }
    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

}
