package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.util.List;

import gov.iti.jets.model.ProductModel;
import gov.iti.jets.persistance.dao.CategoryDAOImp;
import gov.iti.jets.persistance.dao.CategoryDaoInterface;
import gov.iti.jets.persistance.dao.IProductImp;
import jakarta.servlet.RequestDispatcher;
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
    private CategoryDaoInterface iBrand;

    ServletConfig servletConfig;

    @Override
    public void init(ServletConfig config) throws ServletException {
        productDAO = new IProductImp();
        iBrand = new CategoryDAOImp();
        servletConfig = config;
    }

    @Override
    public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        ServletContext servletContext = servletConfig.getServletContext();
        List<ProductModel> products =  productDAO.getAllProducts();
        servletContext.setAttribute("allpros",products);
        servletContext.setAttribute("brands",iBrand.getAllCategories());

        // System.out.println(servletContext.getAttribute("products"));
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/index.jsp");
        dispatcher.include(request, response);
    }

}