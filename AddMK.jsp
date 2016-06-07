<%-- 
    Document   : AddMK
    Created on : 05-Jun-2016, 11:54:18
    Author     : Imanuel demi prastyo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Mata Kuliah</title>
    </head>
    <body background = "Images/BGTransparan.JPG">
        <div>
            <center>
                <img src="Images/LOGOUNIVERSITASSANATADHARMA2.png">
                <br><br><br><br>
            </center>
        </div>
        <form action="ProsesAddMK.jsp" method="post">
            <table align="center">
                <tr>
                    <td width="75">Kode MK</td>
                    <td width="10">:</td>
                    <td colspan="4"><input type="text" name="kd_mk" size="63"></td>
                </tr>
                <tr>
                    <td width="75">Nama MK</td>
                    <td width="10">:</td>
                    <td colspan="4"><input type="text" name="nm_mk" size="63"></td>
                </tr>
                <tr>
                    <td width="75">Hari / Jam</td>
                    <td width="10">:</td>
                    <td colspan="4"><input type="text" name="waktu" size="63"></td>
                </tr>
                <tr>
                    <td width="75">Sks</td>
                    <td width="22">:</td>
                    <td ><input type="text" name="sks"></td>
                    <td width="75">Dosen</td>
                    <td width="22">:</td>
                    <td ><input type="text" name="dsn_pemb"></td>
                </tr>
                <tr>
                    <td width="75">Tarif</td>
                    <td width="10">:</td>
                    <td ><input type="text" name="tarif"></td>
                    <td width="75"> Ruang</td>
                    <td width="10">:</td>
                    <td ><input type="text" name="ruang"></td>
                </tr>
                <tr>
                    <td colspan="3"><input type="submit" name="Submit" value="Submit"></td>
                    <td colspan="3"><input type="reset" name="Reset"></td>
                </tr>
            </table>
        </form>
        <br><br><br><br><br><br><br><br><hr>
        <a href="AdminHome.jsp">Back To Admin Home <<< </a>
    </body>
</html>
