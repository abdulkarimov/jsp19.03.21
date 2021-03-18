package org.itstep.jsp.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/cookie")
public class CookieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

/*        Cookie[] cookies = request.getCookies();
        String text = "NO COOKIES";
        if(cookies != null)
        {
            for (Cookie c : cookies
                 ) {
                if(c.getName().equals("rem_cookie"))
                {
                    text = c.getValue();
                    break;
                }
            }
        }

            request.setAttribute("text",text);
        request.getRequestDispatcher("cookie.jsp").forward(request,response);*/




        Cookie[] cookies = request.getCookies();


        String lang = "";
        if(cookies != null)
        {
            for (Cookie c : cookies
            ) {
                if(c.getName().equals("submit"))
                {
                    lang = c.getValue();
                    break;
                }
            }
        }

        request.setAttribute("lang",lang);

        request.getRequestDispatcher("cookie.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String cookie = request.getParameter("my_cookie");
//        Cookie remCookie = new Cookie("rem_cookie",cookie);

        String cookie2 = request.getParameter("language");
        Cookie remCookie2 = new Cookie("submit",cookie2);



        //remCookie.setMaxAge(60*60*24);
        response.addCookie(remCookie2);
        response.sendRedirect("/cookie");

    }
}
