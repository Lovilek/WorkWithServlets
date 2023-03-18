<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>


    <nav class="navbar navbar-dark bg-primary">
        <a class="navbar-brand" href="#">
<img src="https://png.clipart.me/istock/previews/3223/32235386-simple-style-football-soccer-ball-on-blue-background.jpg" width="30" height="30" class="d-inline-block align-top" alt="">        FOOTBALL PLAYERS
        </a>
    </nav>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<form class="form-inline" action="/add" method="post">
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
    <input class="form-control" type="text" name="salary">

    <label>
        Club:
    </label>
    <input class="form-control" type="text" name="club1">

    <label>
        Transfer price:
    </label>
    <input class="form-control" type="text" name="transfer_price">
        <button type="submit" class="btn btn-primary">ADD PLAYER</button>

    </div>
    <br>
</form>
<br>

<form method="post" action="/Delete" class="form-inline">
<div class="form-group mx-sm-3 mb-2">
    <label>
        ID:
    </label>
    <input class="form-control" type="text" name="id">
    <button type="submit" class="btn btn-primary">DELETE PLAYER</button>

</div>
</form>
<form class="form-inline" action="/Update" method="post">
    <div class="form-group mx-sm-3 mb-2">

        <label>
            ID:
        </label>
        <input class="form-control" type="text" name="id1">
        <label>
            Name:
        </label>
        <input class="form-control" type="text" name="name1">

        <label>
            Surname:
        </label>
        <input class="form-control" type="text" name="surname1">

        <label>
            Salary:
        </label>
        <input class="form-control" type="text" name="salary1">

        <label>
            Club:
        </label>
        <input class="form-control" type="text" name="club2">

        <label>
            Transfer price:
        </label>
        <input class="form-control" type="text" name="transfer_price1">
        <button type="submit" class="btn btn-primary">UPDATE PLAYER</button>

    </div>
    <br>
</form>

<form method="get" action="/home " class="form-inline">
    <div class="form-group mx-sm-3 mb-2">
        <label>
            ID:
        </label>
        <input class="form-control" type="text" name="id">
        <button type="submit" class="btn btn-primary">PRINT PLAYER</button>

    </div>
</form>
</body>
</html>