<%-- 
    Document   : AdminHome
    Created on : 04-Jun-2016, 23:03:22
    Author     : Vivi Siska
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String Admin = (String) session.getAttribute("Admin");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
        <link rel="stylesheet" type="text/css" href="style1.css">
    </head>
    <body background="Images/bAdmin.jpg">
        <div>
            <ul>
                <table>
                    <tr>
                        <td><h4>Admin : <%=Admin%></h4></td>
                    </tr>
                </table>
                <hr>
                <table>
                    <tr>
                        <td><marquee style="font-size: 12px; font-family: consolas;">Mahasiswa</marquee></td>
                    </tr>
                    <tr>
                        <td><a href="FormSignUp.jsp"><img src="Images/m2.jpg"></a></td>
                        <td><a href="viewData.jsp"><img src="Images/viewdata.jpg"></a></td>
                    </tr>

                </table>
                <br><br><hr><hr>
                <table>
                    <tr>
                        <td><marquee style="font-size: 12px; font-family: consolas;">Mata Kuliah</marquee></td>
                    </tr>
                    <tr></tr><tr></tr>
                    <tr>            
                        <td align="center"><a href="AddMK.jsp"><img src="Images/mk.jpg"></a></td>
                    </tr>
                </table>
                <br><br><hr><hr>

                <center>

                    <h4><a href="LogoutAdmin"><img src="Images/logout-icon.png"></a></h4>

                </center>

            </ul>
        </div>
    </body>
</html>
