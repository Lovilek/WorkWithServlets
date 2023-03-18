<%@ page import="com.example.myfirstservlet.Footballer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Artem
  Date: 23.03.2022
  Time: 01:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search</title>
    <%@include file="vendor/head.jsp" %>

</head>
<body>
<%@include file="vendor/navbar.jsp" %>

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
                    ArrayList<Footballer> football = (ArrayList<Footballer>) request.getAttribute("footballsearch");
                    if (football != null) {
                        for (Footballer f : football) {
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
                        <a href="/details?id=<%=f.getId()%>" class="btn  btn-sm"
                           style="background-color: darkorange">DETAILS</a>
                    </td>
                </tr>


                <%
                        }
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
