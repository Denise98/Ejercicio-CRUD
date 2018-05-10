package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href= \"estilo2.css\" rel=\"stylesheet\" >\n");
      out.write("        <title>Cuestinario de Anime</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\"><h1>Cuestionario de Anime</h1></div>\n");
      out.write("        <div>\n");
      out.write("            <br><br>\t\t\t\n");
      out.write("            <div id=\"wrapper\">\n");
      out.write("                ");

                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/animelista", "root", "");
                  Statement s = conexion.createStatement();
                  ResultSet anime = s.executeQuery("SELECT * FROM anime order by IDAN");
                  
                
      out.write("\n");
      out.write("\n");
      out.write("                <table class=\"table table-striped\">\n");
      out.write("                    <tr><th>Nombre</th><th>Usuario</th>\n");
      out.write("                        <th>Email</th><th>Anime Favorito</th></tr>\n");
      out.write("                    <form method=\"get\" action=\"altaUsuario.jsp\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"text\" name=\"Nombre\" style=\"width: 150px;\" ></td>\n");
      out.write("                            <td><input type=\"text\" name=\"Usuario\" style=\"width: 150px;\" ></td>\n");
      out.write("                            <td><input type=\"email\" name=\"Email\" style=\"width: 200px;\" ></td>\n");
      out.write("                            <td>\n");
      out.write("                                <select name=\"IDAN\">\n");
      out.write("                                    ");
 
                                      while (anime.next()) {
                                        out.println("<option value=\"" + anime.getString("IDAN") + "\">" + anime.getString("NOMAN") + "</option>");
                                      }
                                    
      out.write("\n");
      out.write("                                </select>\n");
      out.write("                            </td>\n");
      out.write("                            <td><button type=\"submit\" value=\"Añadir\" id=\"añadir\"><span></span> Añadir</button></td><td></td></tr>           \n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    ");

                      ResultSet anime2 = s.executeQuery("SELECT IDUS, Nombre, Usuario, Email, NOMAN, IDAN FROM usuario u "
                              + "inner join anime a on u.anime=a.IDAN order by IDUS");
                      while (anime2.next()) {
                       
                        
                        out.println("<td>" + anime2.getString("Nombre") + "</td>");
                        out.println("<td>" + anime2.getString("Usuario") + "</td>");
                        out.println("<td>" + anime2.getString("Email") + "</td>");
                        out.println("<td>" + anime2.getString("NOMAN") + "</td>");
                        out.println("<td>" + anime2.getString("") + "</td>");
                    
      out.write("\n");
      out.write("                    <td>\n");
      out.write("                        <form method=\"get\" action=\"modificaUsuario.jsp\">\n");
      out.write("                            <input type=\"hidden\" name=\"Nombre\" value=\"");
      out.print(anime2.getString("Nombre"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"Usuario\" value=\"");
      out.print(anime2.getString("Usuario"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"Email\" value=\"");
      out.print(anime2.getString("Email"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"IDAN\" value=\"");
      out.print(anime2.getString("IDAN"));
      out.write("\">\n");
      out.write("                            <button type=\"submit\" id=\"modificar\"><span></span> Modificar</button>\n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <form method=\"get\" action=\"borraUsuario.jsp\">\n");
      out.write("                            <input type=\"hidden\" name=\"IDUS\" value=\"");
      out.print(anime2.getString("IDUS"));
      out.write("\"/>\n");
      out.write("                            <button type=\"submit\" id=\"eliminar\"><span></span> Eliminar</button>\n");
      out.write("                        </form>\n");
      out.write("                    </td></tr>\n");
      out.write("                    ");

                      } // while   
                      conexion.close();
                    
      out.write("\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"copy\">&copy; Denise Burgos García</div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
