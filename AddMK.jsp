<%-- 
    Document   : AddMK
    Created on : 05-Jun-2016, 11:54:18
    Author     : Imanuel demi prastyo
--%>

<%@page import="bean.MataKuliah"%>
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
    MataKuliah mk = new MataKuliah();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Mata Kuliah</title><link rel="stylesheet" type="text/css" href="style4.css">
    </head>
    <body background = "Images/BGTransparan.JPG">
        <div><ul>
                <center>
                    <img src="Images/LOGOUNIVERSITASSANATADHARMA2.png">
                    <h1 align="center" style="font-size: 10pt;">Menambah Mata Kuliah</h1>
                    <form action="ProsesAddMK.jsp" method="post">
                        <table align="center">
                            <tr>
                                <td width="75">Kode MK</td>
                                <td width="10">:</td>
                                <td colspan="4"><input type="text" name="kd_mk" size="40"></td>
                            </tr>
                            <tr>
                                <td width="75">Nama MK</td>
                                <td width="10">:</td>
                                <td colspan="4"><input type="text" name="nm_mk" size="40"></td>
                            </tr>
                            <tr>
                                <td width="75">Hari / Jam</td>
                                <td width="10">:</td>
                                <td colspan="4"><input type="text" name="waktu" size="40"></td>
                            </tr>
                            <tr>
                                <td width="75">Sks</td>
                                <td width="22">:</td>
                                <td ><input type="text" name="sks" size="7"></td>
                                <td width="75">Dosen</td>
                                <td width="22">:</td>
                                <td ><input type="text" name="dsn_pemb" size="10"></td>
                            </tr>
                            <tr>
                                <td width="75">Tarif</td>
                                <td width="10">:</td>
                                <td ><input type="text" name="tarif" size="7"></td>
                                <td width="75"> Ruang</td>
                                <td width="10">:</td>
                                <td ><input type="text" name="ruang" size="10"></td>
                            </tr>
                            <tr>
                                <td colspan="3"><input type="submit" name="Submit" value="Submit"></td>
                                <td colspan="3"><input type="reset" name="Reset"></td>
                            </tr>
                        </table>
                        <table>
                            <br><br><br><br><br><hr>
                            <a href="AdminHome.jsp">Back To Admin Home <<< </a>
                        </table>
                    </form>
                </center>
            </ul>
        </div>

        <div id="section">
            <h1 id="headtext">Daftar Mata Kuliah TI</h1>
            <div text-align="center";>
                <center>
                    <table border="1">
                        <tr  bgcolor="wheat">
                            <td align="center">Kode  Matakuliah</td>
                            <td align="center">Nama Matakuliah</td>
                            <td align="center">Waktu Kuliah</td>
                            <td align="center">SKS</td>
                            <td align="center">Dosen Pengampu</td>
                            <td align="center">Tarif</td>
                            <td align="center">Ruang</td>
                        </tr>
                        <% String query2 = "select *from makul";
                            statement = conn.getConnection().createStatement();
                            result = statement.executeQuery(query2);

                            int jmlhSks = 0;
                            while (result.next()) {
                        %>
                        <tr >

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
