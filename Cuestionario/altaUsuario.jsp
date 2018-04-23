<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href= "estilo3.css" rel="stylesheet" >
   
    <title>Lista de Anime</title>
  </head>
  <body>
      <div id="wrapper">
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/animelista","root", "");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      
      
        String insercion = "INSERT INTO usuario(Nombre, Usuario, Email, anime) VALUES ("
                           + "'" + request.getParameter("Nombre")
                           + "', '" + request.getParameter("Usuario")
                           + "', '" + request.getParameter("Email")
                           + "', " + Integer.valueOf(request.getParameter("IDAN"))+ ")";
        s.execute(insercion);
        out.println("Solicitud de alta aprobada.");
      conexion.close();
    %>
    <br>
    <a href="index.jsp"><button><span>Pagina principal</span></button></a>
      </div>
  </body>
</html>
