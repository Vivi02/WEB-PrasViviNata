<%-- 
 +    Document   : FormSignUp
 +    Created on : 15-May-2016, 19:10:54
 +    Author     : Natalia Ari Chrismiyati
--%>
<%@page import="bean.Mahasiswa"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.DataBaseConnection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  bean.DataBaseConnection conn = new bean.DataBaseConnection();%>
<%  bean.Query q = new bean.Query();%>
<% session = request.getSession(true);%>
<%! Statement statement;%>
<%! ResultSet result;
    Connection connection;
    DataBaseConnection database = new DataBaseConnection();
//    PreparedStatement statement;
    Mahasiswa mh = new Mahasiswa();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Mahasiswa</title>
        <link rel="stylesheet" type="text/css" href="style3.css">
    </head>
    <body background = "Images/BGTransparan.JPG">
        <div><ul>
                <center>
                    <img src="Images/LOGOUNIVERSITASSANATADHARMA2.png">
                    <table>   
                        <tr><td style="font-size: 12pt;"><b>Sistem Informasi Akademik </b></td></tr>
                    </table>
                    <h1 align="center" style="font-size: 10pt;">Menambah Mahasiswa</h1>
                    <form action="SignUpProcess.jsp" method="post">
                        <table align="center">
                            <tr>
                                <td width="75">Full Name</td>
                                <td width="10">:</td>
                                <td colspan="4"><input type="text" name="nama" size="40"></td>
                            </tr>
                            <tr>
                                <td width="75">Email</td>
                                <td width="10">:</td>
                                <td colspan="4"><input type="text" name="email" size="40"></td>
                            </tr>
                            <tr>
                                <td width="75">Pembimbing</td>
                                <td width="10">:</td>
                                <td colspan="4"><input type="text" name="dosen" size="40"></td>
                            </tr>
                            <tr>
                                <td width="75">IPS</td>
                                <td width="22">:</td>
                                <td ><input type="text" name="ips" size="7"></td>
                                <td width="75">IPK</td>
                                <td width="22">:</td>
                                <td ><input type="text" name="ipk" size="10"></td>
                            </tr>
                            <tr>
                                <td width="75">Password</td>
                                <td width="10">:</td>
                                <td ><input type="password" name="password" size="7"></td>
                                <td width="75"> Retype</td>
                                <td width="10">:</td>
                                <td ><input type="password" name="password2" size="10"></td>
                            </tr>
                            <tr>
                                <td colspan="3"><input type="submit" name="Submit" value="Submit"></td>
                                <td colspan="3"><input type="reset" name="Reset"></td>
                            </tr>
                        </table>
                    </form>
                    <table>
                        <br><br><br><br><br><br><hr>
                        <tr>
                            <td><a href="AdminHome.jsp">Back To Admin Home <<< </a></td>
                        </tr>
                    </table>
                </center>
            </ul>
        </div>
        <!--<h1>Teknik Informatika</h1>-->
        <div id="section">
            <h1 id="headtext">Daftar Mahasiswa TI</h1>
            <div text-align="center";>
                <center>
                    <table border="1">
                        <!--<tbody>-->
                        <tr bgcolor = "tan">
                            <td align="center">Nim</td>
                            <td align="center">Nama</td>
                            <td align="center">Dosen Pembimbing</td>
                            <td align="center">Email</td>
                            <td align="center">Ips</td>
                            <td align="center">Ipk</td>
                            <td align="center">Jumlah Sks</td>
                        </tr>
                        <!--<form action="delete" method="get">-->
                        <% String query2 = "select *from mahasiswa";
                            //                (ArrayList query3 =  q.tableKRS(uname1);
                            statement = conn.getConnection().createStatement();
                            result = statement.executeQuery(query2);

                            int jmlhSks = 0;
                            while (result.next()) {
                        %>
                        <tr >
                            <td>
                                <%out.println(result.getString("nim"));%>
                            </td>
                            <td>
                                <%out.println(result.getString("nama"));%>
                            </td>
                            <td>
                                <%out.println(result.getString("dsn_pemb"));%>
                            </td>
                            <td>
                                <%out.println(result.getString("email"));
                                %>
                            </td>
                            <td>
                                <%out.println(result.getString("ips"));%>
                            </td>
                            <td>
                                <%out.println(result.getString("ipk"));%>
                            </td>
                            <td>
                                <%out.println(result.getString("sks"));%>
                            </td>
                        </tr>                        
                        <%
                            }
                        %>
                    </table>
                </center>
            </div>
        </div>

    </body>
</html>
