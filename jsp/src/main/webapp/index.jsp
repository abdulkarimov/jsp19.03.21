<%@ page import="org.itstep.jsp.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>

<head>
    <title>FACEBOOK</title>
    <%@include file="templates/head.jsp"%>
</head>

<body>

    <div class="container-fluid">
        <%@include file="templates/navbar.jsp"%>
    </div>

    <div class="container">

        <div  class = "row" >
            <div class ="col-sm-6">

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                    Launch static backdrop modal
                </button>
                    <form action="/user" method="post">


                <!-- Modal -->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">Create new user</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>

                            <div class="modal-body">
                                <label>Name</label>
                                <div class="form-group">
                                    <input type="text" name="user_name" required>
                                </div>
                                <label>Email</label>
                                <div class="form-group">
                                    <input type="text" name="user_email" required>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                <button type="submit" class="btn btn-primary">Create</button>
                            </div>
                        </div>
                    </div>
            </div>

            </form>

            </div>


        </div>

        <div class = "row">

            <div class="col-sm-8" offset-2>

                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>
                            ID
                        </th>
                        <th>
                            Name
                        </th>
                        <th>
                            Email
                        </th>
                        <th>
                            Details
                        </th>
                    </tr>
                    </thead>

                    <tbody>
                    <%
                        List<User> userList = (List<User>) request.getAttribute("users");
                        for (User u:userList
                             ) {


                    %>
                        <tr>
                            <td><%=u.getId()%>
                            <td><%=u.getName()%>
                            <td><%=u.getEmail()%>
                            <td><a href ="/user?id=<%u.getId();%>" class="btn btn-sm btn-success"></a> </td>
                        </tr>

                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>

        </div>

    </div>

</body>
</html>