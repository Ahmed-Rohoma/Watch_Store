package controller.admin;

import java.io.IOException;

import persistance.dao.ProductDAOImp;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/deleteProduct")
public class DeleteProduct extends HttpServlet {

    private ProductDAOImp productDAO;

    public DeleteProduct() {
        productDAO = new ProductDAOImp();
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" delete Product ");
        System.out.println("============================");

        Integer productID = Integer.parseInt(request.getParameter("productId"));
        System.out.println("Product to remove : " + productID);

        productDAO.deleteProductById(productID);

    }

}
