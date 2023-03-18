package com.example.myfirstservlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Delete", value = "/Delete")
public class Delete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id=Long.parseLong(request.getParameter("id"));
        Footballer football=DBManager.getFootballer(id);
        if(football!=null){
            if(DBManager.deletePlayer(football)){
                response.sendRedirect("/");
            }else {
                response.sendRedirect("/edit?id="+id+"&error");
            }
        }else {
            response.sendRedirect("/");
        }

    }
}
