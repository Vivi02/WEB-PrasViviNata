package coreservlet;

import bean.Query;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Vivi Siska
 */
public class Ser_Krs extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Query q = new Query();
        String kode = request.getParameter("krs");
        HttpSession session = request.getSession();
        String unim = (String) session.getAttribute("nim2");
        try {
            q.insertKRS(unim, kode);
            q.closeConn();
            response.sendRedirect("KRS.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Ser_Krs.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Ser_Krs.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
