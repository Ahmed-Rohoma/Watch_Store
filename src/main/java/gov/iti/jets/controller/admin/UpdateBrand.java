package gov.iti.jets.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import gov.iti.jets.entity.Brand;
import gov.iti.jets.persistance.dao.CategoryDAOImp;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

@WebServlet("/updateBrand")
public class UpdateBrand extends HttpServlet {

    private CategoryDAOImp brandDAO;
    List<Brand> brands = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        brandDAO = new CategoryDAOImp();
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" update Brand ");
        System.out.println("============================");

        String newName = request.getParameter("brandName");
        Integer brandID = Integer.parseInt(request.getParameter("selectedBrand"));

        System.out.println("update Brand name to : " + newName + " || Idselected : " + brandID );
        brandDAO.updateCategory(brandID, newName);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/products.jsp");
        dispatcher.forward(request, response);

    }
}
