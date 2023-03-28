package gov.iti.jets.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.*;

import gov.iti.jets.persistance.dao.*;
import gov.iti.jets.entity.*;
import gov.iti.jets.model.UserModel;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/getAllCustomers")
public class Customers extends HttpServlet {

    private UserImp userDao;

    @Override
    public void init(ServletConfig config) throws ServletException {
        userDao = new UserImp();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" Get All Customers ");
        System.out.println("============================");

        response.setContentType("text/event-stream");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        List<UserModel> customers = userDao.getAllUsers();
        System.out.println("After ====== Get All users =======");
        Gson gson = new Gson();
        String msg = gson.toJson(customers);

        System.out.println(" => " + msg);

        out.write(msg);
        out.flush();
        out.close();
    }

}
