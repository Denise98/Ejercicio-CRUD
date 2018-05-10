<%@page import="java.util.ArrayList"%>
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
            request.setCharacterEncoding("UTF-8");
            String noman = request.getParameter("NOMAN");
            ResultSet ridan = s.executeQuery("SELECT IDAN FROM anime WHERE NOMAN LIKE '" + noman + "'");
            ridan.last();
            int idan = ridan.getInt("IDAN");
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
            <br><br>
            <div>
                <div>Modificacion de Usuario</div>
                <form method="get" action="guardaUsuarioModificado.jsp">
                    <div> 
                        <input type="hidden" name="IDUS" value="<%= request.getParameter("IDUS")%>">
                    </div>
                    <div> 
                        <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type="text" size="30" name="Nombre" value="<%= request.getParameter("Nombre")%>" readonly>
                    </div>
                    
                    <div>
                        <label>&nbsp;&nbsp;Email:&nbsp;</label><input type="text" size="50" name="Email" value="<%= request.getParameter("Email")%>">
                    </div>
                        
                    <div>
                        <label>&nbsp;&nbsp;Anime Favorito:&nbsp;</label>
                        <select style="display:none;"></select>
                            <%
                                String select = "<select name=\"NOMAN\" value=\"IDAN\">";
                                while (anime.next()) {
                                    String option = "<option value=\"" + anime.getInt("IDAN") + "\"";
                                    if (idan == anime.getInt("IDAN")){
                                        option += " selected=\"selected\"";
                                    }
                                    option += ">" + anime.getString("NOMAN") + "</option>";
                                    //out.println( option );
                                    select += option;
                                }
                                out.println(select + "</select>");
                            %>
                    </div>
                    <hr>
                    <button id="aceptar" type="submit"><span>Aceptar</span></button><br><br>
                </form>
            </div>
            &nbsp;&nbsp;<a href="index.jsp"><button id="cancelar"><span>Cancelar</span></button></a>
        </div>
    </body>
</html>