<%-- 
    Document   : detail
    Created on : 05-Jun-2016, 22:49:50
    Author     : Vivi Siska
--%>
<%@page import="bean.MataKuliah"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.DataBaseConnection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% bean.DataBaseConnection conn = new bean.DataBaseConnection();%>
<% bean.Query q = new bean.Query();%>
<% int i;%>
<% HttpSession ses = request.getSession(true);%>
<%! Statement statement;%>
<%! ResultSet result;
    Connection connection;
    DataBaseConnection database = new DataBaseConnection();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nimm = (String) session.getAttribute("detail");
        %>
        <table border="1px solid black">
            <h2 align="center">Daftar Matakuliah yang Dipilih</h2>
            <tr  bgcolor="wheat">
                <td align="center">Kode  Matakuliah</td>
                <td align="center">Nama Matakuliah</td>
                <td align="center">Waktu Kuliah</td>
                <td align="center">SKS</td>
                <td align="center">Dosen Pengampu</td>
                <td align="center">Tarif</td>
                <td align="center">Ruang</td>
                <td align="center">Delete</td>

            </tr>
            <% String query2 = "SELECT k.nim, k.kode_makul, m.nama_makul, m.waktu, m.sks, m.pengampu, m.tarif, m.ruang "
                        + " FROM krs k "
                        + " left join makul m "
                        + " on m.kode_makul = k.kode_makul where k.nim = '" + nimm + "'";
                //                (ArrayList query3 =  q.tableKRS(uname1);
                statement = conn.getConnection().createStatement();
                result = statement.executeQuery(query2);

                int jmlhSks = 0;
                while (result.next()) {
                    int a = 0;
                    a++;
                    if (a % 2 == 0) {
            %>
            <tr bgcolor="white">

                <% } else {
                %>
            <tr bgcolor="#E0FFF">

                <%                                }
                %>

                <td>
                    <% //out.println(mk.get(i).getKodeMakul());%>
                    <%out.println(result.getString("kode_makul"));%>
                </td>
                <td>
                    <% //out.println(mk.get(i).getNamaMakul());%>
                    <%out.println(result.getString("nama_makul"));%>
                </td>
                <td>
                    <% //out.println(mk.get(i).getWaktu());%>
                    <%out.println(result.getString("waktu"));%>
                </td>
                <td>
                    <% //out.println(mk.get(i).getSks());%>
                    <%out.println(result.getString("sks"));
                        int jml1 = Integer.parseInt(result.getString("sks"));
                        jmlhSks = jmlhSks + jml1;
//                        mh.setTotSkS(String.valueOf(jmlhSks));
                    %>
                </td>
                <td>
                    <% //out.println(mk.get(i).getDosen());%>
                    <%out.println(result.getString("pengampu"));%>
                </td>
                <td>
                    <% //out.println(mk.get(i).getTarif());%>
                    <%out.println(result.getString("tarif"));%>
                </td>
                <td>
                    <% //out.println(mk.get(i).getRuang());%>
                    <%out.println(result.getString("ruang"));%>
                </td>
                <td>

            <center>
                <button type="submit" value="<%result.getString("kode_makul");%>" name="delete">Delete</button>
            </center>
        </td>
    </tr>                        

    <%
        }
    %>
    <tr><td></td><td></td><td>Jumalah </td><td><%out.println(jmlhSks);%></td></tr>
</table>
</body>
</html>
