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
                    String cookieValue=(String) request.getAttribute("cookieValue");
                    out.print("Your cookie data is : "+cookieValue);
                %>
            </h1>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-sm-12">
            <div class="col-sm-6 offset-3">



              <form action="/setcookie" method="post">
                  <div class="form-group">
                      <label>COOKIE VALUE</label>
                      <input type="text" name="cookie_value" class="form-control">
                      <button class="btn btn-success">SET COOKIE</button>
                  </div>
              </form>

                <form action="/deletecookie" method="post">
                    <div class="form-group">
                        <button class="btn btn-danger">DELETE COOKIE</button>
                    </div>
                </form>

        </div>
    </div>
</div>
</body>
</html>
