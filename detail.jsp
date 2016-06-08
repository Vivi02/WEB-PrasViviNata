<%-- 
    Document   : detail
    Created on : Jun 04, 2016, 22:49:50
    Author     : Natalia
--%>
<%@page import="bean.MataKuliah"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.DataBaseConnection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% bean.DataBaseConnection conn = new bean.DataBaseConnection();%>
<% bean.Query q = new bean.Query();%>
<% int i;%>
<% session = request.getSession(true);%>
<%! Statement statement;%>
<%! ResultSet result;
    Connection connection;
    DataBaseConnection database = new DataBaseConnection();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style6.css">
    </head>
    <body background="Images/BGTransparan.JPG">
        <%
            String viewnim = (String) session.getAttribute("nimDD");
        %>
    <center>
        <div id="section">
            <table border="1px solid black">
                <h2 align="center">Detail Mahasiswa</h2>
                <tr  bgcolor="tan">
                    <td align="center">Kode  Matakuliah</td>
                    <td align="center">Nama Matakuliah</td>
                    <td align="center">Waktu Kuliah</td>
                    <td align="center">SKS</td>
                    <td align="center">Dosen Pengampu</td>
                    <td align="center">Tarif</td>
                    <td align="center">Ruang</td>
                </tr>
                <%
                    int jmlhSks = 0;
                    MataKuliah[] mk = q.tableKRS1(viewnim);
                    out.print("Data Setail Mahasiswa Nim " + viewnim);
                    int a = 0;
                    for (int j = 0; j < mk.length; j++) {
                        a++;
                        if (a % 2 == 0) {
                %>
                <tr bgcolor="tan">
                    <% } else {%>

                <tr bgcolor="wheat">
                    <% }%>

                    <td>
                        <%out.println(mk[j].getKodeMakul());%>
                    </td>
                    <td>
                        <%out.println(mk[j].getNamaMakul());%>
                    </td>
                    <td>
                        <%out.println(mk[j].getWaktu());%>
                    </td>
                    <td>
                        <%out.println(mk[j].getSks());
                            int jml1 = Integer.parseInt(mk[j].getSks());
                            jmlhSks = jmlhSks + jml1;
                        %>

                    </td>
                    <td>
                        <%out.println(mk[j].getDosen());%>
                    </td>
                    <td>
                        <%out.println(mk[j].getTarif());%>
                    </td>
                    <td>
                        <%out.println(mk[j].getRuang());%>
                    </td>
                    <!--</tr>-->                        
                    <%
                        }
                    %>
                <tr><td></td><td></td><td>Jumlah</td><td><%out.println(jmlhSks);%></td></tr>
            </table>
            <center>
                <br><br>
                <a href="view.jsp">Back <<<<</a>
            </center>
        </div>
    </center>

</body>
</html>
