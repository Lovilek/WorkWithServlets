package com.example.myfirstservlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SetCookieServlet", value = "/setcookie")
public class SetCookieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cookieValue = request.getParameter("cookie_value");
        Cookie cookie = new Cookie("first_cookie", cookieValue);
        cookie.setMaxAge(3600);
        response.addCookie(cookie);
        response.sendRedirect("/cookies");
    }
}
