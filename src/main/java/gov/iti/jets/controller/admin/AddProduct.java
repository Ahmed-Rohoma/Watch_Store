package gov.iti.jets.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

import gov.iti.jets.entity.Brand;
import gov.iti.jets.entity.Product;
import gov.iti.jets.persistance.dao.CategoryDAOImp;

import gov.iti.jets.persistance.dao.ProductDAOImp;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

@MultipartConfig
@WebServlet("/addProduct")
public class AddProduct extends HttpServlet {

    private ProductDAOImp productDAO;
    private CategoryDAOImp brandDAO;
    String savePath;
    List<Brand> brands = new ArrayList<>();

    public AddProduct() {
        productDAO = new ProductDAOImp();
        brandDAO = new CategoryDAOImp();
        // savePath = (String) getServletContext().getAttribute("savePath");
    }

    @Override
    public void init() throws ServletException {

        savePath = getServletContext().getRealPath("") + "productImages" + File.separator;
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }
        System.out.println("========= Creating image file ===========");
        getServletContext().setAttribute("savePath", savePath);

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        brands = brandDAO.getAllCategories();
        Gson gson = new Gson();
        // convert the 'brands' list to a JSON string
        String msg = gson.toJson(brands);

        System.out.println(" => " + msg);

        out.write(msg);
        out.flush();
        out.close();
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" add Product ");
        System.out.println("============================");

        String name = request.getParameter("name");
        String description = request.getParameter("description");
        BigDecimal price = new BigDecimal((String) (request.getParameter("price")));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Integer brandID = Integer.parseInt(request.getParameter("selectedBrand"));
        Part filePart = request.getPart("image");

        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        System.out.println("product | " + name + " | " + description + " | " + price + " | " + quantity);

        System.out.println("path ======> " + savePath);
        System.out.println("fNAme ======> " + fileName);
        String filePath = savePath + fileName;

        filePart.write(filePath);

        System.out.println(filePath);

        System.out.println(
                "Adding product : " + name + "\nd: " + description + "\n brand = " + brandID);

        Product product = new Product(name, price, quantity, description, brandID,
                filePath);

        productDAO.addProduct(product);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/products.jsp");
        dispatcher.forward(request, response);

    }

}
