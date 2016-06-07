package coreservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        try {
            session.removeAttribute("nim1");
            session.invalidate();
            request.getRequestDispatcher("FirstServlet").forward(request, response);
        } catch (Exception sqle) {
            System.out.println("error UserValidateServlet message : " + sqle.getMessage());
            System.out.println("error UserValidateServlet exception : " + sqle);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
