package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;
import gov.iti.jets.model.UserModel;
import gov.iti.jets.persistance.dao.IUser;
import gov.iti.jets.persistance.dao.UserImp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/updateProfile")
public class UpdateProfile extends HttpServlet {
    
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
        Double creditLimit = Double.parseDouble(request.getParameter("creditlimit"));

        HttpSession session = request.getSession();
        // UserModel user = (UserModel) session.getAttribute("userData");
        
        System.out.println(name + email + password + job + creditLimit + birthday + address + interests);
        UserModel user = new UserModel(((UserModel) session.getAttribute("userData")).getUserId(),name, email, password, job, creditLimit, birthday, address, interests, 0);
        
        if(iUser.updateUser(user)){
            out.print("updated");
        }
        else{
            out.print("error");
        }

    }

}
