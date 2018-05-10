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
                                      if(request.getParameter("Nombre").equals ("")){
                                          out.println("Lo siento el Nombre no es correcto");
                                          out.println("<a href=\"crearUsuario.jsp\"><button><span>Volver</span></button></a>");
                                      }
                                      else if(request.getParameter("Usuario").equals ("")){
                                          out.println("Lo siento el Usuario no es correcto");
                                          out.println("<a href=\"crearUsuario.jsp\"><button><span>Volver</span></button></a>");
                                      }
                                      else if(request.getParameter("Contraseña").equals ("")){
                                          out.println("Lo siento la Contraseña no es correcto");
                                          out.println("<a href=\"crearUsuario.jsp\"><button><span>Volver</span></button></a>");
                                      } else{
      
      
        String insercion = "INSERT INTO usuario(Nombre, Usuario, Email, Contraseña,Ciudad, anime) VALUES ("
                           + "'" + request.getParameter("Nombre")
                           + "', '" + request.getParameter("Usuario")
                           + "', '" + request.getParameter("Email")
                           + "', '" + request.getParameter("Contraseña")
                           + "', '" + request.getParameter("Ciudad")
                           + "', " + Integer.valueOf(request.getParameter("IDAN"))+ ")";
        s.execute(insercion);
        out.println("Solicitud de alta aprobada.");
        out.println("<a href=\"index.jsp\"><button><span>Pagina Principal</span></button></a>");
                                      }
      conexion.close();
    %>
    <br>
      </div>
  </body>
</html>
