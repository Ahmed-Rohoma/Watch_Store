package gov.iti.jets.controller.admin;

import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import gov.iti.jets.entity.Brand;
import gov.iti.jets.persistance.dao.CategoryDAOImp;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

@MultipartConfig
@WebServlet("/updateBrand")
public class UpdateBrand extends HttpServlet {

    private CategoryDAOImp brandDAO;
    List<Brand> brands = new ArrayList<>();
    String savePath;

    @Override
    public void init() throws ServletException {
        brandDAO = new CategoryDAOImp();
        savePath = getServletContext().getRealPath("/brandsImage/");

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" update Brand ");
        System.out.println("============================");

        String newName = request.getParameter("brandName");
        Integer brandID = Integer.parseInt(request.getParameter("selectedBrand"));
        
        // Part filePart = request.getPart("image");

        // if (filePart.getSize() != 0) { // if new image is sent
        //     String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        //     String fileNameWithoutExtension = fileName.substring(0, fileName.lastIndexOf('.'));
        //     String fileExtension = fileName.substring(fileName.lastIndexOf("."));

        //     System.out.println("| filename : " + fileNameWithoutExtension + "| fileExtension : " + fileExtension);
        //     String fName = newName + fileExtension;

        //     System.out.println("path ======> " + savePath);
        //     System.out.println("fNAme ======> " + fName);
        //     String filePath = savePath + fName;

        //     filePart.write(filePath);
        // } else
        //     System.out.println(" image doesn't change ");


        System.out.println("update Brand name to : " + newName + " || Idselected : " + brandID );
        brandDAO.updateCategory(brandID, newName);

        request.setAttribute("successMessage", "Brand Name updated to "+ newName +" successfully");
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/products.jsp");
        dispatcher.forward(request, response);

    }
}
