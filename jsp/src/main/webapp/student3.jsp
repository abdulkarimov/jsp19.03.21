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




<form method="post" action="/student3">
    <div class="mb-3">


            <div class="form-group">
                <label>UNIV</label>
                <input class="from-control" name = "univ" type="text">
            </div>

            <div class="form-group">
                <label>FACUL</label>
                <input class="from-control" name = "facul" type="text">
            </div>

            <div class="form-group">
                <label>COURSE</label>
                <input class="from-control" name = "course" type="text">
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">save</button>
            </div>



    </div>





</body>
</html>