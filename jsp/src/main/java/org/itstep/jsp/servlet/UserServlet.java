package org.itstep.jsp.servlet;

import org.itstep.jsp.dao.DbManger;
import org.itstep.jsp.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("user_name");
        String email = request.getParameter("user_email");

        User user = new User(name,email);

        try {
            DbManger.createUser(user);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        response.sendRedirect("/");
    }


}
