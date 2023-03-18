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
                    session.setAttribute("cart", cart);
                    cart.add(new CartItemModel(productId,quantity));
                }else {
                    for (CartItemModel p : cart) {
                        System.out.println(p.getProductId()+"  ************** ");
                        if (p.getProductId() == productId) {
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
            request.setAttribute("cartJson", cartJson);

            //print all add items in cart
            System.out.println("*******"+cartJson+"********");




            // ArrayList<Cart> cart_list  = (ArrayList<Cart>) session.getAttribute("views/index.jsp");
            // if(cart_list == null){
            //     cartList.add(cm);
            //     session.setAttribute("cart-list", cartList);
            //     response.sendRedirect("views/index.jsp");
            //     // out.println("session created and added the list ");
            // }else{
            //     cartList = cart_list;
            //     Boolean exist = false;

            //     for(Cart c:cart_list){
            //         System.out.println(c.getProductId()+"  ************** ");
            //         if(c.getProductId() == id){
            //             exist = true;
            //             // out.println("product exist");
            //         }
            //     }
            //     if(!exist){
            //         cartList.add(cm);
            //         response.sendRedirect("views/index.jsp");
            //     }
            //     out.println("<br>Cart list Aready exist ");
            // }
        }

    }
}
