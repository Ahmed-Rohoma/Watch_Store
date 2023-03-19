package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

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
            List<CartItemModel> cart = (List<CartItemModel>) session.getAttribute("cart");


            Boolean exist = false;

            // Add or remove items from the cart as needed
            String action = request.getParameter("action");
            if (action != null && action.equals("add")) {
                Integer productId =Integer.parseInt(request.getParameter("productId"));
                Integer quantity = Integer.parseInt(request.getParameter("quantity"));
                if (cart == null) {
                    cart = new ArrayList<>();
                    cart.add(new CartItemModel(productId,quantity));
                }else {
                    for (CartItemModel p : cart) {
                        System.out.println(p.productModel.getProductId()+"  ************** ");
                        if (p.productModel.getProductId() == productId) {
                            exist = true;
                            System.out.println("product exist");
                            p.setQuantity(quantity);
                        }
                    }
                    if(!exist){
                        cart.add(new CartItemModel(productId,quantity));
                        System.out.println("product added");
                    }
                }

            }else if (action != null && action.equals("remove")) {
                 String productId = request.getParameter("productId");
//                 cart.removeItem(productId);
             }

            // Convert the cart to a JSON string and store it in local storage
            String cartJson = new Gson().toJson(cart);
            session.setAttribute("cart", cart);
            session.setAttribute("cartJson", cartJson);
            String name = "Dina Mishahed";
            session.setAttribute("Name", name);

            //print all add items in cart
            System.out.println("*******"+cartJson+"********");

            System.out.println("*******"+cart.toString()+"********");

            //session id
            System.out.printf("sessionId : " +session.getId());
        }

    }
}
