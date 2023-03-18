package com.example.myfirstservlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DetailsServlet", value = "/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       Long id=Long.parseLong(request.getParameter("id"));
       Footballer football=DBManager.getFootballer(id);
       if(football!=null){
           request.setAttribute("football",football);
           request.getRequestDispatcher("/details.jsp").forward(request,response);
       }else{
           request.getRequestDispatcher("/404.jsp").forward(request,response);
       }
    }

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
