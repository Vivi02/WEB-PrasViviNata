<%-- 
    Document   : KRS
    Created on : 01-Jun-2016, 22:03:20
    Author     : Vivi Siska
--%>

<%@page import="bean.MataKuliah"%>
<%@page import="bean.Mahasiswa"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.DataBaseConnection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% bean.DataBaseConnection conn = new bean.DataBaseConnection();%>
<% bean.Query q = new bean.Query();%>
<% int i;%>
<% HttpSession ses = request.getSession(true);%>
<%! String nim, user, nama, dosen, email, ipk, ips, maxSks;%>
<%! Statement statement;%>
<%! ResultSet result;
    Connection connection;
    DataBaseConnection database = new DataBaseConnection();
//    PreparedStatement statement;


%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KRS</title>
        <style>
            *{ 
                margin:0;
                padding:0; 
                font-family:calibri, ‚segoe ui‛, arial, tahoma, sans-serif; }


            #header { 
                height : 70px; 
                width : 100%; 
                padding:5px; 
                margin : 20px 0;
                overflow : hidden; } 

            #header img{ 
                width:130px ;
                height:35px ; 
            }

            nav ul ul {
                display: none;
            }

            nav ul li:hover > ul {
                display: block;
            }
            nav ul {
                background: wheat;
                padding: 0;
                list-style: none;
                position: relative;
                display: inline-table;
            }
            nav ul:after {
                content: ""; clear: both; display: block;
            }
            nav ul li {
                float: left;
            }
            nav ul li:hover {
                background: #4b545f;
            }
            nav ul li:hover a {
                color: #fff;
            }

            nav ul li a {
                display: block; padding: 25px 40px;
                color: #757575; text-decoration: none;
            }
            nav ul ul {
                border-radius: 0px; padding: 0;
                position: absolute; top: 100%;
            }
            nav ul ul li {
                float: none;
                border-top: 1px solid #6b727c;
                border-bottom: 1px solid #575f6a;
                position: relative;
            }
            nav ul ul li a {
                padding: 15px 40px;
                color: #fff;
            } 
            nav ul ul li a:hover {
                background: #4b545f;
            }

            nav ul ul ul {
                position: absolute; left: 100%; top:0;
            }
            th{
                border: 1px solid black;
                padding: 5px;
            }
            table {
                width: 900px;
            }

            td{
                border: 1px black;
            }
        </style>
    </head>
    <body background="BGTransparan.JPG">
        <nav>
            <ul>
                <!--<li><a href="FirstServlet">Home</a></li>--> 
                <!--<li><a href="bio">Revisi KRS</a></li>-->
                <li><a href="nimS">Kartu Rencana Studi</a></li>
                <li><a href="logoutServlet">LogOut</a></li>
            </ul>
        </nav>
        <%
            String uname1 = (String) session.getAttribute("nim2");
            ArrayList<Mahasiswa> mhs = q.biomsh(uname1);
        %>
    <center>
        <table border ="5px solid black">
            <tr bgcolor="tan">
                <th><h2>KARTU RENCANA STUDI</h2></th>
            </tr>
            <tr>
                <td>
                    <!--<fieldset>-->
                    <table border="1px solid black">
                        <tr>
                        <legend><td><h3>Data Mahasiswa</h3></td></legend>
            </tr>
            <tr>
                <td>
                    <table border="1px">
                        <%
                            for (i = 0; i < mhs.size(); i++) {
                        %>

                        <% // System.out.println("email asli" + mhs.get(i).getEmail());
                        %>
                        <tr>                                        
                            <td>NIM</td>
                            <td><input type="text" name="nim" size="50" value="<%out.println(mhs.get(i).getNim());%>" disabled="disabled"></td>
                            <td>IPK</td>
                            <td><input type="text" name="ipk"value="<%out.println(mhs.get(i).getIpk());%>" disabled="disabled"></td>
                        </tr>
                        <tr>
                            <td>Nama Mahasiswa</td>
                            <td><input type="text" name="name" size="50" value="<%out.println(mhs.get(i).getNama());%>" disabled="disabled"></td>
                            <td>IPS</td>
                            <td><input type="text" name="ips" value="<%out.println(mhs.get(i).getIps());%>" disabled="disabled"></td>   
                        </tr>
                        <tr>
                            <td>Dosen Pembimbing</td>
                            <td><input type="text" name="name" size="50" value="<%out.println(mhs.get(i).getDosen());%>" disabled="disabled"></td>
                            <td>SKS Max</td>
                            <td><input type="text" name="sks" value="<%out.println(mhs.get(i).getSKS());%>" disabled="disabled"></td>
                        </tr>
                        <tr>
                            <td>E-mail</td>
                            <td><input type="text" name="email" size="50" value="<%out.println(mhs.get(i).getEmail());%>" disabled="disabled"></td>

                        </tr>
                        <% }%>
                    </table>
                    <!--</fieldset>-->
                </td>
            </tr>
        </table>
        <table border="1px solid black">
            <tr> 
                <td>
                    <b>Daftar Mata Kuliah</b>   
                </td>
                <td>
                    <form action="coba1" method="post">
                        <select name="krs">
                            <%
                                String query1 = "select * from makul";
                                statement = conn.getConnection().createStatement();
                                result = statement.executeQuery(query1);
                                while (result.next()) {
                            %>
                            <option value="<%=result.getString("kode_makul")%>" selected> <%out.print(result.getString("kode_makul") + " "
                                        + result.getString("nama_makul") + " "
                                        + result.getString("waktu") + " "
                                        + result.getString("sks") + " "
                                        + result.getString("pengampu") + " "
                                        + result.getString("tarif") + " "
                                        + result.getString("ruang"));
                                %>
                            </option>
                            <% } %>
                        </select>  
                        <input type="submit" value="Submite">
                    </form>
                </td>
            </tr>
        </table>
        <%

//           q.insertKRS(uname1,);
        %>
        <table border="1px solid black">
            <form action="delete" method="get">
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
                            + " on m.kode_makul = k.kode_makul where k.nim = '" + uname1 + "'";

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
            </form>
        </table>
    </center>
</body>
</html>
