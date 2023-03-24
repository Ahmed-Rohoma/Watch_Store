package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import gov.iti.jets.model.UserModel;
import gov.iti.jets.persistance.dao.UserImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class Registration extends HttpServlet {

    private UserImp userImp;

    @Override
    public void init() throws ServletException {
        userImp = new UserImp();
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String job = request.getParameter("job");
        Date birthday = new Date();
        try {
            birthday = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("birthday"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String address = request.getParameter("address");
        String interests = request.getParameter("interests");
        int creditLimit = Integer.parseInt(request.getParameter("creditlimit"));

        System.out.println(name + email + password + job + creditLimit + birthday + address + interests);
        UserModel user = new UserModel(name, email, password, job, creditLimit, birthday, address, interests, 0);
        if (userImp.addUser(user)){
            System.out.println(user.getUserId()+"  id");
            HttpSession session = request.getSession(true);
            session.setAttribute("userData", user);
            System.out.println("added");
        }
        else
            System.out.println("error");

        // request.getRequestDispatcher("add-to-cart").forward(request, response);

    }
}
