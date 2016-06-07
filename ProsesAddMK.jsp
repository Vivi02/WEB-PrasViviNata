<%-- 
    Document   : ProsesAddMK
    Created on : 05-Jun-2016, 12:05:24
    Author     : Imanuel demi prastyo
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="javax.management.RuntimeErrorException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    bean.DataBaseConnection conn = new bean.DataBaseConnection();
    bean.MataKuliah addMK = new bean.MataKuliah();
    bean.Query q = new bean.Query();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Process</title>
    </head>
    <body background="Images/BGTransparan.JPG">
        <%@page errorPage="ErrorPage.jsp" %>
        <%
            addMK.setKodeMakul(request.getParameter("kd_mk"));
            addMK.setNamaMakul(request.getParameter("nm_mk"));
            addMK.setWaktu(request.getParameter("waktu"));
            addMK.setSks(request.getParameter("sks"));
            addMK.setDosen(request.getParameter("dsn_pemb"));
            addMK.setTarif(request.getParameter("tarif"));
            addMK.setRuang(request.getParameter("ruang"));

            q.insertMK(addMK.getKodeMakul(), addMK.getNamaMakul(), addMK.getWaktu(), addMK.getSks(), addMK.getDosen(),
                    addMK.getTarif(), addMK.getRuang());
            q.closeConn();
//            response.sendRedirect("SuksesAdd.jsp");
%>
        
    <center>
        <div style=" height : 538px; width : 800px;float">
            <fieldset>
                <legend>
                    <td><h2>Information !!! Add Mata Kuliah Success</h2></td>
                </legend>
                <table border="1px">
                    <tr>
                        <td align="center">Kode Mata Kulah</td>
                        <td align="center">Nama Mata Kuliah</td>
                        <td align="center">Waktu</td>
                        <td align="center">Sks</td>
                        <td align="center">Dosen Pembimbing</td>
                        <td align="center">Tarif</td>
                        <td align="center">Ruang</td>
                    </tr>
                    <tr>
                        <td align="center"><%=addMK.getKodeMakul()%></td>
                        <td align="center"><%=addMK.getNamaMakul()%></td>
                        <td align="center"><%=addMK.getWaktu()%></td>
                        <td align="center"><%=addMK.getSks()%></td>
                        <td align="center"><%=addMK.getDosen()%></td>
                        <td align="center"><%=addMK.getTarif()%></td>
                        <td align="center"><%=addMK.getRuang()%></td>
                    </tr>
                </table>
                <!--<legend>-->
                <td><a href="AddMK.jsp">Back <<< </a></td>
                <!--</legend>-->
            </fieldset>
        </div>
        <%
            DateFormat df = DateFormat.getDateInstance(DateFormat.LONG);
            String sd = df.format(new Date());
        %>
        <hr><%=sd%><h4>Project Web PrassViviNata - KRS (Pemograman Basis Web)</h4><hr>
    </center>
</body>
</html>
