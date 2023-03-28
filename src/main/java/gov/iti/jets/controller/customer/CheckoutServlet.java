package gov.iti.jets.controller.customer;

import gov.iti.jets.model.CartItemModel;
import gov.iti.jets.model.UserModel;
import gov.iti.jets.persistance.dao.OrderDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.stream.Collectors;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
    //map cartItems on session scope  -- id & quantity
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("checkout servlet");
        HttpSession session = request.getSession();
        Map<Integer, CartItemModel> cart = (Map<Integer, CartItemModel>) session.getAttribute("cart");
        UserModel user = (UserModel) session.getAttribute("userData");
        PrintWriter out = response.getWriter();
        if(user == null){
            out.print("cart.jsp");
            RequestDispatcher dispatcher = request.getRequestDispatcher("views/login.jsp");
            dispatcher.forward(request, response);
        }else if (cart != null){
            //check user limit then notify user if it higher than it
            //empty cart -------> index.jsp success

            Map<Integer, Integer> checkoutCart = cart.entrySet()
                    .stream()
                    .filter(entry -> entry.getValue().getQuantity() > 0)
                    .collect(Collectors.toMap(Map.Entry::getKey, entry -> entry.getValue().getitemQuantity()));
            String result;
            OrderDao checkoutOrder = new OrderDao();
            result = checkoutOrder.create(user.getUserId(), checkoutCart);
            System.out.println("Result After checkout is:" + result);
        }

    }
}
