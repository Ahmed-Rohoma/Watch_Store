package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.DoubleStream;

import com.google.gson.Gson;
import gov.iti.jets.model.CartItemModel;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;Charset=UTF-8");
        try(PrintWriter out = response.getWriter()){

            // Retrieve the cart from the session, or create a new one if it doesn't exist
            HttpSession session = request.getSession();
            Map<Integer, CartItemModel> cart = (Map<Integer, CartItemModel>) session.getAttribute("cart");


            Boolean exist = false;

            // Add or remove items from the cart as needed
            String action = request.getParameter("action");
            Integer productId =Integer.parseInt(request.getParameter("productId"));
            if (action != null && action.equals("add")) {
                Integer quantity = Integer.parseInt(request.getParameter("quantity"));
                if (cart == null) {
                    cart = new HashMap<>();
                    cart.put(productId,new CartItemModel(productId,quantity));
                }
                cart.put(productId,new CartItemModel(productId,quantity));
//                else {
//                    for (CartItemModel p : cart) {
//                        System.out.println(p.getProductId()+"  ************** ");
//                        if (p.getProductId() == productId) {
//                            exist = true;
//                            System.out.println("product exist");
//                            p.setitemQuantity(quantity);
//                        }
//                    }
//                    if(!exist){
//                        cart.add(new CartItemModel(productId,quantity));
//                        System.out.println("product added");
//                    }
//                }

            }else if (action != null && action.equals("remove")) {
                 cart.remove(productId);
             }
            session.setAttribute("cart", cart);
            session.setAttribute("cartTotal", getTotalShipping(cart));


            // Convert the cart to a JSON string and store it in local storage
            String cartJson = new Gson().toJson(cart);
            // session.setAttribute("cartJson", cartJson);
            // String name = "Dina Mishahed";
            // session.setAttribute("Name", name);

            //print all add items in cart
            System.out.println("\n*******"+cartJson+"********\n");

            // System.out.println("*******"+cart.toString()+"********");

            // //session id
            // System.out.printf("sessionId : " +session.getId());
        }

    }

    private double getTotalShipping(Map<Integer, CartItemModel> cart){
        double totalPrice = cart.entrySet().stream()
                                .mapToDouble(entry -> entry.getValue().getitemQuantity() * entry.getValue().getPrice().doubleValue())
                                .sum();
        System.out.println("totalPrice  "+totalPrice);
        return totalPrice;
    }
}
