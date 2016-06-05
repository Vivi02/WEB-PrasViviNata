<%-- 
    Document   : LoginMHS
    Created on : 15-May-2016, 20:50:15
    Author     : Imanuel demi prastyo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    bean.DataBaseConnection conn = new bean.DataBaseConnection();
    bean.Mahasiswa get = new bean.Mahasiswa();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Sign In</title>
    </head>
    <center><img alt='logo' src='LOGOUNIVERSITASSANATADHARMA2.png'></center>
    <body background="BGTransparan.JPG">
    <center>
        <legend>
            <h1>Sign In Please</h1>
        </legend>
        <div style=" height : 638px; width : 320px;float">
            <form action="LoginMHS.jsp" >
                <fieldset>
                    <table>
                        <tr>
                            <td width="100" style="font-size: 16pt"><b>Nim</b></td>
                            <td width="10" style="font-size: 16pt">:</td>
                            <td colspan="2"><input type="text" name="nim" style="height: 25px; font-size: 16pt"></td>

                        </tr>              
                        <tr>
                            <td width="100" style="font-size: 16pt"><b>Password</b></td>
                            <td width="10" style=" font-size: 16pt">:</td>
                            <td colspan="2"><input type="password" name="password" style="height: 25px; font-size: 16pt"></td>
                        </tr>
                        <tr>
                            <td align="right"><input type="submit" value="SIGN IN" style="height: 30px; font-size: 15pt"/></td>
                            <td width="10"></td>
                            <td align="left"><input type="reset" value="RESET" style="height: 30px; font-size: 15pt"></td>
                        </tr>                
                    </table>
                </fieldset>
            </form>
        </div>
    </center>
</body>
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

