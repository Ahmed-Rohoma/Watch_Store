package gov.iti.jets.controller.customer;


import gov.iti.jets.model.UserModel;
import gov.iti.jets.persistance.dao.IUser;
import gov.iti.jets.persistance.dao.UserImp;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/logout")
public class Logout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(); // Assuming that you have already created the session object
        session.removeAttribute("userData");
        request.getRequestDispatcher("/views/index.jsp").forward(request, response);
        System.out.println("logoutttttttttttttttttttttttttt");
    }

}

