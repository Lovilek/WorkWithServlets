<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.myfirstservlet.Footballer" %>
<%@ page import="com.example.myfirstservlet.DBManager" %><%--
  Created by IntelliJ IDEA.
  User: Artem
  Date: 10.03.2022
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Footballer list</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp"%>
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-12">
            <h1 class="text-center">
<%
    String text=(String) request.getAttribute("text");
    out.print(text);
%>
            </h1>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-sm-12">
            <div class="col-sm-6 offset-3">



                <form action="/setsession" method="post">
                    <div class="form-group">
                        <label>SESSION VALUE</label>
                        <input type="text" name="session_value" class="form-control">
                        <button class="btn btn-success">SET SESSION</button>
                    </div>
                </form>

                <form action="/deletesession" method="post">
                    <div class="form-group">
                        <button class="btn btn-danger">DELETE SESSION</button>
                    </div>
                </form>


            </div>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-sm-12">
            <div class="col-sm-6 offset-3">

<%
    ArrayList<String> basket=(ArrayList<String>) request.getSession().getAttribute("basket");
    if(basket!=null){

    for(String bsk: basket){
%>
                <h5 class="text-center"><%=bsk%></h5>
                <%
                    }
                    }
                %>

                <form action="/addtobasket" method="post">
                    <div class="form-group">
                        <label>BASKET VALUE</label>
                        <input type="text" name="basket_value" class="form-control">
                        <button class="btn btn-success">ADD TO BASKET</button>
                    </div>
                </form>

                <form action="/clearbasket" method="post">
                    <div class="form-group">
                        <button class="btn btn-danger">CLEAR BASKET</button>
                    </div>
                </form>


            </div>
        </div>
    </div>
</body>
</html>
