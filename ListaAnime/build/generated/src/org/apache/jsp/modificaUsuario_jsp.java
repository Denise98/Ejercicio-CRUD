package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class modificaUsuario_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <link href= \"estilo4.css\" rel=\"stylesheet\" >\n");
      out.write("    <title>Modificar</title>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("      ");

                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/animelista", "root", "");
                  Statement s = conexion.createStatement();
                  
                
      out.write("\n");
      out.write("    ");
 request.setCharacterEncoding("UTF-8"); 
      out.write("\n");
      out.write("    <div id=\"wrapper\">\n");
      out.write("      <br><br>\n");
      out.write("      <div>\n");
      out.write("        <div>Modificacion de Usuario</div>\n");
      out.write("          <form method=\"get\" action=\"guardaUsuarioModificado.jsp\">\n");
      out.write("              <div> \n");
      out.write("              <label>&nbsp;&nbsp;id Usuario:&nbsp;</label><input type=\"number\" size=\"30\" name=\"IDUS\" value=\"");
      out.print( request.getParameter("IDUS") );
      out.write("\" readonly>\n");
      out.write("            </div>\n");
      out.write("            <div> \n");
      out.write("              <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type=\"text\" size=\"30\" name=\"Nombre\" value=\"");
      out.print( request.getParameter("Nombre") );
      out.write("\" readonly>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("            <label>&nbsp;&nbsp;Usuario:&nbsp;</label><input type=\"text\" size=\"30\" name=\"Usuario\" value=\"");
      out.print( request.getParameter("Usuario") );
      out.write("\">\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("             <label>&nbsp;&nbsp;Email:&nbsp;</label><input type=\"text\" size=\"50\" name=\"Email\" value=\"");
      out.print( request.getParameter("Email") );
      out.write("\">\n");
      out.write("            </div>\n");
      out.write("             <div>\n");
      out.write("             <label>&nbsp;&nbsp;Anime Favorito:&nbsp;</label><select name=\"IDAN\">");
 ResultSet anime = s.executeQuery("SELECT * FROM anime order by IDAN");
								while (anime.next()) {
									out.println("<option value=\"" + anime.getString("IDAN") + "\">" + anime.getString("NOMAN") + "</option>");
                                                                } 
      out.write("</select>\n");
      out.write("            </div>\n");
      out.write("            <hr>\n");
      out.write("            <button id=\"aceptar\" type=\"submit\"><span>Aceptar</span></button><br><br>\n");
      out.write("          </form>\n");
      out.write("      </div>\n");
      out.write("            &nbsp;&nbsp;<a href=\"index.jsp\"><button id=\"cancelar\"><span>Cancelar</span></button></a>\n");
      out.write("    </div>\n");
      out.write("  </body>\n");
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
