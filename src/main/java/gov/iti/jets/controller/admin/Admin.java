package gov.iti.jets.controller.admin;

import java.io.IOException;

import gov.iti.jets.model.UserModel;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/Admin")
public class Admin extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" Admin Cordinator ");
        System.out.println("============================");

        // check if the user is logged in as admin
        HttpSession session = request.getSession();
        UserModel currentUser = (UserModel) session.getAttribute("userData");
        // System.out.println("Admin Name : " + currentUser.getUserName());
        // System.out.println("is Admin " + currentUser.getIsAdmin());
        if (currentUser == null || (currentUser.getIsAdmin() == 0)) {
            response.sendRedirect("login"); // redirect to login page if not admin
            return;
        }

        String path = request.getParameter("path");
        System.out.println("============================");
        System.out.println("=======" + path + "=========");
        System.out.println("============================");

        if (path.equals("logout")) {
            System.out.println(" ===== Logging OUT ==== ");
            session.removeAttribute("userData");
            response.sendRedirect("login"); // redirect to login page if not admin
            return;
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/" + path + ".jsp");
        dispatcher.forward(request, response);
    }
}
