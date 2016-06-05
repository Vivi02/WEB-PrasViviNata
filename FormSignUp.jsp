<%-- 		 +
 -    Document   : FormSignUp		
 -    Created on : May 15, 2016, 19:48:09 PM		
 -    Author     : Natalia 		
 --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Sign Up</title>
    </head>
    <body background = "BGTransparan.JPG">
        <div>
            <center>
                <img src="LOGOUNIVERSITASSANATADHARMA2.png">
                <table>

                    <tr><td style="font-size: 30pt;"><b>Sistem Informasi Akademik </b></td></tr>
                </table>

            </center>
        </div>
        <h1 align="center">SIGN UP FIRST</h1>
        <form action="SignUpProcess.jsp" method="post">
            <table align="center">
                <tr>
                    <td width="75">Full Name</td>
                    <td width="10">:</td>
                    <td colspan="4"><input type="text" name="name" size="63"></td>
                </tr>
                <tr>
                    <td width="75">Email</td>
                    <td width="10">:</td>
                    <td colspan="4"><input type="text" name="imil" size="63"></td>
                </tr>
                <tr>
                    <td width="75">Pembimbing</td>
                    <td width="10">:</td>
                    <td colspan="4"><input type="text" name="dosen" size="63"></td>
                </tr>
                <tr>
                    <td width="75">IPS</td>
                    <td width="22">:</td>
                    <td ><input type="text" name="ips"></td>
                    <td width="75">IPK</td>
                    <td width="22">:</td>
                    <td ><input type="text" name="ipk"></td>
                </tr>
                <tr>
                    <td width="75">Password</td>
                    <td width="10">:</td>
                    <td ><input type="password" name="password"></td>
                    <td width="75"> Retype</td>
                    <td width="10">:</td>
                    <td ><input type="password" name="password2"></td>
                </tr>
                <tr>
                    <td colspan="3"><input type="submit" name="Submit" value="Submit"></td>
                    <td colspan="3"><input type="reset" name="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
