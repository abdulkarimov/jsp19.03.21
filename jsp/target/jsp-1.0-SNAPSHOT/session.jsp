<%@ page import="org.itstep.jsp.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>

<head>
    <title>Cookie Page</title>
    <%@include file="templates/head.jsp" %>
</head>

<body>
<div class="container-fluid">
    <%@include file="templates/navbar.jsp" %>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <form action="/session" method="post">
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
                <button class="btn btn-sm btn-success mt-2">SAVE USER DATA</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>