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
    <title>Ordered Footballer list</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp"%>
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-12">

            <table class="table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>SURNAME</th>
                    <th>SALARY</th>
                    <th>CLUB</th>
                    <th>TRANSFER PRICE</th>

                </tr>
                </thead>
                <tbody>
                <%
                    ArrayList<Footballer> football=(ArrayList<Footballer>) request.getAttribute("orderedplayers");
                    if(football!=null){
                        for(Footballer f:football){
                %>
                <tr>
                    <td>
                        <%=f.getId()%>
                    </td>
                    <td>
                        <%=f.getName()%>
                    </td>
                    <td>
                        <%=f.getSurname()%>
                    </td>
                    <td>
                        <%=f.getSalary()%>$
                    </td>
                    <td>
                        <%=f.getClub()%>
                    </td>
                    <td>
                        <%=f.getTransferPrice()%>$
                    </td>
                    <td>
                        <a href="/details?id=<%=f.getId()%>" class="btn  btn-sm" style="background-color: darkorange">DETAILS</a>
                    </td>
                </tr>


                <%
                        }
                    }
                %>
                </tbody>
            </table>
            <a href="/" class="btn btn-primary">Get back</a>

        </div>
    </div>
</div>
</body>
</html>
