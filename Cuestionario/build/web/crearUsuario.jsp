<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear usuario</title>
    </head>
    <body>
        <style>
            body{
    background-image: url(fotos/anime2.jpg);
	background-repeat: no-repeat;
        margin: 0 auto; 
     }
 #wrapper{
	width: 312px;
	margin:203px auto;
	padding: 50px;
	border-radius: 50px;
    background-color: rgba(56,181,222,0.6);
    border: 2px solid #000;
}
button{
    position:relative;
    top:27px;
    left:115px;
    background-color: rgb(181,230,29);
}
        </style>
        <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/animelista", "root", "");
                  Statement s = conexion.createStatement();
                  ResultSet anime = s.executeQuery("SELECT * FROM anime order by IDAN");
                  
                  ArrayList<String> a= new ArrayList<String>();
                  a.add("Málaga");
                  a.add("Sevilla");
                  a.add("Granada");
                  a.add("Cádiz");
                  a.add("Madrid");
                  a.add("Bilbao");
                  
                %>
                <div id="wrapper">
        <form method="get" action="altaUsuario.jsp">
            <div> 
                        <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nombre:&nbsp;</label><input type="text" size="30" name="Nombre">
                    </div>
                    <div>
                        <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Usuario:&nbsp;</label><input type="text" size="30" name="Usuario">
                    </div>
            <div>
                        <label>Contraseña:&nbsp;</label><input type="password" size="30" name="Contraseña">
                    </div>
            <div>
                        <label>&nbsp;&nbsp;Email:&nbsp;</label><input type="text" size="50" name="Email">
                    </div>
                        <div>
                                <label><per>Ciudad:</per></label>
                                <select name="Ciudad">
                                    <% 
                                      for(String i:a){
                                        out.println("<option value=\"" + i + "\">" + i + "</option>");
                                      }
                                     
                                      
                                    %>
                                </select>
                        </div>
                        <div>
                                <label><per>Anime Favorito:</per></label>
                                <select name="IDAN">
                                    <% 
                                      while (anime.next()) {
                                        out.println("<option value=\"" + anime.getString("IDAN") + "\">" + anime.getString("NOMAN") + "</option>");
                                      }
                                     
                                      
                                    %>
                                </select>
                        </div>
                            <td><button type="submit" value="Crear"><span></span> Crear</button></td><td></td></tr>           
                    </form>
                </div>
    </body>
</html>
