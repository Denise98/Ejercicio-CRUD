<%-- 
    Document   : portada
    Created on : 21-abr-2018, 11:51:24
    Author     : usuario
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Cuestionario de Anime</title>
    </head>
    <body>
        <style>
                body{
	background-image: url(fotos/anime.jpeg);
	background-repeat: no-repeat;
        margin: 0 auto; 
        background-color: rgb(79,222,238);
}
#wrapper{
	width: 276px;
	margin:249px auto;
	padding: 50px;
	border-radius: 50px;
background-color: rgba(56,181,222,0.6);
border: 2px solid #000;
}
button{
    position:relative;
    top:11px;
    left:80px;
    background-color: rgb(153,29,201);
}
p{
 position:relative;
    top:11px;
    left:62px;	
}
        </style>
        <div id="wrapper">
        <form method="post" action="Contrasena.jsp">
            <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Usuario</label><input type="text" name="Usuario" style="width: 150px"><br>
            <label><per>Contraseña </per></label><input type="password" name="Contrasena" style="width: 150px"><br>
            <button id="continuar" type="submit">continuar</button>
            <p>¿No tienes usuario?</p>
            
            
        </form>
            <a href="crearUsuario.jsp"><button id="crear"><span>crear usuario</span></button></a>
        </div>
    </body>
    
</html>
