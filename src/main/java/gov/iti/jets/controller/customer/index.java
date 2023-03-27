package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.util.List;

import gov.iti.jets.model.ProductModel;
import gov.iti.jets.persistance.dao.IProductImp;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet("/home")
public class index extends  HttpServlet {

    private IProductImp productDAO;
    ServletConfig servletConfig;

    @Override
    public void init(ServletConfig config) throws ServletException {
        productDAO = new IProductImp();
        servletConfig = config;
    }

    @Override
    public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        ServletContext servletContext = servletConfig.getServletContext();
        // servletContext.setAttribute("products", );
        List<ProductModel> products =  productDAO.getAllProducts();
        // for (ProductModel pro : products) {
        //     System.out.println(pro.getProductName()+"dddddddd");
        // }
        servletContext.setAttribute("allpros",products);
        servletContext.setAttribute("rootPath",response.getWriter());

        // System.out.println(servletContext.getAttribute("products"));
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/index.jsp");
        dispatcher.include(request, response);
    }

}