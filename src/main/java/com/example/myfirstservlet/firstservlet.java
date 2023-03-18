package com.example.myfirstservlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(value = "/addplayer")
public class firstservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<Countries> countries = DBManager.getAllCountries();
        request.setAttribute("countries", countries);
        request.getRequestDispatcher("/addplayer.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        int salary = Integer.parseInt(request.getParameter("salary"));
        String club = request.getParameter("club");
        int transferPrice = Integer.parseInt(request.getParameter("transferprice"));
        Long countryID=Long.parseLong(request.getParameter("club_country"));
        Countries cnt=DBManager.getCountry(countryID);
        if(cnt!=null){
            Footballer football=new Footballer(id,name,surname,salary,club,transferPrice,cnt);

         DBManager.addFootballer(football);
            response.sendRedirect("/addplayer?success");

        }else {


            response.sendRedirect("/addplayer?error");
        }
    }

}
