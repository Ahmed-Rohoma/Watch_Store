package gov.iti.jets.controller.customer;

import java.io.IOException;

import com.google.gson.Gson;

import gov.iti.jets.model.ProductModel;
import gov.iti.jets.persistance.dao.IProductImp;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/product-details")
public class ProductDetailsServlet extends HttpServlet {
    gov.iti.jets.service.ProductService productService = new gov.iti.jets.service.ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer productId = Integer.parseInt(request.getParameter("productId"));
        ProductModel product =  productService.getProductByID(productId);
        System.out.println(product.getProductId() + " -- " + product.getProductName());

        
        // Convert the product to a JSON string
        String jsonProduct = new Gson().toJson(product);


        // set the model as an attribute on the request object
        request.setAttribute("ProductModel", jsonProduct);
        
        // forward the request to the JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/product-details.jsp");
        dispatcher.forward(request, response);
    }
    
}
