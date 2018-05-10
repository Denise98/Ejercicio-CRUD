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
     }
 #wrapper{
    width: 235px;
    margin:203px auto;
    padding: 50px;
    border-radius: 50px;
    background-color: rgba(56,181,222,0.6);
    border: 2px solid #000;
}
button{
    position:relative;
    top:27px;
    left:83px;
    background-color: rgb(153,29,201);
}
        </style>
        <div id="wrapper">
        <%
            String usuario = request.getParameter("Usuario");
            String contrasena = request.getParameter("Contrasena");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/animelista", "root", "");
            Statement s = conexion.createStatement();
            ResultSet anime3 = s.executeQuery("SELECT Usuario, Contraseña FROM usuario");
           
            HashMap<String, String> m = new HashMap<String, String>();
            while (anime3.next()) {
                m.put(anime3.getString("Usuario"), anime3.getString("Contraseña"));
            }
            if (m.containsKey(usuario)) {
                if (m.get(usuario).equals(contrasena)) {
                    out.println("<script>window.location.replace( 'http://localhost:8080/ListaAnime/index.jsp') ;</script>");
                } else {
                    out.println("Lo siento la Contraseña no es correcta");
                    out.println("<a href=\"portada.jsp\"><button><span>Volver</span></button></a>");
                }
            } else {
                    out.println("Lo siento el usuario no es correcto");
                    out.println("<a href=\"portada.jsp\"><button><span>Volver</span></button></a>");
            }%>
        </div>
    </body>

</html>
