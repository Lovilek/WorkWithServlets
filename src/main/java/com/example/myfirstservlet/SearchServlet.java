package com.example.myfirstservlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String club=request.getParameter("club");
        ArrayList<Footballer> football =DBManager.searchFootballer(club);
        if(football!=null){
            request.setAttribute("footballsearch",football);
            request.getRequestDispatcher("/search.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("/404.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
