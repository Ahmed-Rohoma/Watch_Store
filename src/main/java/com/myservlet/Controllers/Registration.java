package com.myservlet.Controllers;

import java.io.IOException;

import com.myservlet.models.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class Registration extends HttpServlet {

    public static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("watch");
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

        User user = new User(name, email, password, job, creditLimit, age, address, interests, 0);
        entityManager.getTransaction().begin();
        entityManager.persist(user);
        entityManager.getTransaction().commit();

        if (email.equals("soadehab510@gmail.com") && password.equals("soad510")) {

            if (!request.getParameter("remember").equals(null)) {
                Cookie emailCookie = new Cookie("userEmail", email);
                Cookie passwordCookie = new Cookie("password", password);
                response.addCookie(emailCookie);
                response.addCookie(passwordCookie);
            }
            if (email.equals("isAdmin"))
                request.getRequestDispatcher("dashboard").forward(request, response);

            else
                request.getRequestDispatcher("getnews").forward(request, response);
        } else {
            request.setAttribute("error", password); // request VS. response
            // include???
        }

    }
}
