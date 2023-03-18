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
    <div class="row mt-3">
        <div class="col-sm-6">
     <h4 class="mb-4">LOGIN TO SYSTEM</h4>
            <%
                String passError = request.getParameter("passworderror");
                if (passError != null) {
            %>
            <div class="alert alert-danger" role="alert">
                Incorrect password
            </div>

            <%
                }
            %>
            <%
                String emailError = request.getParameter("emailerror");
                if (emailError != null) {
            %>
            <div class="alert alert-danger" role="alert">
                Incorrect email
            </div>

            <%
                }
            %>
            <form action="/auth" method="post">
                <div class="form-group">
                    <label>EMAIL:</label>
                    <input type="email" required class="form-control" name="email">
                    <label>PASSWORD:</label>
                    <input type="password" required class="form-control" name="password">
                    <button class="btn btn-success">LOGIN</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
