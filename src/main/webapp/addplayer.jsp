<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.myfirstservlet.Footballer" %>
<%@ page import="com.example.myfirstservlet.Countries" %>
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
    <title>Add player</title>
    <%@include file="vendor/head.jsp" %>

</head>
<body>
<%@include file="vendor/navbar.jsp" %>

<div class="container">
    <div class="row mt-3">
        <div class="col-sm-6">
            <%
                String success = request.getParameter("success");
                if (success != null) {
            %>
            <div class="alert alert-success" role="alert">
                Player added successfully!
            </div>

            <%
                }
            %>
            <form class="form-inline" action="/addplayer" method="post">
                <div class="form-group mx-sm-3 mb-2">

                    <label>
                        ID:
                    </label>
                    <input class="form-control" type="text" name="id">
                    <label>
                        Name:
                    </label>
                    <input class="form-control" type="text" name="name">

                    <label>
                        Surname:
                    </label>
                    <input class="form-control" type="text" name="surname">

                    <label>
                        Salary:
                    </label>
                    <input class="form-control" type="number" name="salary">

                    <label>
                        Club:
                    </label>
                    <input class="form-control" type="text" name="club">

                    <label>
                        Transfer price:
                    </label>
                    <input class="form-control" type="number" name="transferprice">

                    <label>
                        Country Club:
                    </label>
                    <select class="form-control" name="club_country">

                        <%
                            ArrayList<Countries> countries = (ArrayList<Countries>) request.getAttribute("countries");
                            if (countries != null) {
                                for (Countries c : countries) {
                        %>
                        <option value="<%=c.getId()%>">
                            <%=c.getName() + " / " + c.getShortName()%>
                        </option>

                        <%
                                }
                            }
                        %>
                    </select>

                    <br>
                    <button type="submit" class="btn btn-primary">ADD PLAYER</button>

                </div>
                <br>
            </form>

        </div>
    </div>
</div>
</body>
</html>
