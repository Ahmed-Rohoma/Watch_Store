package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.jets.model.UserModel;
import gov.iti.jets.persistance.dao.UserImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/auth")
public class Authentication extends HttpServlet {

    private UserImp userImp;

    @Override
    public void init() throws ServletException {
        userImp = new UserImp();
    }
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println("Enterd email : " + email + " & password : " + password);

        UserModel user = userImp.getUser(email, password);
        if(user!=null){
            out.print("Valid");
            System.out.println("Right email & Password");
            if (user.getIsAdmin() == 1) {
                System.out.println("Admin");
                out.print("Admin");
                request.getRequestDispatcher("/admin/products").forward(request, response);
            } else {

                HttpSession session = request.getSession(true);
                session.setAttribute("userData", user);                
                if (request.getParameter("remember") != null) {
                    Cookie emailCookie = new Cookie("userEmail", email);
                    Cookie passwordCookie = new Cookie("password", password);
                    response.addCookie(emailCookie);
                    response.addCookie(passwordCookie);
                    System.out.println(request.getParameter("remember") + "rememberrrr");
                }
                System.out.println("user" + user.getUserId());
                out.print("User");
            }

        }

    }

}
