<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href= "estilo4.css" rel="stylesheet" >
    <title>Modificar</title>
  </head>
  <body>
      <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/animelista", "root", "");
                  Statement s = conexion.createStatement();
                  
                %>
    <% request.setCharacterEncoding("UTF-8"); %>
    <div id="wrapper">
      <br><br>
      <div>
        <div>Modificacion de Usuario</div>
          <form method="get" action="guardaUsuarioModificado.jsp">
              <div> 
              <label>&nbsp;&nbsp;id Usuario:&nbsp;</label><input type="number" size="30" name="IDUS" value="<%= request.getParameter("IDUS") %>" readonly>
            </div>
            <div> 
              <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type="text" size="30" name="Nombre" value="<%= request.getParameter("Nombre") %>" readonly>
            </div>
            <div>
            <label>&nbsp;&nbsp;Usuario:&nbsp;</label><input type="text" size="30" name="Usuario" value="<%= request.getParameter("Usuario") %>">
            </div>
            <div>
             <label>&nbsp;&nbsp;Email:&nbsp;</label><input type="text" size="50" name="Email" value="<%= request.getParameter("Email") %>">
            </div>
             <div>
             <label>&nbsp;&nbsp;Anime Favorito:&nbsp;</label><select name="IDAN" value="<%= request.getParameter("IDAN") %>"><% ResultSet anime = s.executeQuery("SELECT * FROM anime");
								while (anime.next()) {
									out.println("<option value=\"" + anime.getString("IDAN") + "\">" + anime.getString("NOMAN") + "</option>");
                                                                } %></select>
            </div>
            <hr>
            <button id="aceptar" type="submit"><span>Aceptar</span></button><br><br>
          </form>
      </div>
            &nbsp;&nbsp;<a href="index.jsp"><button id="cancelar"><span>Cancelar</span></button></a>
    </div>
  </body>
</html>