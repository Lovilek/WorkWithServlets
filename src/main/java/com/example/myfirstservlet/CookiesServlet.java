package com.example.myfirstservlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CookiesServlet", value = "/cookies")
public class CookiesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie cookie[]=request.getCookies();
        String myCookieValue="No Cookie Data";
        if(cookie!=null){
            for(Cookie c : cookie){
                if(c.getName().equals("first_cookie")){
                    myCookieValue=c.getValue();
                    break;
                }
            }
        }
        request.setAttribute("cookieValue",myCookieValue);
request.getRequestDispatcher("/cookies.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
