package gov.iti.jets.controller.customer;

import java.io.IOException;
import java.util.List;

import gov.iti.jets.model.ProductModel;
import gov.iti.jets.persistance.dao.IProductImp;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet("/brandproducts")
public class BrandProducts extends HttpServlet{

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
        System.out.println(Integer.parseInt(request.getParameter("brandId"))+"brand////////////////////////////");
        List<ProductModel> products =  productDAO.getProductsByBrandID(Integer.parseInt(request.getParameter("brandId")));
        servletContext.setAttribute("allpros",products);

        System.out.println(servletContext.getAttribute("allpros"));
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/brand-products.jsp");
        dispatcher.include(request, response);
    }
    
}
