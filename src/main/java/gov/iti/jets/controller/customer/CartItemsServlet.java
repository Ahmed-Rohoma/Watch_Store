package gov.iti.jets.controller.customer;

import gov.iti.jets.model.CartItemModel;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/user/cart")

public class CartItemsServlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String cart = (String) session.getAttribute("cartJson");
        String name = (String) session.getAttribute("Name");

        System.out.println("--------- "+cart+"  ++++++++++++++" + "  " + name);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/cart.jsp");
        dispatcher.include(request, response);
    }
}
