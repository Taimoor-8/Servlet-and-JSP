package com.example.sessions.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "memberAreaController" , value = "/member-area-controller")
public class memberAreaController extends HttpServlet {

    public void doGet(HttpServletRequest request , HttpServletResponse response)
            throws IOException, ServletException {

        String action = request.getParameter("action");
        switch (action){
            case "destroy":
                request.getSession().invalidate();

//                Cookies should not be used for login and logout mechanisms
                /*Cookie [] cookies = request.getCookies();
                for (Cookie cookie : cookies){
                    if (cookie.getName().equals("username")){
                        cookie.setValue(null);
                        cookie.setMaxAge(0);
                        response.addCookie(cookie);
                    }
                }*/
                response.sendRedirect(request.getContextPath()+"/hello-servlet?action=login");
                break;

            case "memberArea":
                request.getRequestDispatcher("memberArea.jsp").forward(request , response);
                break;

            case "memberOnly":
                request.getRequestDispatcher("memberOnly.jsp").forward(request , response);
                break;

            default:
                break;
        }
    }
}
