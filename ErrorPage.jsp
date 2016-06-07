<%-- 
    Document   : ErrorPage
    Created on : May 21, 2016, 18:02:20 PM    Author     : Natalia Ari Chrismiyati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <%@page isErrorPage="true" %>
    <center>
        <h1><B><I><U>ERROR PAGE</U></I></B></h1>
        <h2><I><%= exception.getMessage() %></I></h2>
    </center>
    </body>
</html>