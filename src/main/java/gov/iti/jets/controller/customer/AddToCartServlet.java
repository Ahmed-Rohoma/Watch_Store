package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;

import gov.iti.jets.model.CartDto;
import gov.iti.jets.model.Item;
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
            // ArrayList<Cart> cartList = new ArrayList<>();
            // int id =Integer.parseInt(request.getParameter("productId"));
            // System.out.println("productId = " + id);
            // Cart cm = new Cart();
            // cm.setProductId(id);
            // cm.setQuantity(1);

            // Retrieve the cart from the session, or create a new one if it doesn't exist
            HttpSession session = request.getSession();
            CartDto cart = (CartDto) session.getAttribute("cart");
            if (cart == null) {
                cart = new CartDto();
                session.setAttribute("cart", cart);
            }

            // Add or remove items from the cart as needed
            String action = request.getParameter("action");
            if (action != null && action.equals("add")) {
                String productId = request.getParameter("productId");
                // int quantity = Integer.parseInt(request.getParameter("quantity"));
                int quantity = 1;
                Item item = new Item(null,1);
                //get product by id from database
                cart.addItem(item);

            }
            // else if (action != null && action.equals("remove")) {
            //     String productId = request.getParameter("productId");
            //     cart.removeItem(productId);
            // }

            // Convert the cart to a JSON string and store it in local storage
            String cartJSON = cart.toJSON();
            request.setAttribute("cartJSON", cartJSON);
            //print all add items in cart
            System.out.println("*******"+cart.toJSON()+"********");
            // Forward to the JSP page to display the cart
            // RequestDispatcher dispatcher = request.getRequestDispatcher("views/index.jsp");
            // dispatcher.forward(request, response);
            response.sendRedirect("views/index.jsp");



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
