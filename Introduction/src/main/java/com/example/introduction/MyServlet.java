package com.example.introduction;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class MyServlet extends HttpServlet {

    public void doGet(HttpServletRequest request , HttpServletResponse response)
            throws IOException {

        response.getWriter().println("Hello World");
    }
}
