package gov.iti.jets.controller.customer;

import java.io.IOException;


import gov.iti.jets.model.User;
import gov.iti.jets.persistance.connection.DBMananger;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.persistence.*;

@WebServlet("/register")
public class Registration extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        System.out.println("from Servlet before entity manager");
        System.out.println("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");

        EntityManagerFactory entityManagerFactory = DBMananger.getInstance(); 

        System.out.println("###########################################################");

        EntityManager eManager = entityManagerFactory.createEntityManager();

        System.out.println("***********************************************************");
        System.out.println("from Servlet after entity manager");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String job = request.getParameter("job");
        int age = Integer.parseInt(request.getParameter("birthday"));
        String address = request.getParameter("address");
        String interests = request.getParameter("interests");
        double creditLimit = Double.parseDouble(request.getParameter("creditlimit"));
        
        System.out.println(name + email + password + job + creditLimit+ age+ address+ interests);
        User user = new User(name, email, password, job, creditLimit, age, address, interests, 0);
        eManager.getTransaction().begin();
        eManager.persist(user);
        eManager.getTransaction().commit();
        request.getRequestDispatcher("getnews").forward(request, response);

    }
}
