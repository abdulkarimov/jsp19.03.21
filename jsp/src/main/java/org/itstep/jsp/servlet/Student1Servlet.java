package org.itstep.jsp.servlet;

import org.itstep.jsp.model.Student;
import org.itstep.jsp.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/student1")
public class Student1Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("student1.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Student student = new Student();

        student.setName(request.getParameter("name"));
        student.setSurname(request.getParameter("surname"));
        student.setAge(request.getParameter("age"));


        HttpSession session = request.getSession();
        session.setAttribute("student" , student);

        response.sendRedirect("/student2");


    }
}
