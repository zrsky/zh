package com.bysj.filter;

import com.bysj.common.RequestHolder;
import com.bysj.pojo.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author super
 * @create 2018-04-10 16:19
 */

public class LoginFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String uri = request.getRequestURI();
        /*if(uri.contains("login") || uri.contains("index") || uri.contains("logout"))
            return true;*/
        String servletPath = request.getServletPath();
        User user = (User) request.getSession().getAttribute("user");
        if(user == null){
            String path = "/index.html";
            response.sendRedirect(path);
            //return;
        }
        RequestHolder.add(request);
        RequestHolder.add(user);
        filterChain.doFilter(request,response);
        //return;
    }

    public void destroy() {

    }
}
