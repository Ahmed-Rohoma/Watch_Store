package gov.iti.jets.controller.customer;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.jets.entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import jakarta.servlet.*;
import jakarta.servlet.http.*;


@WebServlet("/emailchecker")
public class EmailChecker extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();


        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("myPersistenceUnit");
        
        System.out.println("###########################################################");

        EntityManager entityManager = entityManagerFactory.createEntityManager();


        String email = request.getParameter("email");
       
        System.out.println("Enterd email : " + email );


        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<User> userCriteriaQuery = criteriaBuilder.createQuery(User.class);
        Root<User> userRoot = userCriteriaQuery.from(User.class);
        userCriteriaQuery.select(userRoot)
                .where(criteriaBuilder.equal(userRoot.get("email"), email));

        System.out.println("Before Try..");

        User userResult = null;
        try {
            userResult = entityManager.createQuery(userCriteriaQuery).getSingleResult();
            System.out.println("After Try..");

            out.println("Valid Email");

        } catch (Exception e) {
            System.out.println("Invalid Email");            
            out.println("Invalid Email");
        }

    }
}
