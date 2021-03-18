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
            <form action="/cookie" method="post">
                COOKIE: <input type="text" name="my_cookie">
                <button class="btn btn-sm btn-success">SAVE COOKIE</button>
            </form>
        </div>
    </div>
</div>
<div class="row">
    <%
        String text  = (String) request.getAttribute("text");
        out.println("<h1>"  + text + "</h1>");
    %>
</div>


<div>

    <form action="/cookie" method="post">
        <select name="language">
            <option> eng </option>
            <option>ru</option>
        </select>
        <input type="submit" name="submit"/>
    </form>
</div>


<form>
    <div class="mb-3">
        <label class="form-label">
            <%
                if(request.getAttribute("lang").equals("ru")){
                    out.println("ИИН");
                } else if (request.getAttribute("lang").equals("eng")) {
                    out.println("IIN");
                }
            %></label>
        <input type="text" class="form-control" name = "iin">
    </div>
    <div class="mb-3">
        <label class="form-label">
            <%
                if(request.getAttribute("lang").equals("ru")){
                    out.println("Имя");
                } else if (request.getAttribute("lang").equals("eng")) {
                    out.println("Name");
                }
            %></label>
        <input type="text" class="form-control" name = "name">
    </div>
    <div class="mb-3">
        <label class="form-label">
            <%
                if(request.getAttribute("lang").equals("ru")){
                    out.println("Фамилия");
                } else if (request.getAttribute("lang").equals("eng")) {
                    out.println("Surname");
                }
            %></label>
        <input type="text" class="form-control" name = "surname">
    </div>

    <div class="mb-3">
        <label class="form-label">
            <%
                if(request.getAttribute("lang").equals("ru")){
                    out.println("Отчиство");
                } else if (request.getAttribute("lang").equals("eng")) {
                    out.println("patron");
                }
            %></label>
        <input type="text" class="form-control" name = "patron">
    </div>
</form>





</body>
</html>