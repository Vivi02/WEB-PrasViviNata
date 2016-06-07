<%-- 
    Document   : Home
    Created on : 26-May-2016, 17:53:20
    Author     : Vivi Siska
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="bean.MataKuliah"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.DataBaseConnection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  bean.DataBaseConnection conn = new bean.DataBaseConnection();%>
<%  bean.Query q = new bean.Query();%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sanata Dharma Yogtakarta</title>
        <link rel="stylesheet" type="text/css" href="style2.css">
    </head>
    <body background = "Images/BGTransparan.JPG">
        <!--<link rel="stylesheet" type="text/css" href="style2.css">-->
        <div><ul>
                <table>
                    <tr>
                        <td><a href="FirstServlet"><img src="Images/4.png"></a></td> 
                    </tr>
                    <tr><td>Home</td></tr>
                    <tr>
                        <td><a href="LoginMHS.jsp"><img src="Images/login12.jpg"></a></td>
                    </tr>
                    <tr><td>Mahasiswa</td></tr>
                    <tr>
                        <td><a href="adminLogin.jsp"><img src="Images/1.jpg"></a></td>
                    </tr>
                    <tr><td>Admin</td></tr>
                </table>
            </ul>
        </div>
        <!--<center>--> 
        <h1>Teknik Informatika</h1>
        <div id="section">
            <h1 id="headtext">Daftar Matakuliah</h1>
            <!--<h1 id="headtext">Daftar Matakuliah</h1>-->
            <div text-align="center";>
                <center>
                    <table border="1">
                        <!--<tbody>-->
                        <tr bgcolor = "tan">
                            <td align="center">Kode Matakuliah</td>
                            <td align="center">Nama Matakuliah</td>
                            <td align="center">Waktu Kuliah</td>
                            <td align="center">SKS</td>
                            <td align="center">Dosen Pengampu</td>
                            <td align="center">Tarif</td>
                            <td align="center">Ruang</td>
                        </tr>

                        <%
                            ArrayList<MataKuliah> mk = (ArrayList<MataKuliah>) request.getAttribute("makul");
                            int a = 0;
                            for (int i = 0; i < mk.size(); i++) {
                                a++;

                                if (a % 2 == 0) {
                        %>

                        <tr bgcolor="wheat">
                            <% } else {%>

                        <tr bgcolor="white">
                            <% }%>
                            <td>
                                <%out.println(mk.get(i).getKodeMakul());%>
                            </td>
                            <td>
                                <%out.println(mk.get(i).getNamaMakul());%>
                            </td>
                            <td>
                                <%out.println(mk.get(i).getWaktu());%>
                            </td>
                            <td>
                                <%out.println(mk.get(i).getSks());%>
                            </td>
                            <td>
                                <%out.println(mk.get(i).getDosen());%>
                            </td>
                            <td>
                                <%out.println(mk.get(i).getTarif());%>
                            </td>
                            <td>
                                <%out.println(mk.get(i).getRuang());%>
                            </td>
                        </tr>

                        <%
                            }
                        %>
                        <!--</tbody>-->
                    </table>
                </center>
            </div>
            <center>
                <br><br><br>
                <%
                    DateFormat df = DateFormat.getDateInstance(DateFormat.LONG);
                    String sd = df.format(new Date());
                %>
                <!--<br><br><br><br>-->
                <hr><%=sd%><h4>Project Web PrassViviNata - KRS (Pemograman Basis Web)</h4><hr>
            </center>
        </div>
    </body>
</html>

