package com.example.forms;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        out.println(request.getParameter("name"));
        out.println(request.getParameter("gender"));
        String [] languages = request.getParameterValues("language");
        if (languages != null){
            for (int i = 0; i < languages.length; i++){
                out.println(languages[i]);
            }
        }
        else {
            out.println("No language is selected");
        }

        out.println(request.getParameter("country"));
    }

    public void doPost(HttpServletRequest request , HttpServletResponse response)
            throws IOException{
        PrintWriter out = response.getWriter();
        out.println(request.getParameter("name"));
        out.println(request.getParameter("gender"));
        String [] languages = request.getParameterValues("language");
        if (languages != null){
            for (int i = 0; i < languages.length; i++){
                out.println(languages[i]);
            }
        }
        else {
            out.println("No language is selected");
        }

        out.println(request.getParameter("country"));
    }

}