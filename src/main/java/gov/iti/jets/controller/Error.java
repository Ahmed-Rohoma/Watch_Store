package gov.iti.jets.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/error")
public class Error extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("============================");
        System.out.println(" Error 404 ");
        System.out.println("============================");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Error Page</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Oops! An error occurred.</h1>");
        out.println("<img src='/path/to/general/photo.jpg'>");
        out.println("</body>");
        out.println("</html>");

    }

}
