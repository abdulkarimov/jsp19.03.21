package org.itstep.jsp.servlet;

import org.itstep.jsp.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/student2")
public class Student2Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("student2.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Student student = (Student) request.getSession().getAttribute("student");

        student.setCity(request.getParameter("city"));
        student.setAddress(request.getParameter("address"));
        student.setPhone(request.getParameter("phone"));

         request.getSession().setAttribute("student" , student);
        response.sendRedirect("/student3");

    }
}
