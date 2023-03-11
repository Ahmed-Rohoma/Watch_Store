package controller.adminControllers.servlets;

import java.io.IOException;
import java.util.List;

import Dao.ProductDAOImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Product;

@WebServlet("/admin/products")
public class ProductServlet extends HttpServlet {
  private ProductDAOImp productDAO;

  public ProductServlet() {
    productDAO = new ProductDAOImp();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    System.out.println("////////////////////////////");
    List<Product> products = productDAO.getAllProducts();
    System.out.println("////////////////////////////");
    for (Product product : products) {
      System.out.println(product.toString());
    }

    // request.setAttribute("products", products);
    // request.getRequestDispatcher("/admin/products.jsp").forward(request,
    // response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String action = request.getParameter("action");

    if ("create".equals(action)) {
      String name = request.getParameter("name");
      double price = Double.parseDouble(request.getParameter("price"));
      String description = request.getParameter("description");
      Product product = new Product();
      product.setName(name);
      product.setPrice(price);
      product.setDescription(description);
      productDAO.addProduct(product);
    } else if ("update".equals(action)) {
      int id = Integer.parseInt(request.getParameter("id"));
      String name = request.getParameter("name");
      double price = Double.parseDouble(request.getParameter("price"));
      String description = request.getParameter("description");
      Product product = new Product();
      product.setId(id);
      product.setName(name);
      product.setPrice(price);
      product.setDescription(description);
      productDAO.updateProduct(product);
    } else if ("delete".equals(action)) {
      int id = Integer.parseInt(request.getParameter("id"));
      productDAO.deleteProductById(id);
    }

    response.sendRedirect(request.getContextPath() + "/admin/products");
  }
}
