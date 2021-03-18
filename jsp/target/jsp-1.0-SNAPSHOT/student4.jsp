<%@ page import="org.itstep.jsp.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="org.itstep.jsp.model.Student" %>
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

<form method="post" action="/student4">

    <div class="container mt-5">

        <div class="row">

            <table class="table">
                <thead>
                <tr>
                    <th scope="col">name</th>
                    <th scope="col">surname</th>
                    <th scope="col">age</th>
                    <th scope="col">city</th>
                    <th scope="col">address</th>
                    <th scope="col">phone</th>
                    <th scope="col">univ</th>
                    <th scope="col">facul</th>
                    <th scope="col">course</th>
                </tr>
                </thead>

                <tbody>
                <%
                    Student s = (Student) request.getSession().getAttribute("student");
                %>
                <tr>
                    <td>
                        <%=s.getName()%>
                    </td>
                    <td>
                        <%=s.getSurname()%>
                    </td>
                    <td>
                        <%=s.getAge()%>
                    </td>
                    <td>
                        <%=s.getCity()%>
                    </td>
                    <td>
                        <%=s.getAddress()%>
                    </td>
                    <td>
                        <%=s.getPhone()%>
                    </td>
                    <td>
                        <%=s.getUniv()%>
                    </td>
                    <td>
                        <%=s.getFacul()%>
                    </td>
                    <td>
                        <%=s.getCourse()%>
                    </td>

                </tr>




                </tbody>

            </table>

        </div>
    </div>
</form>




</body>
</html>