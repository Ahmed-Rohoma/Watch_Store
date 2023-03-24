package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import gov.iti.jets.model.UserModel;
import gov.iti.jets.persistance.dao.UserImp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/updateProfile")
public class UpdateProfile extends HttpServlet {
    
    private UserImp userImp;

    @Override
    public void init() throws ServletException {
        userImp = new UserImp();
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
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

        HttpSession session = request.getSession();
        // UserModel user = (UserModel) session.getAttribute("userData");
        
        System.out.println(name + email + password + job + creditLimit + birthday + address + interests);
        UserModel user = new UserModel(((UserModel) session.getAttribute("userData")).getUserId(),name, email, password, job, creditLimit, birthday, address, interests, 0);
        
        if(userImp.updateUser(user)){
            out.print("updated");
        }
        else{
            out.print("error");
        }

    }

}
