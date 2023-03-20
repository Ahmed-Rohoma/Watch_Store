package gov.iti.jets.model;

import java.io.Serializable;

import jakarta.persistence.*;

@Entity
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer userId;

    @Column(name = "username")
    private String userName;
    private String email;
    private String password;
    private String job;
    private double creditLimit;
    private int age;
    private String address;
    private String interests;
    private int isAdmin;

    public User(String userName, String email, String password, String job, double creditLimit, int age, String address,
            String interests, int isAdmin) {
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.job = job;
        this.creditLimit = creditLimit;
        this.age = age;
        this.address = address;
        this.interests = interests;
        this.isAdmin = isAdmin;
    }
    public User(Integer userId, String userName, String email, String password, String job, double creditLimit, int age,
            String address, String interests, int isAdmin) {
        this.userId = userId;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.job = job;
        this.creditLimit = creditLimit;
        this.age = age;
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
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
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
