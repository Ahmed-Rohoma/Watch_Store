package com.myservlet.Controllers;

import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class EmailChecker extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        // String Email = request.getParameter("email");

        boolean isValid = true;

        // check if this email exist in DB
        if (isValid) {
            out.print("Valid Name");
        } else
            out.print("Invalid Name");

    }
}
