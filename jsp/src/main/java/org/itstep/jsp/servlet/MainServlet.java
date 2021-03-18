package org.itstep.jsp.servlet;

import org.itstep.jsp.dao.DbManger;
import org.itstep.jsp.entity.User;
import org.itstep.jsp.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/index")

public class MainServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




        List<User> allUsers = new ArrayList<>();
            try {
                allUsers = DbManger.getAllUsers();
            }
                catch (ClassNotFoundException e)
                {
                    e.printStackTrace();
                }

            if(allUsers != null)
            {
                request.setAttribute("users",allUsers);

            }



        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
