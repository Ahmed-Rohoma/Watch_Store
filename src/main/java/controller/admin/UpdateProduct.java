package controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import com.google.gson.JsonObject;

// import com.google.gson.Gson;

import persistance.dao.ProductDAOImp;
import entity.Product;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@MultipartConfig
@WebServlet("/updateProduct")
public class UpdateProduct extends HttpServlet {

    private ProductDAOImp productDAO;

    String savePath = "";

    public UpdateProduct() {
        productDAO = new ProductDAOImp();
    }

    @Override
    public void init() throws ServletException {
        savePath = (String) getServletContext().getAttribute("savePath");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" update Product  do GET ");
        System.out.println("============================");

        Integer productID = Integer.parseInt(request.getParameter("productId"));
        System.out.println("Product to update : " + productID);

        Product product = productDAO.getProductByID(productID);

        if (product == null) {
            System.out.println("null");
            // tell user that this product is not removed
            // forward to products.jsp
            return;
        }

        // provide the product in request

        // Gson gson = new Gson();
        // String msg = gson.toJson(product);
        // System.out.println(" " + msg);

        PrintWriter out = response.getWriter();
        // out.write(msg);
        // out.flush();
        // out.close();

        JsonObject json = convert(product);

        String msg = json.toString();

        System.out.println(" => " + msg);

        out.write(msg);
        out.flush();
        out.close();

        // request.setAttribute("product", convert(product));
        // System.out.println(convert(product));
        // System.out.println("forward ......");

        // request.getRequestDispatcher("edit-product.html").forward(request, response);

        // System.out.println("after forward ......");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" update Product do Post  ");
        System.out.println("============================");

        Enumeration<String> attributeNames = request.getParameterNames();
        System.out.println(attributeNames.hasMoreElements());
        while (attributeNames.hasMoreElements()) {
            String attributeName = attributeNames.nextElement();
            Object attributeValue = request.getAttribute(attributeName);
            System.out.println(attributeName + " = " + attributeValue);
        }

        String name = request.getParameter("name");
        System.out.println("name " + name);
        String description = request.getParameter("description");
        Double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        System.out.println("Adding product : " + name + "\nd: " + description + "\n path = " + savePath + " | " + name);

        // Part filePart = request.getPart("fileInput");
        // Part filePart = request.getPart("image");

        // String fileName =
        // Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        // System.out.println("path ======> " + savePath);
        // System.out.println("fNAme ======> " + fileName);
        // String filePath = savePath + fileName;

        // filePart.write(filePath);

        // Product product = new Product(name, price, quantity, description, 2,
        // "filePath");

        // productDAO.updateProduct(product);

        // response.sendRedirect("products.html");

    }

    private JsonObject convert(Product p) {

        JsonObject data = new JsonObject();
        data.addProperty("productId", p.getProductId());
        data.addProperty("productName", p.getProductName());
        data.addProperty("price", p.getPrice());
        data.addProperty("quantity", p.getQuantity());
        data.addProperty("description", p.getDescription());
        data.addProperty("brandId", p.getBrandId());
        data.addProperty("imagePath", p.getImagePath());

        return data;
    }

}
