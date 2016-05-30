<%-- 
    Document   : Home
    Created on : 18-May-2016, 15:33:40
    Author     : VIVI SISKA
--%>

<%@page import="bean.MataKuliah"%>
<%@page import="bean.Mahasiswa"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.DataBaseConnection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  bean.DataBaseConnection conn = new bean.DataBaseConnection();%>
<%  bean.Query q = new bean.Query();%>
<%! Statement statement;%>
<%! ResultSet result;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sanata Dharma Yogtakarta</title>
    </head>
    <body>
        <table>
            <tr>
                <td><a href="FirstServlet"><img src="4.png"></a></td>
                <td></td><td></td><td></td>
                <td><a href="FormSignIn.jsp"><img src="login12.jpg"></a></td>
                <td></td><td></td><td></td>
                <td><a href="FormSignUp.jsp"><img src="homered.PNG"></a></td>
            </tr>
        </table>
        <hr>
    <center>
        <table border="1px solid black">
            <h2 align="center">Daftar Matakuliah</h2>
            <tr bgcolor = "white">
                <td align="center">Kode  Matakuliah</td>
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

            <tr bgcolor="lightgrey">
                <% } else {%>

            <tr bgcolor="pink">
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
        </table>
    </center>
</body>
</html>
