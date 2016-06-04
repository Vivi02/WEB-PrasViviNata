

<%@page import="javax.management.RuntimeErrorException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    bean.DataBaseConnection conn = new bean.DataBaseConnection();
    bean.Mahasiswa insert = new bean.Mahasiswa();
    bean.Query q = new bean.Query();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Process</title>
    </head>
    <body>
        <%@page errorPage="ErrorPage.jsp" %>
        <%
            insert.setNim(insert.createNim());
            insert.setNama(request.getParameter("nama"));
            insert.setEmail(request.getParameter("email"));
            insert.setDosen(request.getParameter("dosen"));
            insert.setIps(request.getParameter("ips"));
            insert.setIpk(request.getParameter("ipk"));
            insert.setPassword(request.getParameter("password"));

            String pass2 = null;
            pass2 = request.getParameter("password2");

            if (!insert.getPassword().equals(pass2)) {
                throw new Exception("Password Not Matches");
            }

            q.insertMahasiswa(insert.getNim(), insert.getNama(), insert.getEmail(), insert.getDosen(),
                     insert.getIps(), insert.getIpk(), insert.getPassword());
            q.closeConn();
            response.sendRedirect("FormSignIn.jsp");
        %>
    </body>
</html>
