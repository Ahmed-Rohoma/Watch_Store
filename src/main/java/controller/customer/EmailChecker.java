package controller.customer;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import java.io.PrintWriter;

import persistance.dao.UserImp;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

@WebServlet("/emailchecker")
public class EmailChecker extends HttpServlet {

    private UserImp userImp;

    @Override
    public void init() throws ServletException {
        userImp = new UserImp();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        System.out.println("checkkkkkkk");

        if (userImp.emailIsExists(request.getParameter("email"))) {
            System.out.println("In valid");
            out.print("Invalid Email");
        } else {
            System.out.println("valid");
            out.print("Valid Email");
        }

    }

}
