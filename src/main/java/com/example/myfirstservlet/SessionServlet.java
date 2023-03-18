package com.example.myfirstservlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SessionServlet", value = "/session")
public class SessionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        HttpSession session=request.getSession();
        String sessValue=(String) session.getAttribute("my_sess_value");

        System.out.println(sessValue);
        request.setAttribute("text","Your session value is "+sessValue);
        request.getRequestDispatcher("/session.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
