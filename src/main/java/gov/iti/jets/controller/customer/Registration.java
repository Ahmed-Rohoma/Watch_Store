package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.jets.model.UserModel;
import gov.iti.jets.persistance.dao.IUser;
import gov.iti.jets.persistance.dao.UserImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class Registration extends HttpServlet {

    private IUser iUser;

    @Override
    public void init() throws ServletException {
        iUser = new UserImp();
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String job = request.getParameter("job");
        String birthday = request.getParameter("birthday");
        String address = request.getParameter("address");
        String interests = request.getParameter("interests");
        int creditLimit = Integer.parseInt(request.getParameter("creditlimit"));

        System.out.println(name + email + password + job + creditLimit + birthday + address + interests);
        UserModel userModel = new UserModel(name, email, password, job, creditLimit, birthday, address, interests, 0);
        UserModel registeredUser = iUser.addUser(userModel);
        if (registeredUser != null) {
            System.out.println(registeredUser.getUserId() + "  id");
            HttpSession session = request.getSession(true);
            session.setAttribute("userData", registeredUser);
            System.out.println("added");
        } else
            System.out.println("error");

        if (request.getParameter("from").equals("checkout")) {
            out.print("C");
        }

        // request.getRequestDispatcher("add-to-cart").forward(request, response);

    }
}