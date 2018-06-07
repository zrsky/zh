package com.bysj.interceptor;

import com.bysj.common.RequestHolder;
import com.bysj.pojo.User;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author super
 * @create 2018-04-19 20:36
 */

public class HttpInterceptor extends HandlerInterceptorAdapter {


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        RequestHolder.add(request);
        String uri = request.getRequestURI();
        if(uri.contains("login") || uri.contains("register"))
            return true;
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            //request.getRequestDispatcher("/WEB-INF/common/login.jsp").forward(request,response);
            response.sendRedirect("/login.action");
        }
        //RequestHolder.add(user);

        return true;
    }
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        removeThreadLocalInfo();
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        removeThreadLocalInfo();
    }

    public void removeThreadLocalInfo() {
        RequestHolder.remove();
    }


}
