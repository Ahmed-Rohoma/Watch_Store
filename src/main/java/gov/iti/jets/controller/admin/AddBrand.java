package gov.iti.jets.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;

import gov.iti.jets.entity.Brand;
import gov.iti.jets.entity.Product;
import gov.iti.jets.persistance.dao.CategoryDAOImp;

import gov.iti.jets.persistance.dao.ProductDAOImp;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

@WebServlet("/addBrand")
public class AddBrand extends HttpServlet {

    private CategoryDAOImp brandDAO;

    @Override
    public void init() throws ServletException {
        brandDAO = new CategoryDAOImp();
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" add Brand ");
        System.out.println("============================");

        Map<String, String[]> parameters = request.getParameterMap();
        System.out.println("number of par :  "+parameters.size());
        for (String name : parameters.keySet()) {
            String[] values = parameters.get(name);
            System.out.println(name + " = " + Arrays.toString(values));
        }

        String name = request.getParameter("newBrandName");
        System.out.println("Brand name to add : " + name);
        brandDAO.addCategory(name);
        response.sendRedirect("products.jsp");

    }

}