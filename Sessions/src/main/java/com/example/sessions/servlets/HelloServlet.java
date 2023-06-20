package com.example.sessions.servlets;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action.equals("login")) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request , HttpServletResponse response)
            throws IOException{

        String action = request.getParameter("action");
        if (action.equals("loginSubmit")) {
            authenticate(request, response);
        }
    }

    public void authenticate(HttpServletRequest request , HttpServletResponse response)
            throws IOException{
        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        if (userName.equals("taimoor") && password.equals("taimoor")){
            request.getSession().invalidate();

            HttpSession newSession = request.getSession(true);
            newSession.setMaxInactiveInterval(300);

//            Cookies should not be used for login and logout mechanism
            /*Cookie cUserName = new Cookie("username" , userName);
            response.addCookie(cUserName);*/

//            Session should be used for login and logout purpose
            newSession.setAttribute("username" , userName);

//            Encoding URL is useful where cookies are disabled
            String encode = response.encodeURL(request.getContextPath());
            response.sendRedirect(encode+"/member-area-controller?action=memberArea");
        }
        else {
            response.sendRedirect(request.getContextPath()+"/hello-servlet?action=login");
        }
    }
}