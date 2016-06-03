<%-- 
    Document   : SignInProcess
    Created on : 25-May-2016, 20:31:39
    Author     : Imanuel demi prastyo
--%>

<%@page import="bean.Mahasiswa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    bean.DataBaseConnection conn = new bean.DataBaseConnection();
    bean.Mahasiswa get = new bean.Mahasiswa();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In Process</title>
    </head>
    <body>
        <%@page errorPage="ErrorPage.jsp" %>
        <%
            try {
                get.setNim(request.getParameter("nim"));
                get.setPassword(request.getParameter("password"));;

                String query = "select * from mahasiswa";
                java.sql.Statement statement = conn.getConnection().createStatement();
                java.sql.ResultSet result = statement.executeQuery(query);

                String nim = null, password = null;
                boolean cek = false;
                while (result.next()) {
                    nim = result.getString("nim");
                    password = result.getString("password");
//                    System.out.println("nim muncul " + get.getNim());

                    if (get.getNim().equals(nim) && get.getPassword().equals(password)) {
                        cek = true;
                        break;

                    } else {
                        continue;
                    }
                }

                if (cek == false) {
                    throw new Exception("Nim and Password Invalid");
                } else {
                    session.setAttribute("nim1", nim);
//                    System.out.println("Masuk sini ");
                    response.sendRedirect("nimS");
                }
                statement.close();
            } catch (Exception ex) {
                out.println("message: " + ex.getMessage());
            }
        %>
    </body>
</html>
