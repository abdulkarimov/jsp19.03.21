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




<form method="post" action="/student2">
    <div class="mb-3">


            <div class="form-group">
                <label>CITY</label>
                <input class="from-control" name = "city" type="text">
            </div>

            <div class="form-group">
                <label>ADDRESS</label>
                <input class="from-control" name = "address" type="text">
            </div>

            <div class="form-group">
                <label>PHONE</label>
                <input class="from-control" name = "phone" type="text">
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">next</button>
            </div>



    </div>





</body>
</html>