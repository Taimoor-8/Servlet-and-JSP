package com.example.servlet_initialization.servlets;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = "/servlet2" , initParams = {
        @WebInitParam(name = "message2" , value = "Initialization from annotation"
                , description = "Initialization from annotation description")
})
public class servlet2 extends HttpServlet {

    public servlet2() {
    }

    public void doGet(HttpServletRequest request , HttpServletResponse response)
            throws IOException , ServletException {
        ServletConfig config = getServletConfig();
        String message2 = config.getInitParameter("message2");
        response.getWriter().println(message2);

    }
}
