package gov.iti.jets.controller.customer;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;


@WebServlet("/register")
public class Registration extends HttpServlet {

    public static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("myPersistenceUnit");
    public static EntityManager entityManager = entityManagerFactory.createEntityManager();

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String job = request.getParameter("job");
        double creditLimit = Double.parseDouble(request.getParameter("creditlimit"));
        int age = Integer.parseInt(request.getParameter("birthday"));
        String address = request.getParameter("address");
        String interests = request.getParameter("interests");

//        User user = new User(name, email, password, job, creditLimit, age, address, interests, 0);
//        entityManager.getTransaction().begin();
//        entityManager.persist(user);
        entityManager.getTransaction().commit();
        request.getRequestDispatcher("getnews").forward(request, response);


    }
}
