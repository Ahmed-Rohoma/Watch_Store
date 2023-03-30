package gov.iti.jets.controller.admin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Map;

import gov.iti.jets.persistance.dao.CategoryDAOImp;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

@MultipartConfig
@WebServlet("/addBrand")
public class AddBrand extends HttpServlet {

    private CategoryDAOImp brandDAO;
    String savePath;

    @Override
    public void init() throws ServletException {
        brandDAO = new CategoryDAOImp();

        savePath = getServletContext().getRealPath("/brandsImage/");
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" add Brand ");
        System.out.println("============================");

        Map<String, String[]> parameters = request.getParameterMap();
        System.out.println("number of par :  " + parameters.size());
        for (String name : parameters.keySet()) {
            String[] values = parameters.get(name);
            System.out.println(name + " = " + Arrays.toString(values));
        }

        String name = request.getParameter("newBrandName");
        System.out.println("Brand name to add : " + name);

        Part filePart = request.getPart("image");

        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        String fileNameWithoutExtension = fileName.substring(0, fileName.lastIndexOf('.'));
        String fileExtension = fileName.substring(fileName.lastIndexOf("."));

        System.out.println("| filename : " + fileNameWithoutExtension + "| fileExtension : " + fileExtension);

        String fName = name + fileExtension;

        System.out.println("path ======> " + savePath);
        System.out.println("fNAme ======> " + fName);
        String filePath = savePath + fName;

        filePart.write(filePath);

        brandDAO.addCategory(name);

        request.setAttribute("successMessage", "New Brand "+ name +" added successfully");

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/products.jsp");
        dispatcher.forward(request, response);

    }

}
