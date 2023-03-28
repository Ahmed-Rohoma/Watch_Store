package gov.iti.jets.controller.customer;

import gov.iti.jets.persistance.dao.IUser;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.jets.persistance.dao.UserImp;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

@WebServlet("/emailchecker")
public class EmailChecker extends HttpServlet {

    private IUser iUser;

    @Override
    public void init() throws ServletException {
        iUser = new UserImp();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        System.out.println("checkkkkkkk");

        if (iUser.emailIsExists(request.getParameter("email"))) {
            System.out.println("In valid");
            out.print("Invalid Email");
        } else {
            System.out.println("valid");
            out.print("Valid Email");
        }

    }

}
