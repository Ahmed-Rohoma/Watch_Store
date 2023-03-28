package gov.iti.jets.controller.admin;

import java.io.IOException;

import gov.iti.jets.persistance.dao.CategoryDAOImp;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/deleteBrand")
public class DeleteBrand extends HttpServlet {

    private CategoryDAOImp brandDAO;

    @Override
    public void init() throws ServletException {
        brandDAO = new CategoryDAOImp();
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" delete Brand ");
        System.out.println("============================");

        Integer brandId = Integer.parseInt(request.getParameter("brandId"));
        System.out.println("Brand to remove : " + brandId);
        brandDAO.deleteCategoryById(brandId);
    }

}
