<%@include file="user.jsp" %>
<nav class="navbar navbar-expand-lg navbar-dark " style="background-color: goldenrod">
    <div class="container-fluid">

        <a class="navbar-brand" href="/">Football Players</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <%
                    if (ONLINE) {


                %>
                <li class="nav-item">
                    <a class="nav-link" href="/addplayer">Add Player</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/cookies">Cookies Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/session">Sessions Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/profile"><%=currentUser.getFullName()%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
                <%
                } else {
                %>
                <li class="nav-item">
                    <a class="nav-link" href="/addplayer">Add Player</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/cookies">Cookies Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/session">Sessions Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/register">Register</a>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>
