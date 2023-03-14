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

public class Authentication extends HttpServlet {

    public static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("watch");
    public static EntityManager entityManager = entityManagerFactory.createEntityManager();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("auth").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println("Enterd email : " + email+" & password : " +password);

        User user = entityManager.find(User.class, 1);
        System.out.println("User email : " + user.getEmail()+" & password : " +user.getPassword());

        if (email.equals(user.getEmail()) && password.equals(user.getPassword())) {

            System.out.println("Right email & Password");
            //session
            if (request.getParameter("remember") != null) {
                System.out.println(request.getParameter("remember") + "rememberrrr");
                Cookie emailCookie = new Cookie("userEmail", email);
                Cookie passwordCookie = new Cookie("password", password);
                response.addCookie(emailCookie);
                response.addCookie(passwordCookie);
            }
            if (user.getIsAdmin()==1) {
                System.out.println("Admin....");
                request.getRequestDispatcher("getnews").forward(request, response);
            }
            else{
                System.out.println("User....");
                request.getRequestDispatcher("getnews").forward(request, response);
            }
        } else {
            System.out.println("Invalid email || Password");
            request.setAttribute("error", password); // request VS. response
            // include???
        }

    }

}
