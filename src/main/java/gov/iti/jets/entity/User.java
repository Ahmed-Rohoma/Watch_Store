
package gov.iti.jets.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "user")
public class User implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Integer userId;
    private String userName;
    private String email;
    private String password;
    private String job;
    private Double creditLimit;
    private Date birthdate;
    private String address;
    private String interests;
    private Integer isAdmin;
     @OneToMany(cascade = CascadeType.ALL, mappedBy = "customer")
     private List<Order> orders = new ArrayList<>();

    public User(Integer userId, String userName, String email, String password, String job, Double creditLimit,
                Date birthdate, String address, String interests, Integer isAdmin) {
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

    public User(String userName, String email, String password, String job, Double creditLimit, Date birthdate,
            String address, String interests, Integer isAdmin) {
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

    public User() {
    }

    public User(Integer userId) {
        this.userId = userId;
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

    public Double getCreditLimit() {
        return creditLimit;
    }

    public void setCreditLimit(Double creditLimit) {
        this.creditLimit = creditLimit;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
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

    public Integer getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(Integer isAdmin) {
        this.isAdmin = isAdmin;
    }

     public List<Order> getOrders() {
     return orders;
     }

     public void setOrders(List<Order> orderList) {
     this.orders = orderList;
     }

    @Override
    public String toString() {
        return "[ userId=" + userId + " ]";
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }
}
