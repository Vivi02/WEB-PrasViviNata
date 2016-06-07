   Document   : adminLogin
    Created on : Jun 1, 2016, 11:52:59 PM
    Author     : Natalia

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    bean.DataBaseConnection conn = new bean.DataBaseConnection();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <center><img alt='logo' src='Images/LOGOUNIVERSITASSANATADHARMA2.png'></center>
    <body background="Images/BGTransparan.JPG">
    <center>
        <div style=" height : 638px; width : 320px;float">
            <h1 align="center">Admin</h1>
            <form action="adminLogin.jsp">
                <fieldset>
                    <table align="center">
                        <tr>
                            <td width="100" style="font-size: 16pt"><b>Username</b></td>
                            <td width="10" style="font-size: 16pt">:</td>
                            <td colspan="2"><input type="text" name="username" style="height: 25px; font-size: 16pt"></td>
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
    </body>
    <body>
        <%@page errorPage="ErrorPage.jsp" %>
        <%
            try {
                String user = request.getParameter("username");
                String pass = request.getParameter("password");

                String username = "PrasViviNata", password = "web";
                boolean cek = false;
                if (user.equals(username) && pass.equals(password)) {
                    cek = true;
                    session.setAttribute("Admin", username);
                    response.sendRedirect("AdminHome.jsp");
                } else {
                    throw new Exception("Username and Password Invalid");
                }
            } catch (Exception ex) {
                out.println("message: " + ex.getMessage());
            }
        %>
</center>
</body>

</html>

