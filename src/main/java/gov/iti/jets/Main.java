package gov.iti.jets;

import java.util.List;
import java.util.Set;

import gov.iti.jets.entity.Order;
import gov.iti.jets.entity.OrderProduct;
import gov.iti.jets.entity.User;
import gov.iti.jets.persistance.connection.DBMananger;
import jakarta.persistence.EntityManager;

public class Main {

    public static void main(String[] args) {

        EntityManager entityManager = DBMananger.getInstance().createEntityManager();

        User user = entityManager.find(User.class, 55);
        List<Order> orders = user.getOrders();
        for (Order order : orders) {
            Set<OrderProduct> orderProducts = order.getOrderProducts();
            for (OrderProduct orderProduct : orderProducts) {
                System.out.println(orderProduct);
            }
        }

    }

}
