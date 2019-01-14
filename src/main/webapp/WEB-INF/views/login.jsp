<%-- 
    Document   : login
    Created on : Dec 10, 2018, 3:31:28 PM
    Author     : Mihailo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <p><font color="red">${errorMessage}</font></p>
        <form action="/first-web-applicationn/login" method="POST">
            Name: <input name="name" type="text"/> Password: <input name="password" type="password"/> <input type="submit" value="Login"/>
        </form>
    </body>
</html>
