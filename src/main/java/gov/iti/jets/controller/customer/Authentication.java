package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.jets.model.UserModel;
import gov.iti.jets.persistance.dao.IUser;
import gov.iti.jets.persistance.dao.UserImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/auth")
public class Authentication extends HttpServlet {

    private IUser iUser;

    @Override
    public void init() throws ServletException {
        iUser = new UserImp();
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println("Enterd email : " + email + " & password : " + password);

        UserModel user = iUser.getUser(email, password);
        if (user != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute("userData", user);
            out.print("V");
            System.out.println("Right email & Password");
            if (user.getIsAdmin() == 1) {
                System.out.println("Admin");
                out.print("A");
            } else {

                if (request.getParameter("remember") != null) {
                    Cookie emailCookie = new Cookie("userEmail", email);
                    Cookie passwordCookie = new Cookie("password", password);
                    response.addCookie(emailCookie);
                    response.addCookie(passwordCookie);
                    System.out.println(request.getParameter("remember") + "rememberrrr");

                }
                System.out.println("user" + user.getUserId());
                out.print("U");
                if (request.getParameter("from").equals("checkout")) {
                    out.print("C");
                }
            }
        }

    }

}
