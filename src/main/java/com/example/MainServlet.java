package com.example;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class MainServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward the request to index.jsp
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
