package gov.iti.jets.controller.customer;

import gov.iti.jets.model.CartItemModel;
import gov.iti.jets.model.UserModel;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Map;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
    //map cartItems on session scope  -- id & quantity
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("checkout servlet");
        HttpSession session = request.getSession();
        Map<Integer, CartItemModel> cart = (Map<Integer, CartItemModel>) session.getAttribute("cart");
        UserModel user = (UserModel) session.getAttribute("userData");
        if(user == null){
            RequestDispatcher dispatcher = request.getRequestDispatcher("views/login.jsp");
            dispatcher.forward(request, response);
        }else if (cart != null){
            //check user limit then notify user if it higher than it
        }

    }
}
