<%-- 
    Document   : view
    Created on : 05-Jun-2016, 12:50:41
    Author     : Imanuel demi prastyo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.MataKuliah"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.DataBaseConnection"%>
<%@page import="java.sql.*" %>
<%@page import="bean.Mahasiswa"%>

<% bean.DataBaseConnection conn = new bean.DataBaseConnection();%>
<% bean.Query q = new bean.Query();%>
<% HttpSession ses = request.getSession(true);%>
<%--<%! String nim, user, nama, dosen, email, ipk, ips, maxSks;%>--%>
<%! Statement statement;%>
<%! ResultSet result;
    Connection connection;
    DataBaseConnection database = new DataBaseConnection();
//    PreparedStatement statement;
    Mahasiswa mhs1 = new Mahasiswa();

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Mhs Krs</title>
        <link rel="stylesheet" type="text/css" href="style6.css">
    </head>
    <body background="Images/BGTransparan.JPG">
    <center>
        <%
            String viewnim = (String) session.getAttribute("nimDD");
        %>
        <form action="detailSession" method="post">
            <div id="section">
                <table border="1px solid black">
                    <!--<form action="delete" method="get">-->
                    <h2 align="center">Daftar Mahasiswa KRS</h2>
                    <tr  bgcolor="wheat">
                        <td align="center">Nim</td>
                        <td align="center">Nama Mahasiswa</td>
                        <td align="center">Detail</td>
                    </tr>

                    <% String query = "select distinct nim from krs order by nim";
                        statement = conn.getConnection().createStatement();
                        result = statement.executeQuery(query);

                        while (result.next()) {
                            int a = 0;
                            a++;
                            if (a % 2 == 0) {

                    %>
                    <tr bgcolor="wheat">

                        <% } else {
                        %>
                    <tr bgcolor="tan">

                        <%
                            }
                        %>
                        <td>
                            <%out.println(result.getString("nim"));%>
                        </td>
                        <td>
                            <%=q.getData("NAMA", result.getString(1))%>
                        </td>
                        <td>
                    <center>
                        <button type="submit" value="<%=result.getString("nim")%>" name="nimD">Lihat Detail <<<<</button>
                    </center>
                    </td>
                    </tr>                        
                    </form>
                    <%
                        }
                    %>
                </table>
                <center>
                    <br><br><br><br>
                    <a href="AdminHome.jsp">Back Admin Home<<<<</a>
                </center>
            </div>
    </center>
</body>
</html>
