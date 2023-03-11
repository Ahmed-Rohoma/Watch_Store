package controller.adminControllers.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

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

    response.setContentType("text/event-stream");
    response.setCharacterEncoding("UTF-8");
    PrintWriter out = response.getWriter();
    System.out.println("welcome from servlet");

    List<Product> pro = new ArrayList<>();

    pro = productDAO.getAllProducts();

    System.out.println("////////////////////////////");

    for (Product product : pro) {
      System.out.println(product.toString());
    }
    System.out.println("////////////////////////////");

    Gson gson = new Gson();
    String msg = gson.toJson(pro);
    System.out.println(" " + msg);

    out.write(msg);
    out.flush();
    out.close();

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      // handling add,update and remove product 
  }
}