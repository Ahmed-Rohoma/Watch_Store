package gov.iti.jets.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.nio.file.Paths;

import com.google.gson.JsonObject;

// import com.google.gson.Gson;

import gov.iti.jets.persistance.dao.ProductDAOImp;
import gov.iti.jets.entity.Product;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@MultipartConfig
@WebServlet("/updateProduct")
public class UpdateProduct extends HttpServlet {

    private ProductDAOImp productDAO;
    private int productID;
    String savePath = "";
    Product product = null;

    public UpdateProduct() {
        productDAO = new ProductDAOImp();
    }

    @Override
    public void init() throws ServletException {
        savePath = (String) getServletContext().getAttribute("savePath");
        System.out.println("saving Path : " + savePath);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" update Product  do GET ");
        System.out.println("============================");

        productID = Integer.parseInt(request.getParameter("productId"));
        System.out.println("Product to update : " + productID);

        product = productDAO.getProductByID(productID);

        if (product == null) {
            System.out.println("Product is Deleted ..");
            // tell user that this product is not removed
            // forward to products.jsp
            return;
        }

        PrintWriter out = response.getWriter();

        JsonObject json = convert(product);

        String msg = json.toString();

        System.out.println(" => " + msg);

        out.write(msg);
        out.flush();
        out.close();

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" update Product do Post  ");
        System.out.println("============================");

        String name = request.getParameter("name");
        String description = request.getParameter("description");
        Integer brandID = Integer.parseInt(request.getParameter("selectedBrand"));
        BigDecimal price = new BigDecimal((String) (request.getParameter("price")));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Part filePart = request.getPart("image");

        // if ()

        System.out
                .println("updating product : " + name + "\nd: " + description + "\n brand = " + brandID + "\nprice = "
                        + price + "\nquantity = " + quantity);

        product.setProductName(name);
        product.setDescription(description);
        product.setBrandId(brandID);
        product.setPrice(price);
        product.setQuantity(quantity);

        if (filePart.getSize() != 0) { // if new image is sent
            System.out.println("file : " + filePart.getName() + " | size :  " + filePart.getSize());
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            if (savePath == null)
                savePath = (String) getServletContext().getAttribute("savePath");
            System.out.println("path ======> " + savePath);
            System.out.println("fNAme ======> " + fileName);
            String filePath = savePath + fileName;
            filePart.write(filePath);
            product.setImagePath(filePath);
        } else
            System.out.println(" image doesn't change ");

        productDAO.updateProduct(product, productID);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/products.jsp");
        dispatcher.forward(request, response);

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
