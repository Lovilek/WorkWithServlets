<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.myfirstservlet.Footballer" %><%--
  Created by IntelliJ IDEA.
  User: Artem
  Date: 10.03.2022
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
    <%@include file="vendor/head.jsp"%>

</head>
<body>
<%@include file="vendor/navbar.jsp"%>

<div class="container">
    <div class="row mt-5">
        <div class="col-sm-12">
            <%
                Footballer football=(Footballer)request.getAttribute("football");
                if(football!=null){
            %>
            <div class="jumbotron">
                <h1 class="display-4">
                    <%=football.getName()%>
                </h1>
                <p class="lead"><%=football.getSurname()%></p>
                <p class="lead"><%=football.getSalary()%>$</p>
                <p class="lead"><%=football.getClub()%></p>
                <p class="lead"><%=football.getCountryClub().getName()+" - "+football.getCountryClub().getShortName()%></p>

                <hr class="my-4">
                <p><%=football.getTransferPrice()%>$</p>
                <p class="lead">
                    <a class="btn btn-primary btn-sm" href="edit?id=<%=football.getId()%>" role="button">EDIT</a>
                </p>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
