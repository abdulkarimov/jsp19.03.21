package org.itstep.jsp.servlet;

import org.itstep.jsp.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/student3")
public class Student3Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("student3.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Student student = (Student) request.getSession().getAttribute("student");


        student.setUniv(request.getParameter("univ"));
        student.setFacul(request.getParameter("facul"));
        student.setCourse(request.getParameter("course"));

        request.getSession().setAttribute("student" , student);




        response.sendRedirect("/student4");
    }
}
