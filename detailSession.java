package coreservlet;

import bean.MataKuliah;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class detailSession extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        bean.Query q = new bean.Query();
        HttpSession session = request.getSession(true);

        String nimDetail = request.getParameter("nimD");
        session.setAttribute("nimDD", nimDetail);

//        String nimDetail = request.getParameter("nimCari");
//        session.setAttribute("nimDD", nimDetail);
        q.closeConn();
        request.getRequestDispatcher("/detail.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
