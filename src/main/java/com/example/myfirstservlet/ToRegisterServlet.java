package com.example.myfirstservlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ToRegisterServlet", value = "/toregister")
public class ToRegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String re_password = request.getParameter("re_password");
        String fullName = request.getParameter("full_name");
        String redirect="/register?passworderror";

        if(password.equals(re_password)){
            redirect="/register?emailerror";
            Users user=DBManager.getUser(email);
            if (user==null){
                Users newUser=new Users(null,email,password,fullName);
                if(DBManager.addUser(newUser))
                redirect="/register?success";
            }
        }
        response.sendRedirect(redirect);
    }
}
