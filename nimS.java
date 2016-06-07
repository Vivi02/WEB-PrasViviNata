package coreservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Natalia Ari Chrismiyati
 */
public class nimS extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            bean.Query q = new bean.Query();
            HttpSession session = request.getSession();
            String uname = (String) session.getAttribute("nim1");
            session.setAttribute("nim2", uname);
            q.closeConn();
            response.sendRedirect("KRS.jsp");
        } catch (Exception ex) {
            Logger.getLogger(nimS.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
