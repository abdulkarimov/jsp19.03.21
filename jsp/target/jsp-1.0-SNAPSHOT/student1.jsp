<%@ page import="org.itstep.jsp.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>

<head>
    <title>student1</title>
    <%@include file="templates/head.jsp" %>
</head>

<body>
<div class="container-fluid">
    <%@include file="templates/navbar.jsp" %>
</div>




<form method="post" action="/student1">
    <div class="mb-3">

        <div class="form-group">
            <label>NAME</label>
            <input class="from-control" name = "name" type="text">
        </div>

        <div class="form-group">
            <label>SURNAME</label>
            <input class="from-control" name = "surname" type="text">
        </div>

        <div class="form-group">
            <label>AGE</label>
            <input class="from-control" name = "age" type="text">
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary">next</button>
        </div>

    </div>


</form>
</body>
</html>