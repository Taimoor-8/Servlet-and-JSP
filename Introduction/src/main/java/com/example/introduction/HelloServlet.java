package com.example.introduction;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

//        response.getWriter().println("Hello World");

        PrintWriter out = response.getWriter();
        out.println("Value1: " + request.getParameter("getValue1"));
        out.println("Value2: " + request.getParameter("getValue2"));
    }

}