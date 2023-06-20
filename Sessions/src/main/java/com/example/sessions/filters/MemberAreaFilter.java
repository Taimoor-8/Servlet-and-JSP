package com.example.sessions.filters;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.Filter;

import java.io.IOException;

@WebFilter("/member-area-controller")
public class MemberAreaFilter implements Filter {

    public MemberAreaFilter() {
    }

    public void destroy(){

    }

    public void doFilter(ServletRequest req , ServletResponse res , FilterChain chain)
    throws IOException , ServletException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        if (request.getSession().getAttribute("username") == null){
            response.sendRedirect(request.getContextPath()+"/hello-servlet?action=login");
        }
        else {
            chain.doFilter(request , response);
        }
    }

    public void init(FilterConfig filterConfig) throws ServletException{

    }
}
