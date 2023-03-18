<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.myfirstservlet.Footballer" %>
<%@ page import="com.example.myfirstservlet.Countries" %><%--
  Created by IntelliJ IDEA.
  User: Artem
  Date: 10.03.2022
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
    <%@include file="vendor/head.jsp"%>

</head>
<body>
<%@include file="vendor/navbar.jsp"%>

<div class="container">
    <div class="row mt-5">
        <div class="col-sm-6">
            <%

                Footballer football=(Footballer)request.getAttribute("football");
                if(football!=null){
            %>

            <%
                String success=request.getParameter("success");
                if(success!=null){
            %>
            <div class="alert alert-success" role="alert">
                Player saved successfully!
            </div>

            <%
                }
            %>
            <%
                String error=request.getParameter("error");
                if(error!=null){
            %>
            <div class="alert alert-danger" role="alert">
                Something went wrong!
            </div>

            <%
                }
            %>
            <form class="form-inline" action="/edit" method="post">

                <div class="form-group mx-sm-3 mb-2">

                    <label>
                        ID:
                    </label>
                    <input class="form-control" type="text" name="id" value="<%=football.getId()%>">
                    <label>
                        Name:
                    </label>
                    <input class="form-control" type="text" name="name" value="<%=football.getName()%>">

                    <label>
                        Surname:
                    </label>
                    <input class="form-control" type="text" name="surname" value="<%=football.getSurname()%>">

                    <label>
                        Salary:
                    </label>
                    <input class="form-control" type="number" name="salary" value="<%=football.getSalary()%>">

                    <label>
                        Club:
                    </label>
                    <input class="form-control" type="text" name="club" value="<%=football.getClub()%>">

                    <label>
                        Transfer price:
                    </label>
                    <input class="form-control" type="number" name="transferprice" value="<%=football.getTransferPrice()%>">
                    <select class="form-control" name="club_country">

                        <%
                            ArrayList<Countries> countries = (ArrayList<Countries>) request.getAttribute("countries");
                            if (countries != null) {
                                for (Countries c : countries) {
                        %>
                        <option value="<%=c.getId()%>" <% if (c.getId()==football.getCountryClub().getId()){out.print("selected");}%>>
                            <%=c.getName() + " / " + c.getShortName()%>
                        </option>

                        <%
                                }
                            }
                        %>
                    </select>
                    <button type="submit" class="btn btn-success">UPDATE PLAYER</button>

                </div>
                <br>
            </form>



                        <form class="form-inline" action="/Delete" method="post">
                            <div class="form-group mx-sm-3 mb-2">

                            <input class="form-control" type="text" name="id" value="<%=football.getId()%>">
                            <button type="submit" class="btn btn-danger">DELETE PLAYER</button>
                            </div>
                        </form>

            <%
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
