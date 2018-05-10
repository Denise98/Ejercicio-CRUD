<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href= "estilo2.css" rel="stylesheet" >
        <title>Cuestinario de Anime</title>
    </head>
    <body>
        <div id="header"><h1>Cuestionario de Anime</h1></div>
        <div>
            <br><br>			
            <div id="wrapper">
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/animelista", "root", "");
                  Statement s = conexion.createStatement();
                  ResultSet anime = s.executeQuery("SELECT * FROM anime order by IDAN");
                  
                  
                %>

                <table class="table table-striped">
                    <tr><th>Nombre</th><th>Usuario</th>
                        <th>Email</th><th>Anime Favorito</th></tr>

                    <%
                      ResultSet anime2 = s.executeQuery("SELECT IDUS, Nombre, Usuario, Email, NOMAN, IDAN FROM usuario u "
                              + "inner join anime a on u.anime=a.IDAN order by IDUS");
                      while (anime2.next()) {
                       
                       
                        out.println("<td>" + anime2.getString("Nombre") + "</td>");
                        out.println("<td>" + anime2.getString("Usuario") + "</td>");
                        out.println("<td>" + anime2.getString("Email") + "</td>");
                        out.println("<td>" + anime2.getString("NOMAN") + "</td>");
                    %>
                    <td>
                        <form method="get" action="modificaUsuario.jsp">
                            <input type="hidden" name="IDUS" value="<%=anime2.getString("IDUS")%>">
                            <input type="hidden" name="Nombre" value="<%=anime2.getString("Nombre")%>">
                            <input type="hidden" name="Usuario" value="<%=anime2.getString("Usuario")%>">
                            <input type="hidden" name="Email" value="<%=anime2.getString("Email")%>">
                            <input type="hidden" name="NOMAN" value="<%=anime2.getString("NOMAN")%>">
                            <button type="submit" id="modificar"><span></span> Modificar</button>
                        </form>
                    </td>
                    <td>
                        <form method="get" action="borraUsuario.jsp">
                            <input type="hidden" name="IDUS" value="<%=anime2.getString("IDUS")%>"/>
                            <button type="submit" id="eliminar"><span></span> Eliminar</button>
                        </form>
                    </td></tr>
                    <%
                      } // while   
                      conexion.close();
                    %>

                </table>
            </div>
            <div id="copy">&copy; Denise Burgos García</div>
        </div>
    </body>
</html>