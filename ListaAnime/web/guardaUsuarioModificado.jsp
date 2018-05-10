<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link href= "estilo5.css" rel="stylesheet" >
   
    <title>Cuestinario de Anime</title>
  </head>
  <body>
      <div id="wrapper">
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/animelista","root", "");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      String actualizacion = "UPDATE usuario SET "
                           + "Nombre='" + request.getParameter("Nombre")
                           + "', Email='" + request.getParameter("Email")
                           + "', anime=" + Integer.valueOf(request.getParameter("NOMAN"))
                           + " WHERE IDUS=" + Integer.valueOf(request.getParameter("IDUS"));
     s.execute(actualizacion);
     //out.print(request.getParameter("Nombre")+ request.getParameter("Email") + Integer.valueOf(request.getParameter("NOMAN")));
      
      out.println("Usuario actualizado correctamente.");
      
      conexion.close();
    %>
    <br>
    <a href="index.jsp"><button><span>Pagina principal</span></button></a>
      </div>
  </body>
</html>
