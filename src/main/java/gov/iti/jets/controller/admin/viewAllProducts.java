package gov.iti.jets.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.*;

import gov.iti.jets.persistance.dao.CategoryDAOImp;
import gov.iti.jets.persistance.dao.ProductDAOImp;
import gov.iti.jets.entity.*;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/adminProducts")
public class viewAllProducts extends HttpServlet {

    private ProductDAOImp productDAO;
    private CategoryDAOImp brandDAO;

    public viewAllProducts() {
        productDAO = new ProductDAOImp();
        brandDAO = new CategoryDAOImp();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" View Product ");
        System.out.println("============================");

        response.setContentType("text/event-stream");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        List<Product> pro = productDAO.getAllProducts();
        List<Brand> brands = brandDAO.getAllCategories();

        for (Product p : pro) {
            System.out.println(p);
        }

        JsonObject json = new JsonObject();
        JsonArray proJson = new Gson().toJsonTree(pro).getAsJsonArray();
        JsonArray brandsJson = new Gson().toJsonTree(brands).getAsJsonArray();

        json.add("products", proJson);
        json.add("brands", brandsJson);

        String msg = json.toString();

        System.out.println(" => " + msg);

        out.write(msg);
        out.flush();
        out.close();
    }

}
