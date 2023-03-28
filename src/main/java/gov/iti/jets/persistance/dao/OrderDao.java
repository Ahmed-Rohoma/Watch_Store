package gov.iti.jets.persistance.dao;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;


import gov.iti.jets.entity.*;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import gov.iti.jets.persistance.connection.DBMananger;

// 1 - creating order  

// 2 - get all orders  

public class OrderDao {

    // 1 - create order

    // inputs : user , map<pro,quantity> or map<proID,quantity>

    // step 1 : get inputs
    // step 2 : create order with the user
    // (1 - find user | 2 - create order and setCustomer(user) and setOrderDate | 3
    // - presist the order )
    // step 3 : prepare order_Items for each product in map
    // 1 - get the order order
    // 2 - create orderProductId and set oderId and productID
    // 3 - create orderProduct and set its orderProductId
    // 4 - set product , order , quantity
    // 5 - calculate total for each loop ==> total += productprice*quantity
    // step 4 : looping on order_Items to presist each one (with rollBack)
    // step 5 : update order by the total

    private EntityManager entityManager;

    Set<OrderProduct> orderItems = null;

    public OrderDao() {
        entityManager = DBMananger.getInstance().createEntityManager();
        orderItems = new HashSet<>();
    }

    public String create(Integer userId, Map<Integer, Integer> cart) {
        StringBuilder response = new StringBuilder();
        EntityTransaction transaction = entityManager.getTransaction();
        Double total = 0.0;
        Product product = null;
        Order newOrder = new Order();
        try {
            transaction.begin();

            User user = entityManager.find(User.class, userId);
            System.out.println(user);

            Set<OrderProduct> orderItems = new HashSet<>();

            newOrder.setCustomer(user);
            newOrder.setOrderDate(LocalDate.now());

            for (Map.Entry<Integer, Integer> entry : cart.entrySet()) {
                // need check for quantity ===> done 
                product = entityManager.find(Product.class, entry.getKey());
                if (product.getQuantity() < entry.getValue()) {
                    response.append(product.getProductId() + "has only " + product.getQuantity() + "\n");
                    continue;
                }

                System.out.println("Before => ID : " + product.getProductId() + "quan : " + product.getQuantity());
                product.setQuantity(product.getQuantity() - entry.getValue());
                System.out.println("After  => ID : " + product.getProductId() + "quan : " + product.getQuantity());
                entityManager.merge(product);
                OrderProduct orderItem = new OrderProduct();
                orderItem.setProduct(product); // Set the product for the order item
                orderItem.setOrder(newOrder);
                orderItem.setQuantity(entry.getValue()); // Set the quantity for the order item
                orderItem.setPrice(new BigDecimal(product.getPrice().doubleValue() *
                        entry.getValue()));
                orderItems.add(orderItem); // Add the order item to the list
                total += product.getPrice().doubleValue() * entry.getValue();
            }

            System.out.println("===================");
            System.out.println("total : " + total);
            System.out.println("===================");

            newOrder.setOrderProducts(orderItems);
            newOrder.setOrderTotal(new BigDecimal(total));

            System.out.println("user Balance : " + user.getCreditLimit());
            if (user.getCreditLimit() < total ) {
                System.out.println("please update your creditLimit");
                transaction.rollback();
                return "please update your creditLimit";
            }

            System.out.println("num of prod in order : " + orderItems.size());
            if (orderItems.size() == 0 ) {
                transaction.rollback();
                return "there is no product";
            }

            //

            System.out.println("removing from user balance ");
            user.setCreditLimit(user.getCreditLimit() - total);
            System.out.println("blance after purchase : " + user.getCreditLimit());
            entityManager.merge(user);
            System.out.println(" adding order to data base ");
            entityManager.persist(newOrder);
            // check user
            // okey

            transaction.commit();

            // updateProducts(cart);

        } catch (Exception e) {
            transaction.rollback();
            throw e;
        } finally {
            // entityManager.close();
        }

        System.out.println(newOrder.getId() + ":" + total);
        return response.append(newOrder.getId() + ":" + total).toString();

    }

    // private void updateProducts(Map<Integer, Integer> cart) {

    // entityManager

    // for (Map.Entry<Integer, Integer> entry : cart.entrySet()) {
    // product = entityManager.find(Product.class, entry.getKey());
    // OrderProduct orderItem = new OrderProduct();
    // orderItem.setProduct(product); // Set the product for the order item
    // orderItem.setOrder(newOrder);
    // orderItem.setQuantity(entry.getValue()); // Set the quantity for the order
    // item
    // orderItem.setPrice(new BigDecimal(product.getPrice().doubleValue() *
    // entry.getValue()));
    // orderItems.add(orderItem); // Add the order item to the list
    // total += product.getPrice().doubleValue() * entry.getValue();
    // }
    // }
}