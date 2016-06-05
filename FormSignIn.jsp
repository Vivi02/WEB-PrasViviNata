<%-- 
    Document   : FormSignIn
    Created on : 15-May-2016, 20:50:15
    Author     : Imanuel demi prastyo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Sign In</title>
    </head>
    <center><img alt='logo' src='LOGOUNIVERSITASSANATADHARMA2.png'></center>
    <body background="BGTransparan.JPG">
    <center>
        <legend>
            <h1>Sign In Please</h1>
        </legend>
        <div style=" height : 638px; width : 320px;float">
            <form action="SignInProcess.jsp" method="post">
                <fieldset>
                    <table>
                        <tr>
                            <td width="100" style="font-size: 16pt"><b>Nim</b></td>
                            <td width="10" style="font-size: 16pt">:</td>
                            <td colspan="2"><input type="text" name="nim" style="height: 25px; font-size: 16pt"></td>

                        </tr>              
                        <tr>
                            <td width="100" style="font-size: 16pt"><b>Password</b></td>
                            <td width="10" style=" font-size: 16pt">:</td>
                            <td colspan="2"><input type="password" name="password" style="height: 25px; font-size: 16pt"></td>
                        </tr>
                        <tr>
                            <td align="right"><input type="submit" value="SIGN IN" style="height: 30px; font-size: 15pt"/></td>
                            <td width="10"></td>
                            <td align="left"><input type="reset" value="RESET" style="height: 30px; font-size: 15pt"></td>
                        </tr>                
                    </table>
                </fieldset>
            </form>
        </div>
    </center>
</body>
</html>

